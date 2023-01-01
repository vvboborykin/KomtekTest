{*******************************************************
* Project: KomtekTest
* Unit: AppDataUnit.pas
* Description: Глобальный модуль данных приложения
*
* Created: 30.12.2022 19:48:43
* Copyright (C) 2022 Боборыкин В.В. (bpost@yandex.ru)
*******************************************************}
unit AppDataUnit;

interface

uses
  System.SysUtils, System.Classes, System.DateUtils, DBAccess, Data.DB, Ora,
  OdacVcl, OraCall, DataNotificationUnit, System.Generics.Collections, MemDS;

type
  TAppData = class(TDataModule, IDataNotificationHub)
    sesMain: TOraSession;
    dlgConnect: TConnectDialog;
    qryCurrentDateTime: TOraQuery;
    procedure DataModuleCreate(Sender: TObject);
  private
    FDataNotificationHub: IDataNotificationHub;
  public
    /// <summary>TAppData.GetServerDateTime
    /// Получить текущие дату и время сервера БД
    /// </summary>
    /// <returns> TDateTime
    /// </returns>
    function GetServerDateTime: TDateTime;
    /// <summary>TAppData.GetServerDate
    /// Получить текущие дату сервера БД
    /// </summary>
    /// <returns> TDateTime
    /// </returns>
    function GetServerDate: TDateTime;
    /// <summary>TAppData.DataNotificationHub
    /// Реализация службы доставки сообщений IDataNotificationHub
    /// </summary>
    /// type:IDataNotificationHub
    property DataNotificationHub: IDataNotificationHub read FDataNotificationHub
      implements IDataNotificationHub;
  end;

var
  AppData: TAppData;

implementation

uses
  VCL.Dialogs, DbLib.DataSetHelper;

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

procedure TAppData.DataModuleCreate(Sender: TObject);
begin
  FDataNotificationHub := TDataNotificationHub.Create;
end;

function TAppData.GetServerDate: TDateTime;
begin
  Result := DateOf(GetServerDateTime);
end;

function TAppData.GetServerDateTime: TDateTime;
begin
  qryCurrentDateTime.CloseOpen;
  Result := qryCurrentDateTime.Fields[0].Value;
end;

end.

