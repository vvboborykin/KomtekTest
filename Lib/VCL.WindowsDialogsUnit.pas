{*******************************************************
* Project: KomtekTest
* Unit: VCL.WindowsDialogsUnit.pas
* Description: Диалоги средствами WinApi
*
* Created: 02.01.2023 12:32:45
* Copyright (C) 2023 Боборыкин В.В. (bpost@yandex.ru)
*******************************************************}
unit VCL.WindowsDialogsUnit;

interface

uses
  System.SysUtils, System.Classes, System.Variants, System.StrUtils,
  Winapi.Windows
{$IF APPTYPE='GUI'}
  , Vcl.Forms
{$ENDIF}
  ;

procedure ShowErrorFmt(AErrorText: String; AParams: array of const);
procedure ShowError(AErrorText: String);

procedure ShowWarningFmt(AWarningText: String; AParams: array of const);
procedure ShowWarning(AWarningText: String);

procedure ShowInfoFmt(AInfoText: String; AParams: array of const);
procedure ShowInfo(AInfoText: String);

function AskYesNoFtm(AInfoText: String; AParams: array of const): Boolean;
function AskYesNo(AInfoText: String): Boolean;

type
  TYesNoCancel = (yncYes = ID_YES, yncNo = ID_NO, yncCancel = ID_CANCEL);

function AskYesNoCancelFtm(AInfoText: String; AParams: array of const):
    TYesNoCancel;
function AskYesNoCancel(AInfoText: String): TYesNoCancel;


implementation


resourcestring
  SWarning = 'Предупреждение';
  Sinformation = 'Информация';
  SConfirmation = 'Подтверждение';
  SError = 'Ошибка';

function GetDialogTitile(AText: string): String;
var
  vTitle: string;
begin
  vTitle := AText;
{$IF APPTYPE='GUI'}
  if Application <> nil then
     vTitle := Application.Title + '.';
  vTitle := vTitle + AText;
{$ENDIF}
  Result := vTitle;
end;

function ShowDialogFmt(AErrorText: String; AParams: array of const;
  ATitleText: String; AButtons: Cardinal): Integer;
begin
  Result := MessageBox(0, PWideChar(Format(AErrorText, AParams)),
    PWideChar(GetDialogTitile(ATitleText)),
    MB_OK + MB_ICONERROR + MB_DEFBUTTON1);
end;

procedure ShowErrorFmt(AErrorText: String; AParams: array of const);
begin
  ShowDialogFmt(AErrorText, AParams, SError,
    MB_OK + MB_ICONERROR + MB_DEFBUTTON1);
end;

procedure ShowError(AErrorText: String);
begin
  ShowErrorFmt(AErrorText, []);
end;

procedure ShowWarningFmt(AWarningText: String; AParams: array of const);
begin
  ShowDialogFmt(AWarningText, AParams, SWarning,
    MB_OK + MB_ICONWARNING + MB_DEFBUTTON1);
end;

procedure ShowWarning(AWarningText: String);
begin
  ShowWarningFmt(AWarningText, []);
end;

procedure ShowInfoFmt(AInfoText: String; AParams: array of const);
begin
  ShowDialogFmt(AInfoText, AParams, Sinformation,
    MB_OK + MB_ICONINFORMATION + MB_DEFBUTTON1);
end;

procedure ShowInfo(AInfoText: String);
begin
  ShowInfoFmt(AInfoText, []);
end;

function AskYesNoFtm(AInfoText: String; AParams: array of const): Boolean;
begin
  Result := ShowDialogFmt(AInfoText, AParams, SConfirmation,
    MB_YESNO + MB_DEFBUTTON1 + MB_ICONQUESTION) = ID_YES;
end;

function AskYesNo(AInfoText: String): Boolean;
begin
  Result := AskYesNoFtm(AInfoText, []);
end;

function AskYesNoCancelFtm(AInfoText: String; AParams: array of const):
    TYesNoCancel;
begin
  Result := TYesNoCancel(ShowDialogFmt(AInfoText, AParams, SConfirmation,
    MB_YESNO + MB_DEFBUTTON1 + MB_ICONQUESTION));
end;

function AskYesNoCancel(AInfoText: String): TYesNoCancel;
begin
  Result := AskYesNoCancelFtm(AInfoText, []);
end;

end.
