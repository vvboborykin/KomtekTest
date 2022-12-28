{*******************************************************
* Project: KomtekTest
* Unit: Search.FDQueryEngineUnit.pas
* Description: Реализация поиска на основе TFDQuery
*
* Created: 28.12.2022 11:59:53
* Copyright (C) 2022 Боборыкин В.В. (bpost@yandex.ru)
*******************************************************}
unit Search.FDQueryEngineUnit;

interface

uses
  System.SysUtils, System.Classes, System.Variants, Search.EngineUnit,
  FireDac.Comp.Client, System.StrUtils;

type
  /// <summary>TFDQueryLastNameSearchEngine
  /// Реализация механизма поиска по фамилии на основе TFDQuery
  /// </summary>
  TFDQueryLastNameSearchEngine = class(TInterfacedObject, ILastNameSearchEngine)
  strict private
    FLastNameFieldName: String;
    FWhereMacroName: String;
    FQuery: TFDQuery;
    /// <summary>ILastNameSearchEngine.FindHumanByLastName
    /// Найти человека по фамилии (регистронезависимый поиск)
    /// </summary>
    /// <returns> Boolean
    /// </returns>
    /// <param name="ALastName"> (String) Фамилия человека</param>
    function FindHumanByLastName(ALastName: String): Boolean; stdcall;
    procedure Validate;
  public
    constructor Create(AQuery: TFDQuery; AWhereMacroName: String; const
        ALastNameFieldName: String);
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

resourcestring
  SMacroNotFoundInSQL = 'Макрос &"%s" не найден в SQL запросе механизма поиска:'#13'%s';
  SWhereMacroNameIsEmpty = 'Не задано имя макроса для выражения WHERE запроса к данным';
  SQueryNotSpecified = 'Не задан компонент FDQuery для механизма поиска';
  SQueryIsNotActive = 'Компонент FDQuery не активен в механизме поиска';

constructor TFDQueryLastNameSearchEngine.Create(AQuery: TFDQuery;
    AWhereMacroName: String; const ALastNameFieldName: String);
begin
  inherited Create;
  FQuery := AQuery;
  FWhereMacroName := AWhereMacroName;
  FLastNameFieldName := ALastNameFieldName;
end;

function TFDQueryLastNameSearchEngine.FindHumanByLastName(ALastName: String):
    Boolean;
begin
  Validate();
  ALastName := AnsiUpperCase(ALastName.Trim());
  var vMacro := FQuery.MacroByName(FWhereMacroName);
  var vMacroText := '';
  if ALastName <> '' then
    vMacroText := ' AND UPPER(' + FLastNameFieldName + ') = ''' + ALastName + '''';
  vMacro.Value := vMacroText;
  Result := FQuery.RecordCount > 0;
end;

procedure TFDQueryLastNameSearchEngine.Validate;
begin
  if FQuery = nil then
    raise EQueryNotAssigned.Create();

  if not FQuery.Active then
    raise EQueryIsNotActive.Create();

  if FWhereMacroName = '' then
    raise EWhereMacroIsEmpty.Create();

  if FQuery.MacroByName(FWhereMacroName) = nil then
    raise EWhereMacroNotFound.Create(FWhereMacroName, FQuery.SQL.Text);

  FQuery.FieldByName(FLastNameFieldName);
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
