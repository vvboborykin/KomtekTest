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
  System.Generics.Collections, MemDS, MemData;

type
  /// <summary>TAppData
  /// Модуль данных приложения
  /// </summary>
  TAppData = class(TDataModule, IPublisher<TDataNotification>)
    sesMain: TOraSession;
    dlgConnect: TConnectDialog;
    qryCurrentDateTime: TOraQuery;
    procedure DataModuleDestroy(Sender: TObject);
    procedure DataModuleCreate(Sender: TObject);
    procedure sesMainAfterConnect(Sender: TObject);
    procedure sesMainBeforeConnect(Sender: TObject);
    procedure sesMainConnectionLost(Sender: TObject; Component: TComponent;
        ConnLostCause: TConnLostCause; var RetryMode: TRetryMode);
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
  VCL.Dialogs, DbLib.DataSetHelperUnit, OraErrorProcessorUnit,
  Logging.AppLogger, VCL.WindowsDialogsUnit;

resourcestring
  SDatabaseConnected = 'Проведено подключение к БД %s под пользователем %s';
  SReconnectConfirm = 'Потеряно соединение с БД. Восстановить соединение ?';
  SConnectionLose = 'Потеряно соединение с БД';
  SConnectTry = 'Попытка подключения к БД %s под пользователем %s';
  SStartAppLog = 'Запуск программы';
  SUnloadAppLog = 'Выгрузка программы';

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

procedure TAppData.DataModuleDestroy(Sender: TObject);
begin
  Log.Debug(SUnloadAppLog, SApplication);
end;

procedure TAppData.DataModuleCreate(Sender: TObject);
begin
  Log.Debug(SStartAppLog, SApplication);
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

procedure TAppData.sesMainAfterConnect(Sender: TObject);
begin
  Log.Debug(SDatabaseConnected,
    [sesMain.Schema, sesMain.Username], SDatabase);
end;

procedure TAppData.sesMainBeforeConnect(Sender: TObject);
begin
  Log.Debug(SConnectTry, [sesMain.Schema, sesMain.Username], SDatabase);
end;

procedure TAppData.sesMainConnectionLost(Sender: TObject; Component:
    TComponent; ConnLostCause: TConnLostCause; var RetryMode: TRetryMode);
begin
  Log.Debug(SConnectionLose, SDatabase);
  if AskYesNo(SReconnectConfirm) then
    RetryMode := TRetryMode.rmReconnect
  else
    RetryMode := TRetryMode.rmRaise;
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

