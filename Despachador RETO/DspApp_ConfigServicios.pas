unit DspApp_ConfigServicios;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ComCtrls, Vcl.Menus,
  Vcl.Buttons, Vcl.ExtCtrls, Vcl.Grids, Vcl.DBGrids;

type
  TConfigServicios = class(TForm)
    FileOpenDialog1: TFileOpenDialog;
    PageControl1: TPageControl;
    DespKDCentral: TTabSheet;
    Panel2: TPanel;
    SalirOK: TSpeedButton;
    edtIdDespachador: TLabeledEdit;
    CxGroupMySQL: TGroupBox;
    edtHostKD: TLabeledEdit;
    edtPuertoKD: TLabeledEdit;
    edtUsuarioKD: TLabeledEdit;
    edtPasswordKD: TLabeledEdit;
    procedure SalirOKClick(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ConfigServicios: TConfigServicios;

implementation

{$R *.dfm}
uses DMDespachador1;

procedure TConfigServicios.SalirOKClick(Sender: TObject);
begin
close;
end;

end.
