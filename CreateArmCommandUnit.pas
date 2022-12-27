unit CreateArmCommandUnit;

interface

uses
  System.SysUtils, System.Classes, System.Variants, CommandUnit,
  BaseArmFormUnit, Vcl.Forms;

type
  TCreateArmCommand = class(TInterfacedObject, ICommand)
  strict private
    /// <summary>ICommand.Execute
    /// Выполнить команду
    /// </summary>
    procedure Execute; stdcall;
  private
    FArmClass: TBaseArmFormClass;
    procedure SetArmClass(const Value: TBaseArmFormClass);
  public
    constructor Create(AArmClass: TBaseArmFormClass);
    property ArmClass: TBaseArmFormClass read FArmClass write SetArmClass;
  end;

implementation

constructor TCreateArmCommand.Create(AArmClass: TBaseArmFormClass);
begin
  inherited Create;
  FArmClass := AArmClass;
end;

procedure TCreateArmCommand.Execute;
begin
  TBaseArmForm.Create(Application).Show;
end;

procedure TCreateArmCommand.SetArmClass(const Value: TBaseArmFormClass);
begin
  // TODO -cMM: TCreateArmCommand.SetArmClass default body inserted
end;

end.
