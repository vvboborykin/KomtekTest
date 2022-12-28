{*******************************************************
* Project: KomtekTest
* Unit: ArmFormFactoryUnit.pas
* Description: Фабрика для создания форм АРМ
*
* Created: 28.12.2022 8:38:48
* Copyright (C) 2022 Боборыкин В.В. (bpost@yandex.ru)
*******************************************************}
unit Arm.FormFactoryUnit;

interface
uses
  System.SysUtils, System.Classes, System.Variants, VCL.Forms,
  Arm.BaseFormUnit, Arm.OperFormUnit, Arm.StatistFormUnit;

type
  /// <summary>TFormFactory
  /// Фабрика для создания форм АРМ
  /// </summary>
  TFormFactory = class
  public
    /// <summary>TFormFactory.CreateOperArm
    /// Созадть АРМ оператора
    /// </summary>
    /// <returns> TOperArmForm
    /// </returns>
    function CreateOperArm: TFrmOperator;
    /// <summary>TFormFactory.CreateStatistArm
    /// Создать АРМ статиста
    /// </summary>
    /// <returns> TStatistArmForm
    /// </returns>
    function CreateStatistArm: TFrmStatist;
    /// <summary>TFormFactory.CreateArmForm<>
    /// Создать АРМ заданного класса
    /// </summary>
    /// <returns> T
    /// </returns>
    function CreateArmForm<T: TBaseArmForm>: T; overload;
    function CreateArmForm(AClass: TBaseArmFormClass): TBaseArmForm; overload;
  end;

  /// <summary>procedure ArmFormFactory
  /// Синглтон фабрики АРМ
  /// </summary>
  /// <returns> TFormFactory
  /// </returns>
  function ArmFormFactory: TFormFactory;

implementation

uses
  TypInfo;

var
  FArmFormFactory: TFormFactory;

  function ArmFormFactory: TFormFactory;
  begin
    if FArmFormFactory = nil then
      FArmFormFactory := TFormFactory.Create;
    Result := FArmFormFactory;
  end;

function TFormFactory.CreateArmForm(AClass: TBaseArmFormClass): TBaseArmForm;
begin
  Result := AClass.Create(Application);
  Application.ProcessMessages();
end;

function TFormFactory.CreateOperArm: TFrmOperator;
begin
  Result := CreateArmForm<TFrmOperator>();
end;

function TFormFactory.CreateArmForm<T>: T;
begin
  // выводим класс запрошенного АРМ использыя старый RTTI
  var vClass := TBaseArmFormClass(PTypeInfo(TypeInfo(T)).TypeData.ClassType);
  Result := CreateArmForm(vClass) as T;
end;

function TFormFactory.CreateStatistArm: TFrmStatist;
begin
  Result := CreateArmForm<TFrmStatist>();
end;

initialization
finalization
  if FArmFormFactory <> nil then
    FreeAndNil(FArmFormFactory);
end.
