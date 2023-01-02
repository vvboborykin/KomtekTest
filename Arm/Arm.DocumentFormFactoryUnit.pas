{*******************************************************
* Project: KomtekTest
* Unit: Arm.DocumentFormFactoryUnit.pas
* Description: Фабрика редактора документов
*
* Created: 30.12.2022 19:45:34
* Copyright (C) 2022 Боборыкин В.В. (bpost@yandex.ru)
*******************************************************}
unit Arm.DocumentFormFactoryUnit;

interface

uses
  System.SysUtils, System.Classes, System.Variants, System.StrUtils,
  Arm.CreateDocumentParamsUnit;

type
  TDocumentFormFactory = class
  public
    /// <summary>TDocumentFormFactory.CreateDocument
    /// Создать и вывести на редактирование новый документ
    /// </summary>
    /// <param name="AParams"> (TCreateDocumentParams) </param>
    procedure CreateDocument(AParams: TCreateDocumentParams);
    /// <summary>TDocumentFormFactory.EditDocument
    /// Открыть в редакторе документ
    /// </summary>
    /// <param name="ADocumentId"> (Variant) Идентификатор открываемого
    /// документа</param>
    procedure EditDocument(ADocumentId: Variant);
  end;

function DocumentFormFactory: TDocumentFormFactory;

implementation

uses
  Arm.FrmDocumentUnit;

resourcestring
  SInvalidDoc = 'Пустой идентификатор документа, документ не найден';
  SInvalidHuman =
    'Пока сведения о человеке не сохранены невозможно создать для него документ';

var
  FDocumentFormFactory: TDocumentFormFactory;

function DocumentFormFactory: TDocumentFormFactory;
begin
  Result := FDocumentFormFactory;
end;

procedure TDocumentFormFactory.CreateDocument(AParams: TCreateDocumentParams);
begin
  if (AParams.HumanId = null) then
    raise Exception.Create(SInvalidHuman);
  TFrmDocument.CreateNewDocument(AParams);
end;

procedure TDocumentFormFactory.EditDocument(ADocumentId: Variant);
begin
  if ADocumentId = null then
    raise Exception.Create(SInvalidDoc);
  TFrmDocument.EditDocument(ADocumentId);
end;

initialization
  FDocumentFormFactory := TDocumentFormFactory.Create;

finalization
  FDocumentFormFactory.Free;

end.

