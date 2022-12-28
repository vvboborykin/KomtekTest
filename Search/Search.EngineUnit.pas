{*******************************************************
* Project: KomtekTest
* Unit: FioSearchEngineUnit.pas
* Description: Интерфейсы механизма поиска по фамилии
*
* Created: 28.12.2022 10:55:58
* Copyright (C) 2022 Боборыкин В.В. (bpost@yandex.ru)
*******************************************************}
unit Search.EngineUnit;

interface

uses
  System.SysUtils, System.Classes, System.Variants, Lib.Nullable;

type
  /// <summary>ILastNameSearchEngine
  /// Механизм поиска
  /// </summary>
  ILastNameSearchEngine = interface
    ['{408E388E-CDBC-4C49-BFC2-30EB3426587D}']
    /// <summary>ILastNameSearchEngine.FindHumanByLastName
    /// Найти человека по фамилии
    /// </summary>
    /// <returns> Boolean
    /// </returns>
    /// <param name="ALastName"> (String) Фамилия человека</param>
    function FindHumanByLastName(ALastName: String): Boolean; stdcall;
  end;

implementation

end.
