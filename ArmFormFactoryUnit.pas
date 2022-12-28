﻿{*******************************************************
* Project: KomtekTest
* Unit: ArmFormFactoryUnit.pas
* Description: Фабрика для создания форм АРМ
*
* Created: 28.12.2022 8:38:48
* Copyright (C) 2022 Боборыкин В.В. (bpost@yandex.ru)
*******************************************************}
unit ArmFormFactoryUnit;

interface
uses
  System.SysUtils, System.Classes, System.Variants, VCL.Forms,
  BaseArmFormUnit, OperArmFormUnit, StatistArmFormUnit;

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
    function CreateOperArm: TOperArmForm;
    /// <summary>TArmFormFactory.CreateStatistArm
    /// Создать АРМ статиста
    /// </summary>
    /// <returns> TStatistArmForm
    /// </returns>
    function CreateStatistArm: TStatistArmForm;
    /// <summary>TArmFormFactory.CreateArmForm<>
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
  /// <returns> TArmFormFactory
  /// </returns>
  function ArmFormFactory: TArmFormFactory;

implementation

var
  FArmFormFactory: TArmFormFactory;

  function ArmFormFactory: TArmFormFactory;
  begin
    if FArmFormFactory = nil then
      FArmFormFactory := TArmFormFactory.Create;
    Result := FArmFormFactory;
  end;

function TArmFormFactory.CreateArmForm(AClass: TBaseArmFormClass): TBaseArmForm;
begin
  Result := AClass.Create(Application);
  Application.ProcessMessages();
end;

function TArmFormFactory.CreateOperArm: TOperArmForm;
begin
  Result := CreateArmForm<TOperArmForm>();
end;

function TArmFormFactory.CreateArmForm<T>: T;
begin
  Result := T.Create(Application);
  Application.ProcessMessages();
end;

function TArmFormFactory.CreateStatistArm: TStatistArmForm;
begin
  Result := CreateArmForm<TStatistArmForm>();
end;

initialization
finalization
  if FArmFormFactory <> nil then
    FreeAndNil(FArmFormFactory);
end.
