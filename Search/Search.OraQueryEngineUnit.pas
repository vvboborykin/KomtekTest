{*******************************************************
* Project: KomtekTest
* Unit: Search.FDQueryEngineUnit.pas
* Description: Реализация поиска на основе TFDQuery
*
* Created: 28.12.2022 11:59:53
* Copyright (C) 2022 Боборыкин В.В. (bpost@yandex.ru)
*******************************************************}
unit Search.OraQueryEngineUnit;

interface

uses
  System.SysUtils, System.Classes, System.Variants, Search.EngineUnit,
  System.StrUtils, Ora;

type
  /// <summary>TOraQuerySurnameSearchEngine
  /// Реализация механизма поиска по фамилии на основе TOraQuery
  /// </summary>
  TOraQuerySurnameSearchEngine = class(TInterfacedObject, ISurnameSearchEngine)
  strict private
    FSurnameFieldName: String;
    FWhereMacroName: String;
    FQuery: TOraQuery;
    /// <summary>ISurnameSearchEngine.FindHumanBySurname
    /// Найти человека по фамилии (регистронезависимый поиск)
    /// </summary>
    /// <returns> Boolean
    /// </returns>
    /// <param name="ASurname"> (String) Фамилия человека</param>
    function FindHumanBySurname(ASurname: String): Boolean; stdcall;
    procedure Validate;
  public
    constructor Create(AQuery: TOraQuery; AWhereMacroName: String; const
        ASurnameFieldName: String);
  end;

  EQueryNotAssigned = class(Exception)
  public
    constructor Create;
  end;

  EQueryIsNotActive = class(Exception)
  public
    constructor Create;
  end;

  EWhereMacroIsEmpty = class(Exception)
  public
    constructor Create;
  end;

  EWhereMacroNotFound = class(Exception)
  public
    constructor Create(AMacroName: String; ASelectQuery: String);
  end;

implementation

uses
  DBAccess;

resourcestring
  SMacroNotFoundInSQL = 'Макрос &"%s" не найден в SQL запросе механизма поиска:'#13'%s';
  SWhereMacroNameIsEmpty = 'Не задано имя макроса для выражения WHERE запроса к данным';
  SQueryNotSpecified = 'Не задан компонент OraQuery для механизма поиска по фамилии';
  SQueryIsNotActive = 'Компонент OraQuery не активен в механизме поиска по фамилии';

constructor TOraQuerySurnameSearchEngine.Create(AQuery: TOraQuery;
    AWhereMacroName: String; const ASurnameFieldName: String);
begin
  inherited Create;
  FQuery := AQuery;
  FWhereMacroName := AWhereMacroName;
  FSurnameFieldName := ASurnameFieldName;
end;

function TOraQuerySurnameSearchEngine.FindHumanBySurname(ASurname: String):
    Boolean;
var
  vMacro: TMacro;
  vMacroText: string;
begin
  Validate();
  ASurname := AnsiUpperCase(ASurname.Trim());
  vMacro := FQuery.MacroByName(FWhereMacroName);
  vMacroText := '';
  if ASurname <> '' then
    vMacroText := ' AND UPPER(' + FSurnameFieldName + ') = ''' + ASurname + '''';
  vMacro.Value := vMacroText;
  Result := FQuery.RecordCount > 0;
end;

procedure TOraQuerySurnameSearchEngine.Validate;
begin
  if FQuery = nil then
    raise EQueryNotAssigned.Create();

  if not FQuery.Active then
    raise EQueryIsNotActive.Create();

  if FWhereMacroName = '' then
    raise EWhereMacroIsEmpty.Create();

  if FQuery.MacroByName(FWhereMacroName) = nil then
    raise EWhereMacroNotFound.Create(FWhereMacroName, FQuery.SQL.Text);

  FQuery.FieldByName(FSurnameFieldName);
end;

constructor EQueryNotAssigned.Create;
begin
  inherited Create(SQueryNotSpecified);
end;

{ EQueryIsNotActive }

constructor EQueryIsNotActive.Create;
begin
  inherited Create(SQueryIsNotActive);
end;

{ EWhereMacroIsEmpty }

constructor EWhereMacroIsEmpty.Create;
begin
  inherited Create(SWhereMacroNameIsEmpty);
end;

constructor EWhereMacroNotFound.Create(AMacroName: String; ASelectQuery:
    String);
begin
  inherited CreateFmt(SMacroNotFoundInSQL,
    [AMacroName, ASelectQuery]);
end;

end.
