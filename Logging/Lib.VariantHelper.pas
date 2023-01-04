unit Lib.VariantHelper;

interface

uses
  System.SysUtils, System.Classes, System.Variants, System.StrUtils;

type
  TVariantHelper = class
  public
    function VariantsEqals(AVariant1, AVariant2: Variant): Boolean;
  end;

implementation

function TVariantHelper.VariantsEqals(AVariant1, AVariant2: Variant): Boolean;
begin
  Result := VarType(AVariant1) = VarType(AVariant2);
  if VarIsArray(AVariant2) then
    Result := VarToStr(AVariant1) = VarToStr(AVariant2);
end;

end.
