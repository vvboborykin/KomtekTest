{*******************************************************
* Project: VistaZslLoader.Vcl
* Unit: Lib.ComponentHelperUnit.pas
* Description: ?????????? ???????????????? TComponent
*
* Created: 26.12.2022 11:06:21
* Copyright (C) 2022 ????????? ?.?. (bpost@yandex.ru)
*******************************************************}
unit Lib.ComponentHelperUnit;

interface

uses
  System.SysUtils, System.Classes, System.Variants;

type
  /// <summary>TComponentHelper
  /// ?????????? ???????????????? TComponent
  /// </summary>
  TComponentHelper = class helper for TComponent
  public
    /// <summary>TComponentHelper.ForEachSubcomponent
    /// ???????? ?? ???????? ???????????
    /// </summary>
    /// <param name="AProc"> (TProc<TComponent>) ????????? ??????????? ??? ????????
    /// ???????????</param>
    /// <param name="AMinClass"> (TClass) ??????????? ????? ????????? ??????????</param>
    procedure ForEachSubcomponent(AProc: TProc<TComponent>; AMinClass:
        TComponentClass); overload;
    procedure ForEachSubcomponent<T: TComponent>(AProc: TProc<T>);
        overload;
    procedure ForEachSubcomponent(AProc: TProc<TComponent>); overload;
  end;

implementation

uses
  TypInfo;

procedure TComponentHelper.ForEachSubcomponent(AProc: TProc<TComponent>;
    AMinClass: TComponentClass);
var
  I: Integer;
  vComponent: TComponent;
begin
  for I := 0 to ComponentCount-1 do
  begin
    vComponent := Components[I];
    if vComponent.InheritsFrom(AMinClass) then
      AProc(vComponent);
  end;
end;

procedure TComponentHelper.ForEachSubcomponent(AProc: TProc<TComponent>);
begin
  ForEachSubcomponent(AProc, TComponent)
end;

procedure TComponentHelper.ForEachSubcomponent<T>(AProc: TProc<T>);
var
  I: Integer;
  vComponent: TComponent;
begin
  for I := 0 to ComponentCount-1 do
  begin
    vComponent := Components[I];
    if vComponent is T then
      AProc(vComponent as T);
  end;
end;


end.
