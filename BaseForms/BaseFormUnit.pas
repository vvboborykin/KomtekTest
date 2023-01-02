{*******************************************************
* Project: KomtekTest
* Unit: BaseFormUnit.pas
* Description: Базовая форма
*
* Created: 27.12.2022 18:58:11
* Copyright (C) 2022 Боборыкин В.В. (bpost@yandex.ru)
*******************************************************}
unit BaseFormUnit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  Lib.SubscriptionUnit, DevExpressOptionsUnit, DataNotificationUnit, Ora,
  AppDataUnit, Data.DB, DbLib.DataSetHelperUnit, Lib.ComponentHelperUnit;

type
  /// <summary>TBaseForm
  /// Базовая форма (подписчик на изменение скина и оповещения об изменениях данных)
  /// </summary>
  TBaseForm = class abstract(TForm, ISubscriber<TSkinNotification>, ISubscriber<TDataNotification>)
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  strict protected
    procedure BroadcastTableModified(ATableName: string);
    /// <summary>ISubscriber<TMessageData>.OnPublisherMessage
    /// Обработчик событий получаемых от издателей
    /// </summary>
    /// <param name="APublisher"> (IPublisher<TMessageData>) Издатель</param>
    /// <param name="AMessage"> (TMessageData) Событие</param>
    procedure OnPublisherMessage(APublisher: IPublisher<TSkinNotification>;
      AMessage: TSkinNotification); overload; virtual; stdcall;
    procedure OnPublisherMessage(APublisher: IPublisher<TDataNotification>;
      AMessage: TDataNotification); overload; virtual; stdcall;
  public
  end;

implementation

{$R *.dfm}

procedure TBaseForm.BroadcastTableModified(ATableName: string);
var
  vChangeNoti: TTableDataNotification;
begin
  inherited;
  vChangeNoti := TTableDataNotification.Create(Self, ATableName);
  try
    AppData.DataNotificationHub.BroadcastMessage(vChangeNoti);
  finally
    vChangeNoti.Free;
  end;
end;

procedure TBaseForm.FormDestroy(Sender: TObject);
begin
  AppData.DataNotificationHub.UnRegisterSubscriber(Self);
  DevExpressOptions.SkinNotificationHub.UnRegisterSubscriber(Self);
end;

procedure TBaseForm.OnPublisherMessage(APublisher: IPublisher<TDataNotification>;
  AMessage: TDataNotification);
begin
  // Обработка оповещения от других активных АРМ приложения об изменении данных таблицы
  // необходимо для синхронизации данных в разных АРМ
  // можно было сделать на основе TOraChangeNotification но не будет работать
  // в DirectMode
  Self.ForEachSubcomponent<TOraQuery>(
    procedure(AQuery: TOraQuery)
    begin
      if (AQuery.State = dsBrowse) and (AMessage is TTableDataNotification) and
        AnsiSameText((AMessage as TTableDataNotification).TableName, AQuery.UpdatingTable)
        then
        AQuery.CloseOpen;
    end);
end;

procedure TBaseForm.FormCreate(Sender: TObject);
begin
  DevExpressOptions.SkinNotificationHub.RegisterSubscriber(Self);
  AppData.DataNotificationHub.RegisterSubscriber(Self);
end;

procedure TBaseForm.OnPublisherMessage(APublisher: IPublisher<TSkinNotification>;
  AMessage: TSkinNotification);
begin

end;

end.

