{*******************************************************
* Project: KomtekTest
* Unit: OraErrorProcessorUnit.pas
* Description: ����� ��������� ������ ��
*
* Created: 02.01.2023 10:19:23
* Copyright (C) 2023 ��������� �.�. (bpost@yandex.ru)
*******************************************************}
unit OraErrorProcessorUnit;

interface

uses
  System.SysUtils, System.Classes, System.Variants, System.StrUtils, Ora,
  OraError, System.Generics.Collections, VCL.Dialogs;

type
  /// <summary>TOraErrorProcessor
  /// ����� ��������� ������ ��
  /// </summary>
  TOraErrorProcessor = class
  private
    function ParseErrors(vLine: string; vDialogLines: TList<string>): Integer;
    procedure ShowOraError(E: Exception);
  strict protected
  public
    /// <summary>TOraErrorProcessor.ShowOracleException
    /// ������� ��������� �� ������ �� � ��������� EAbort
    /// </summary>
    /// <param name="E"> (Exception) </param>
    procedure ShowOracleException(E: Exception);
  end;

/// <summary>procedure OraErrorProcessor
/// ���������� ��������� �����������
/// </summary>
/// <returns> TOraErrorProcessor
/// </returns>
function OraErrorProcessor: TOraErrorProcessor;

const
  // ��� ������ �������� ������ ������ � ��������� �� ���������� � ����������
  // ������ �������
  cOraRowValidationError = -20100;

implementation

uses
  System.RegularExpressions, DBAccess;

resourcestring
  SOraUniqExceptionText = '����������� ������������';
  SUniqError =
    '������ � ������ ������� ��� ���� � ��. ������������ ������� ���������.';
  SEmptyPasswordDeniedError = '���� � ��������� � ������ ������� ��������';

const
  cOraErrExpr = 'ORA(\-?\d+)\:(.*)';
  cEmptyPasswordErrorCode = -01005;

var
  FOraErrorProcessor: TOraErrorProcessor;

function OraErrorProcessor: TOraErrorProcessor;
begin
  Result := FOraErrorProcessor;
end;

function TOraErrorProcessor.ParseErrors(vLine: string; vDialogLines: TList<
  string>): Integer;
var
  vText: string;
  vCode: Integer;
  vMatch: TMatch;
begin
  Result := 0;
  vMatch := TRegEx.Match(vLine, cOraErrExpr);
  if vMatch.Success then
  begin
    vCode := StrToInt(vMatch.Groups.Item[1].Value);
    vText := vMatch.Groups.Item[2].Value.Trim();
    Result := vCode;
    case vCode of
      cEmptyPasswordErrorCode:
        vText := SEmptyPasswordDeniedError;
    end;

    if AnsiContainsText(vText, SOraUniqExceptionText) then
      vText := SUniqError;

    vDialogLines.Add(vText);
  end;
end;

procedure TOraErrorProcessor.ShowOracleException(E: Exception);
begin
  if (E is EOraError) or (E is EDAError) then
    ShowOraError(E)
  else
    raise E;
end;

procedure TOraErrorProcessor.ShowOraError(E: Exception);
var
  vErrorMessages: TArray<string>;
  vDialogLines: TList<string>;
  vLine: string;
begin
  vErrorMessages := E.Message.Split([#10]);
  vDialogLines := TList<string>.Create;
  try
    for vLine in vErrorMessages do
    begin
      if ParseErrors(vLine, vDialogLines) = cOraRowValidationError then
        Break;
    end;
    MessageDlg(string.Join(#13, vDialogLines.ToArray), mtError, [mbOK], 0);
  finally
    vDialogLines.Free;
  end;
  raise EAbort.Create('');
end;

initialization
  FOraErrorProcessor := TOraErrorProcessor.Create;

finalization
  FOraErrorProcessor.Free;

end.

