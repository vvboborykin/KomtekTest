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
  TOraQuerySurnameSearchEngine = class(TInterfacedObject, IHumanSearchEngine)
  strict private
    FWhereMacroName: String;
    FDateMacroName: String;
    FSurnameFieldName: String;
    FBirthDateFieldName: String;
    FCreateDateFieldName: String;
    FQuery: TOraQuery;
    /// <summary>ISurnameSearchEngine.FindHuman
    /// Найти человека по фамилии (регистронезависимый поиск)
    /// </summary>
    /// <returns> Boolean
    /// </returns>
    /// <param name="ASurname"> (String) Фамилия человека</param>
    function FindHuman(ASearchParameters: TSearchParameters): Boolean; stdcall;
    procedure Validate;
    procedure SetDateMacro(ASearchParameters: TSearchParameters);
    procedure SetSurnameMacro(ASearchParameters: TSearchParameters);
    function GetDateMacroExpr(AFieldName: String; AValue: Variant; ACompareOper:
        string): String;
  public
    constructor Create(AQuery: TOraQuery; AWhereMacroName, ASurnameFieldName:
        String; const ADateMacroName, ABirthDateFieldName, ACreateDateFieldName:
        String);
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
    AWhereMacroName, ASurnameFieldName: String; const ADateMacroName,
    ABirthDateFieldName, ACreateDateFieldName: String);
begin
  inherited Create;
  FQuery := AQuery;
  FWhereMacroName := AWhereMacroName;
  FSurnameFieldName := ASurnameFieldName;
  FDateMacroName := ADateMacroName;
  FBirthDateFieldName := ABirthDateFieldName;
  FCreateDateFieldName := ACreateDateFieldName;
end;

function TOraQuerySurnameSearchEngine.FindHuman(ASearchParameters:
    TSearchParameters): Boolean;
begin
  Validate();
  SetSurnameMacro(ASearchParameters);
  SetDateMacro(ASearchParameters);
  FQuery.Open;
  Result := FQuery.RecordCount > 0;
end;

function TOraQuerySurnameSearchEngine.GetDateMacroExpr(AFieldName: String;
    AValue: Variant; ACompareOper: string): String;
begin
  Result := '';
  if (AValue <> null) then
    Result := ' AND ' + AFieldName +
      ' ' + ACompareOper + ' DATE ''' +
      FormatDateTime('yyyy-mm-dd', AValue) + '''';
end;

procedure TOraQuerySurnameSearchEngine.SetDateMacro(ASearchParameters:
    TSearchParameters);
var
  vMacro: TMacro;
  vMacroText: string;
begin
  vMacro := FQuery.MacroByName(FDateMacroName);
  if vMacro = nil then
    raise EWhereMacroNotFound.Create(FDateMacroName, FQuery.SQL.Text);

  vMacroText := '';

  vMacroText := vMacroText +
    GetDateMacroExpr(FBirthDateFieldName, ASearchParameters.MinBirthDate, '>=');

  vMacroText := vMacroText +
    GetDateMacroExpr(FBirthDateFieldName, ASearchParameters.MaxBirthDate, '<=');

  vMacroText := vMacroText +
    GetDateMacroExpr(FCreateDateFieldName, ASearchParameters.MinCreateDate, '>=');

  vMacroText := vMacroText +
    GetDateMacroExpr(FCreateDateFieldName, ASearchParameters.MaxCreateDate, '<=');

  vMacro.Value := vMacroText;

end;

procedure TOraQuerySurnameSearchEngine.SetSurnameMacro(ASearchParameters:
    TSearchParameters);
var
  vMacro: TMacro;
  vMacroText: string;
begin

  vMacro := FQuery.MacroByName(FWhereMacroName);
  if vMacro = nil then
    raise EWhereMacroNotFound.Create(FWhereMacroName, FQuery.SQL.Text);

  ASearchParameters.Surname := AnsiUpperCase(ASearchParameters.Surname.Trim());
  vMacroText := '';
  if ASearchParameters.Surname <> '' then
  begin
    if ASearchParameters.PartialSearch then
      vMacroText := ' AND UPPER(' + FSurnameFieldName + ') LIKE ''' + ASearchParameters.Surname + '%'''
    else
      vMacroText := ' AND UPPER(' + FSurnameFieldName + ') = ''' + ASearchParameters.Surname + '''';
  end;
  vMacro.Value := vMacroText;
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
