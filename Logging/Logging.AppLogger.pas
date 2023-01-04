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
/// Глобальная служба ведения протокола приложения
/// </summary>
/// <returns> ILogWriter
/// </returns>
function Log: ILogWriter;

implementation

uses
  LoggerPro.FileAppender, Lib.CommandLineServiceUnit, TypInfo;

var
  FLog: ILogWriter;


function CreateFileAppender: ILogAppender;
var
  aMaxBackupFileCount: Integer;
  aMaxFileSizeInKiloByte: Integer;
  aLogsFolder: string;
begin
  aMaxBackupFileCount := CommandLineService
    .GetIntegerValue('LogMaxBackupFileCount',
      TLoggerProFileAppenderBase.DEFAULT_MAX_BACKUP_FILE_COUNT);

  aMaxFileSizeInKiloByte := CommandLineService
    .GetintegerValue('LogMaxFileSizeInKiloByte',
      TLoggerProFileAppenderBase.DEFAULT_MAX_FILE_SIZE_KB);

  aLogsFolder := CommandLineService.GetValue('LogsFolder',
    TPath.Combine(TPath.GetHomePath,
      TPath.GetFileNameWithoutExtension(ParamStr(0))));

  if not TDirectory.Exists(aLogsFolder) then
    ForceDirectories(aLogsFolder);

  Result := TLoggerProSimpleFileAppender.Create(aMaxBackupFileCount,
    aMaxFileSizeInKiloByte, aLogsFolder);
end;

function Log: ILogWriter;
begin
  if (FLog = nil) then
    FLog := BuildLogWriter([CreateFileAppender]);

  Result := FLog;
end;

end.
