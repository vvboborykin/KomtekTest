{*******************************************************
* Project: KomtekTest
* Unit: BaseFormUnit.pas
* Description: ������� �����
*
* Created: 27.12.2022 18:58:11
* Copyright (C) 2022 ��������� �.�. (bpost@yandex.ru)
*******************************************************}
unit BaseFormUnit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs;

type
  /// <summary>TBaseForm
  /// ������� �����
  /// </summary>
  TBaseForm = class abstract(TForm)
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

end.

