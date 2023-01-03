{*******************************************************
* Project: KomtekTest
* Unit: ArmFormFactoryUnit.pas
* Description: Фабрика для создания форм АРМ
*
* Created: 28.12.2022 8:38:48
* Copyright (C) 2022 Боборыкин В.В. (bpost@yandex.ru)
*******************************************************}
unit Arm.ArmFormFactoryUnit;

interface
uses
  System.SysUtils, System.Classes, System.Variants, VCL.Forms,
  Arm.FrmBaseArmUnit, Arm.FrmOperatorUnit, Arm.FrmStatistUnit;

type
  /// <summary>TArmFormFactory
  /// Фабрика для создания форм АРМ
  /// </summary>
  TArmFormFactory = class
  public
    /// <summary>TArmFormFactory.CreateOperArm
    /// Созадть АРМ оператора
    /// </summary>
    /// <returns> TOperArmForm
    /// </returns>
    function CreateOperArm: TFrmOperator;
    /// <summary>TArmFormFactory.CreateStatistArm
    /// Создать АРМ статиста
    /// </summary>
    /// <returns> TStatistArmForm
    /// </returns>
    function CreateStatistArm: TFrmStatist;
    /// <summary>TArmFormFactory.CreateArmForm<>
    /// Создать АРМ заданного класса
    /// </summary>
    /// <returns> T
    /// </returns>
    function CreateArmForm<T: TFrmBaseArm>: T; overload;
    function CreateArmForm(AClass: TFrmBaseArmClass): TFrmBaseArm; overload;
  end;

  /// <summary>procedure ArmFormFactory
  /// Синглтон фабрики АРМ
  /// </summary>
  /// <returns> TArmFormFactory
  /// </returns>
  function ArmFormFactory: TArmFormFactory;

implementation

uses
  TypInfo;

var
  FArmFormFactory: TArmFormFactory;

  function ArmFormFactory: TArmFormFactory;
  begin
    if FArmFormFactory = nil then
      FArmFormFactory := TArmFormFactory.Create;
    Result := FArmFormFactory;
  end;

function TArmFormFactory.CreateArmForm(AClass: TFrmBaseArmClass): TFrmBaseArm;
begin
  Result := AClass.Create(Application);
  Application.ProcessMessages();
end;

function TArmFormFactory.CreateOperArm: TFrmOperator;
begin
  Result := CreateArmForm<TFrmOperator>();
end;

function TArmFormFactory.CreateArmForm<T>: T;
var
  vClass: TFrmBaseArmClass;
begin
  // выводим класс запрошенного АРМ используя старый RTTI
  vClass := TFrmBaseArmClass(PTypeInfo(TypeInfo(T)).TypeData.ClassType);
  Result := CreateArmForm(vClass) as T;
end;

function TArmFormFactory.CreateStatistArm: TFrmStatist;
begin
  Result := CreateArmForm<TFrmStatist>();
end;

initialization
finalization
  if FArmFormFactory <> nil then
    FreeAndNil(FArmFormFactory);
end.
