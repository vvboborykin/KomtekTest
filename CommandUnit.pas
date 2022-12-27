{*******************************************************
* Project: KomtekTest
* Unit: CommandUnit.pas
* Description: Интерфейсы "Команда"
*
* Created: 27.12.2022 22:40:17
* Copyright (C) 2022 Боборыкин В.В. (bpost@yandex.ru)
*******************************************************}
unit CommandUnit;

interface

uses
  System.SysUtils, System.Classes, System.Variants;
type
  /// <summary>ICommand
  /// Интерфейсы "Команда"
  /// </summary>
  ICommand = interface
    ['{B9B5BBDA-B8B0-43FA-AF3E-9C5590DEF283}']
    /// <summary>ICommand.Execute
    /// Выполнить команду
    /// </summary>
    procedure Execute(); stdcall;
  end;

implementation

end.
