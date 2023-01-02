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
  OdacVcl, OraCall, Lib.SubscriptionUnit, DataNotificationUnit,
  System.Generics.Collections, MemDS;

type
  TAppData = class(TDataModule, IPublisher<TDataNotification>)
    sesMain: TOraSession;
    dlgConnect: TConnectDialog;
    qryCurrentDateTime: TOraQuery;
    procedure DataModuleCreate(Sender: TObject);
    procedure sesMainError(Sender: TObject; E: EDAError; var Fail: Boolean);
  private
    FDataNotificationHub: IPublisher<TDataNotification>;
  strict protected
    procedure TryConnect;
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
    property DataNotificationHub: IPublisher<TDataNotification> read FDataNotificationHub
      implements IPublisher<TDataNotification>;
  end;

var
  AppData: TAppData;

implementation

uses
  VCL.Dialogs, DbLib.DataSetHelperUnit, OraErrorProcessorUnit;

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

procedure TAppData.DataModuleCreate(Sender: TObject);
begin
  FDataNotificationHub := TPublisher<TDataNotification>.Create();
  TryConnect();
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

procedure TAppData.sesMainError(Sender: TObject; E: EDAError; var Fail: Boolean);
begin
  OraErrorProcessor.ShowOracleException(E);
end;

procedure TAppData.TryConnect;
begin
  sesMain.Open;
end;

end.

