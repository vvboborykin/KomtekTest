{*******************************************************
* Project: KomtekTest
* Unit: Logging.AppLogger.pas
* Description: Модуль ведения протокола работы программы
*
* Created: 04.01.2023 9:34:07
* Copyright (C) 2023 Боборыкин В.В. (bpost@yandex.ru)
*******************************************************}
unit Logging.AppLogger;

interface

uses
  System.SysUtils, System.Classes, System.Variants, System.StrUtils,
  LoggerPro, System.IOUtils;

/// <summary>procedure Log
/// Глобальная служба ведения протокола работы приложения
/// </summary>
/// <returns> ILogWriter
/// </returns>
function Log: ILogWriter;

resourcestring
  SApplication = 'Программа';
  SDatabase = 'База данных';


implementation

uses
  LoggerPro.FileAppender, Lib.CommandLineServiceUnit, TypInfo;

const
  SLogLevelParamName = 'LogLevel';
  SLogsFolderParamName = 'LogsFolder';
  SLogMaxFileSizeInKiloByteParamName = 'LogMaxFileSizeInKiloByte';
  SLogMaxBackupFileCountParamName = 'LogMaxBackupFileCount';
  SDebugLogLevel = 'DEBUG';
  SInfoLogLevel = 'INFO';
  SErrorLogLevel = 'ERROR';
  SWarningLogLevel = 'WARNING';

var
  FLog: ILogWriter;


function CreateFileAppender: ILogAppender;
var
  aMaxBackupFileCount: Integer;
  aMaxFileSizeInKiloByte: Integer;
  aLogsFolder: string;
begin
  aMaxBackupFileCount := CommandLineService
    .GetIntegerValue(SLogMaxBackupFileCountParamName,
      TLoggerProFileAppenderBase.DEFAULT_MAX_BACKUP_FILE_COUNT);

  aMaxFileSizeInKiloByte := CommandLineService
    .GetintegerValue(SLogMaxFileSizeInKiloByteParamName,
      TLoggerProFileAppenderBase.DEFAULT_MAX_FILE_SIZE_KB);

  aLogsFolder := CommandLineService.GetValue(SLogsFolderParamName,
    TPath.Combine(TPath.GetHomePath,
      TPath.GetFileNameWithoutExtension(ParamStr(0))));

  if not TDirectory.Exists(aLogsFolder) then
    ForceDirectories(aLogsFolder);

  Result := TLoggerProSimpleFileAppender.Create(aMaxBackupFileCount,
    aMaxFileSizeInKiloByte, aLogsFolder);
end;

function GetLogLevelFromCommandLine: TLogType;
var
  vLogLevel: String;
begin
  Result := TLogType.Debug;
  vLogLevel := CommandLineService.GetValue(SLogLevelParamName, SDebugLogLevel);
  if AnsiSameText(vLogLevel, SDebugLogLevel) then
    Result := TLogType.Debug
  else
  if AnsiSameText(vLogLevel, SInfoLogLevel) then
    Result := TLogType.Info
  else
  if AnsiSameText(vLogLevel, SWarningLogLevel) then
    Result := TLogType.Warning
  else
  if AnsiSameText(vLogLevel, SErrorLogLevel) then
    Result := TLogType.Error
  else;
end;


function Log: ILogWriter;
begin
  if (FLog = nil) then
    FLog := BuildLogWriter([CreateFileAppender], nil,
      GetLogLevelFromCommandLine());

  Result := FLog;
end;

end.
