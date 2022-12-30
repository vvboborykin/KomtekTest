{*******************************************************
* Project: KomtekTest
* Unit: DataNotificationUnit.pas
* Description: Механизм доставки опорещений
*
* Created: 29.12.2022 19:35:38
* Copyright (C) 2022 Боборыкин В.В. (bpost@yandex.ru)
*******************************************************}
unit DataNotificationUnit;

interface
uses
  System.SysUtils, System.Classes, System.Variants, System.StrUtils,
  System.Generics.Collections;

type
  /// <summary>TDataNotification
  /// Сообщение для доставки
  /// </summary>
  TDataNotification = class abstract
  private
    FSender: TObject;
    procedure SetSender(const Value: TObject);
  public
    constructor Create(ASender: TObject);
    property Sender: TObject read FSender write SetSender;
  end;

  /// <summary>TTableDataNotification
  /// Сообщение об изменении данных таблицы
  /// </summary>
  TTableDataNotification = class abstract(TDataNotification)
  private
    FTableName: string;
    procedure SetTableName(const Value: string);
  public
    constructor Create(ASender: TObject; const ATableName: string);
    property TableName: string read FTableName write SetTableName;
  end;

  /// <summary>TRecordDataNotification
  /// Сообщение об изменении записи таблицы
  /// </summary>
  TRecordDataNotification = class abstract(TTableDataNotification)
  private
    FRecordId: Variant;
    procedure SetRecordId(const Value: Variant);
  public
    constructor Create(ASender: TObject; ATableName: string; ARecordId: Variant);
    property RecordId: Variant read FRecordId write SetRecordId;
  end;

  TDeleteRecordDataNotification = class(TRecordDataNotification)
  end;

  TInsertRecordDataNotification = class(TRecordDataNotification)
  end;

  TUpdateRecordDataNotification = class(TRecordDataNotification)
  end;

  /// <summary>IDataNotificationListener
  /// Получатель сообщений
  /// </summary>
  IDataNotificationListener = interface
    ['{020F1991-C518-4AEC-B136-6280030FE003}']
    procedure OnDataNotification(AData: TDataNotification); stdcall;
  end;

  /// <summary>IDataNotificationHub
  /// Служба джоставки сообщений
  /// </summary>
  IDataNotificationHub = interface
    ['{7C630580-7E49-4EB1-A732-412443C49C6B}']
    procedure BroadcastDataNotification(ADataNotification: TDataNotification);
        stdcall;
    procedure RegisterListener(AListener: IDataNotificationListener); stdcall;
    procedure UnRegisterListener(AListener: IDataNotificationListener); stdcall;
  end;

  TDataNotificationHub = class(TInterfacedObject, IDataNotificationHub)
  strict private
    FDataNotificationListeners: TList<IDataNotificationListener>;
    procedure BroadcastDataNotification(ADataNotification: TDataNotification);
        stdcall;
    procedure RegisterListener(AListener: IDataNotificationListener); stdcall;
    procedure UnRegisterListener(AListener: IDataNotificationListener); stdcall;
  public
    constructor Create;
    destructor Destroy; override;
  end;

implementation

constructor TRecordDataNotification.Create(ASender: TObject; ATableName:
    string; ARecordId: Variant);
begin
  inherited Create(ASender, ATableName);
  FRecordId := ARecordId;
  FTableName := ATableName;
end;

procedure TRecordDataNotification.SetRecordId(const Value: Variant);
begin
  FRecordId := Value;
end;

constructor TDataNotification.Create(ASender: TObject);
begin
  inherited Create;
  FSender := ASender;
end;

procedure TDataNotification.SetSender(const Value: TObject);
begin
  FSender := Value;
end;

constructor TTableDataNotification.Create(ASender: TObject; const ATableName:
    string);
begin
  inherited Create(ASender);
  FTableName := ATableName;
end;

procedure TTableDataNotification.SetTableName(const Value: string);
begin
  FTableName := Value;
end;

constructor TDataNotificationHub.Create;
begin
  inherited Create;
  FDataNotificationListeners := TList<IDataNotificationListener>.Create();
end;

destructor TDataNotificationHub.Destroy;
begin
  FreeAndNil(FDataNotificationListeners);
  inherited Destroy;
end;

procedure TDataNotificationHub.BroadcastDataNotification(ADataNotification:
    TDataNotification);
var
  I: Integer;
begin
  for I := 0 to FDataNotificationListeners.Count-1 do
    FDataNotificationListeners[I].OnDataNotification(ADataNotification);
end;

procedure TDataNotificationHub.RegisterListener(AListener:
    IDataNotificationListener);
begin
  if not FDataNotificationListeners.Contains(AListener) then
    FDataNotificationListeners.Add(AListener);
end;

procedure TDataNotificationHub.UnRegisterListener(AListener:
    IDataNotificationListener);
begin
  FDataNotificationListeners.Remove(AListener);
end;

end.
