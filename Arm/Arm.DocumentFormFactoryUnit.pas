{*******************************************************
* Project: KomtekTest
* Unit: Arm.DocumentFormFactoryUnit.pas
* Description: ������� ��������� ����������
*
* Created: 30.12.2022 19:45:34
* Copyright (C) 2022 ��������� �.�. (bpost@yandex.ru)
*******************************************************}
unit Arm.DocumentFormFactoryUnit;

interface

uses
  System.SysUtils, System.Classes, System.Variants, System.StrUtils,
  Arm.CreateDocumentParamsUnit;

type
  /// <summary>TDocumentFormFactory
  /// ������� ��������� ����������
  /// </summary>
  TDocumentFormFactory = class
  public
    /// <summary>TDocumentFormFactory.CreateDocument
    /// ������� � ������� �� �������������� ����� ��������
    /// </summary>
    /// <param name="AParams"> (TCreateDocumentParams) </param>
    procedure CreateDocument(AParams: TCreateDocumentParams);
    /// <summary>TDocumentFormFactory.EditDocument
    /// ������� � ��������� ��������
    /// </summary>
    /// <param name="ADocumentId"> (Variant) ������������� ������������
    /// ���������</param>
    procedure EditDocument(ADocumentId: Variant);
  end;

/// <summary>procedure DocumentFormFactory
/// ������� TDocumentFormFactory
/// </summary>
/// <returns> TDocumentFormFactory
/// </returns>
function DocumentFormFactory: TDocumentFormFactory;

implementation

uses
  Arm.FrmDocumentUnit;

resourcestring
  SInvalidDoc = '������ ������������� ���������, �������� �� ������';
  SInvalidHuman =
    '���� �������� � �������� �� ��������� ���������� ������� ��� ���� ��������';

var
  FDocumentFormFactory: TDocumentFormFactory;

function DocumentFormFactory: TDocumentFormFactory;
begin
  Result := FDocumentFormFactory;
end;

procedure TDocumentFormFactory.CreateDocument(AParams: TCreateDocumentParams);
begin
  if  VarIsNull(AParams.HumanId) or VarIsEmpty(AParams.HumanId)  then
    raise Exception.Create(SInvalidHuman);
  TFrmDocument.CreateNewDocument(AParams);
end;

procedure TDocumentFormFactory.EditDocument(ADocumentId: Variant);
begin
  if VarIsNull(ADocumentId) or VarIsEmpty(ADocumentId) then
    raise Exception.Create(SInvalidDoc);
  TFrmDocument.EditDocument(ADocumentId);
end;

initialization
  FDocumentFormFactory := TDocumentFormFactory.Create;

finalization
  FDocumentFormFactory.Free;

end.

