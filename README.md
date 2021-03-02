# UiPath-Log-Converter

UiPathのExecution Logを解析しやすいようにExcelファイルに変換します。

## 起動パラメータ

起動パラメータを指定することができます。

* in_LogDate: ログファイルの日付（デフォルトは本日。YYYY-MM-DD形式）
* in_ExcelFile: 返還後のExcelファイルパス（デフォルトはプロジェクトフォルダのLogFile-YYYY-MM-DD.xlsx）
* in_OptionalColumns: Timestamp, Level, Messageに加えて変換するカラム名配列（デフォルトは[]）

## 起動方法

UiPath StudioやRobot Trayから起動する他に、バッチファイルから起動することも可能です。
サンプルとして、UiPath-Log-Converter.batを参照してください。

```
@echo off

REM set PATH="C:\Program Files (x86)\UiPath\Studio";%PATH^%
set PATH=C:\Users\User\AppData\Local\UiPath\app-20.10.5;%PATH%

cd %~dp0

call UiRobot.exe execute ^
    --file "%~dp0project.json" ^
    --input "{ 'in_OptionalColumns': ['processName', 'totalExecutionTimeInSeconds'] }
```
