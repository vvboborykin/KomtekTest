{*******************************************************
* Project: KomtekTest
* Unit: Arm.CreateDocumentParamsUnit.pas
* Description: Параметры создания нового документа
*
* Created: 01.01.2023 12:12:12
* Copyright (C) 2023 Боборыкин В.В. (bpost@yandex.ru)
*******************************************************}
unit Arm.CreateDocumentParamsUnit;

interface

type
  /// <summary>TCreateDocumentParams
  /// Параметры создания нового документа
  /// </summary>
  TCreateDocumentParams = record
  private
    FHumanId: Variant;
    procedure SetHumanId(const Value: Variant);
  public
    property HumanId: Variant read FHumanId write SetHumanId;
  end;

implementation

procedure TCreateDocumentParams.SetHumanId(const Value: Variant);
begin
  if FHumanId <> Value then
  begin
    FHumanId := Value;
  end;
end;

end.
