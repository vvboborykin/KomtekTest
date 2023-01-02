{*******************************************************
* Project: VistaBillExtractor
* Unit: ThreadSafeObjectUnit.pas
* Description: Объект с потокобезопасным доступом к ресурсам
*
* Created: 15.12.2022 12:39:31
* Copyright (C) 2022 Боборыкин В.В. (bpost@yandex.ru)
*******************************************************}
unit Lib.ThreadSafeObjectUnit;

interface

uses
  System.SysUtils, System.Classes, System.Variants, System.Generics.Collections,
  System.SyncObjs;

type
  /// <summary>TThreadSafeObject
  /// Объект с потокобезопасным доступом к ресурсам
  /// </summary>
  TThreadSafeObject = class(TObject)
  strict private
    FInstanceLock: TCriticalSection;
    FLockDict: TDictionary<string, TCriticalSection>;
  public
    constructor Create;
    destructor Destroy; override;
    /// <summary>TThreadSafeObject.ExecuteInMainThread
    /// Выполнить процедуру в главном потоке приложения (для потокобезопасной работы с
    /// GUI)
    /// </summary>
    /// <param name="AProc"> (TProc) </param>
    class procedure ExecuteInMainThread(AProc: TProc);
    /// <summary>TThreadSafeObject.UsingResourceLock
    /// Выполнить процедуру с потокобезопасным доступом к ресурсу
    /// </summary>
    /// <param name="AResourceProcessingProc"> (TProc) </param>
    /// <param name="AResourceName"> (string) </param>
    procedure UsingResourceLock(AResourceProcessingProc: TProc; AResourceName:
      string = '');
    /// <summary>TThreadSafeObject.UsingInstanceLock
    /// Выполнить процедуру с потокобезопасным доступом к объекту
    /// </summary>
    /// <param name="AInstanceProcessingProc"> (TProc) </param>
    procedure UsingInstanceLock(AInstanceProcessingProc: TProc);
  end;

  /// <summary>TThreadSafeInterfacedObject
  /// Объект реализцющий интерфейсы с потокобезопасным доступом к ресурсам
  /// </summary>
  TThreadSafeInterfacedObject = class(TInterfacedObject)
  strict private
    FThreadSafeObject: TThreadSafeObject;
  public
    constructor Create;
    destructor Destroy; override;
    /// <summary>TThreadSafeInterfacedObject.UsingResourceLock
    /// Выполнить процедуру с потокобезопасным доступом к ресурсу
    /// </summary>
    /// <param name="AResourceProcessingProc"> (TProc) </param>
    /// <param name="AResourceName"> (String) </param>
    procedure UsingResourceLock(AResourceProcessingProc: TProc; AResourceName:
      string = '');
    /// <summary>TThreadSafeInterfacedObject.UsingInstanceLock
    /// Выполнить процедуру с потокобезопасным доступом к объекту
    /// </summary>
    /// <param name="AInstanceProcessingProc"> (TProc) </param>
    procedure UsingInstanceLock(AInstanceProcessingProc: TProc);
    /// <summary>TThreadSafeInterfacedObject.ExecuteInMainThread
    /// Выполнить процедуру в главном потоке приложения (для потокобезопасной работы с
    /// GUI)
    /// </summary>
    /// <param name="AProc"> (TProc) </param>
    class procedure ExecuteInMainThread(AProc: TProc);
  end;

implementation

constructor TThreadSafeObject.Create;
begin
  inherited Create;
  FInstanceLock := TCriticalSection.Create();
  FLockDict := TDictionary<string, TCriticalSection>.Create();
end;

destructor TThreadSafeObject.Destroy;
var
  vKey: string;
begin
  UsingInstanceLock(
    procedure
    begin
      while FLockDict.Count > 0 do
      begin
        vKey := FLockDict.Keys.ToArray()[0];
        FLockDict[vKey].Free;
        FLockDict.Remove(vKey);
      end;
    end);

  FLockDict.Free;
  FInstanceLock.Free;

  inherited Destroy;
end;

class procedure TThreadSafeObject.ExecuteInMainThread(AProc: TProc);
begin
  TThread.Synchronize(nil,
    procedure
    begin
      AProc()
    end);
end;

procedure TThreadSafeObject.UsingResourceLock(AResourceProcessingProc: TProc;
  AResourceName: string = '');
begin
  UsingInstanceLock(
    procedure
    var
      vCriticalSection: TCriticalSection;
    begin
      if not FLockDict.TryGetValue(AResourceName, vCriticalSection) then
      begin
        vCriticalSection := TCriticalSection.Create;
        FLockDict.Add(AResourceName, vCriticalSection);
      end;

      vCriticalSection.Enter;
      try
        AResourceProcessingProc();
      finally
        vCriticalSection.Leave;
      end;
    end)
end;

procedure TThreadSafeObject.UsingInstanceLock(AInstanceProcessingProc: TProc);
begin
  FInstanceLock.Enter;
  try
    AInstanceProcessingProc();
  finally
    FInstanceLock.Leave;
  end;
end;

constructor TThreadSafeInterfacedObject.Create;
begin
  inherited Create;
  FThreadSafeObject := TThreadSafeObject.Create();
end;

destructor TThreadSafeInterfacedObject.Destroy;
begin
  FThreadSafeObject.Free;
  inherited Destroy;
end;

class procedure TThreadSafeInterfacedObject.ExecuteInMainThread(AProc: TProc);
begin
  TThreadSafeObject.ExecuteInMainThread(AProc);
end;

procedure TThreadSafeInterfacedObject.UsingInstanceLock(AInstanceProcessingProc:
  TProc);
begin
  FThreadSafeObject.UsingInstanceLock(AInstanceProcessingProc);
end;

procedure TThreadSafeInterfacedObject.UsingResourceLock(AResourceProcessingProc:
  TProc; AResourceName: string = '');
begin
  FThreadSafeObject.UsingResourceLock(AResourceProcessingProc, AResourceName);
end;

end.

