{*******************************************************
* Project: KomtekTest
* Unit: VCL.DevExpressRichEditControlDataUnit.pas
* Description: ���������� TdxRichEditControl ����������� �������� / ���������� � BLOB ����
*
* Created: 01.01.2023 11:56:27
* Copyright (C) 2023 ��������� �.�. (bpost@yandex.ru)
*******************************************************}
unit VCL.DevExpressRichEditControlDataUnit;

interface

uses
  System.SysUtils, System.Classes, System.Variants, System.StrUtils,
  dxRichEdit.Control, Data.DB;

type
  /// <summary>TDevExpressRichEditControlData
  /// ���������� ����������� �������� / ���������� � BLOB ����
  /// </summary>
  TDevExpressRichEditControlData = class helper for TdxRichEditControl
  private
    procedure ValidateBlobField(ABlobField: TBlobField);
  public
    /// <summary>TDevExpressRichEditControlData.SaveToBlobField
    /// ��������� � BLOB ����
    /// </summary>
    /// <param name="ABlobField"> (TBlobField) </param>
    procedure SaveToBlobField(ABlobField: TBlobField);
    /// <summary>TDevExpressRichEditControlData.LoadFromBlobField
    /// �������� �� BLOB ����
    /// </summary>
    /// <param name="ABlobField"> (TBlobField) </param>
    procedure LoadFromBlobField(ABlobField: TBlobField);
  end;

implementation

uses
  dxRichEdit.NativeApi;

resourcestring
  SDataSetIsNotEditState = '����� ������ %s �� ��������� � ��������� ���������';
  SDataSetIsNotActiveError = '����� ������ %s �� �������';

procedure TDevExpressRichEditControlData.LoadFromBlobField(
  ABlobField: TBlobField);
var
  vMemoryStream: TMemoryStream;
begin
  ValidateBlobField(ABlobField);
  vMemoryStream := TMemoryStream.Create();
  try
    if ABlobField.Value <> null then
    begin
      ABlobField.SaveToStream(vMemoryStream);
      vMemoryStream.Seek(0, 0);
    end;
    if vMemoryStream.Size > 0 then
      Self.LoadDocument(vMemoryStream, TdxRicheditDocumentFormat.Rtf);
  finally
    vMemoryStream.Free;
  end;
end;

procedure TDevExpressRichEditControlData.SaveToBlobField(ABlobField:
    TBlobField);
var
  vMemoryStream: TMemoryStream;
begin
  ValidateBlobField(ABlobField);
  if ABlobField.DataSet.State = dsBrowse then
    raise Exception.CreateFmt(SDataSetIsNotEditState, [ABlobField.DataSet.Name]);

  vMemoryStream := TMemoryStream.Create();
  try
    SaveDocument(vMemoryStream, TdxRicheditDocumentFormat.Rtf);
    vMemoryStream.Seek(0, 0);
    ABlobField.Clear;
    if vMemoryStream.Size > 0 then
      ABlobField.LoadFromStream(vMemoryStream);
  finally
    vMemoryStream.Free;
  end;
end;

procedure TDevExpressRichEditControlData.ValidateBlobField(ABlobField:
    TBlobField);
begin
  if (ABlobField = nil) then
    raise EArgumentException.Create('ABlobField');

  if (not ABlobField.DataSet.Active) then
    raise Exception.CreateFmt(SDataSetIsNotActiveError,
      [ABlobField.DataSet.Name]);
end;

end.
