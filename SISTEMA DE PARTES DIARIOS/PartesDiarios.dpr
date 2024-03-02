program PartesDiarios;

uses
  Forms,
  Unit1 in 'Unit1.pas' {Fmain},
  Unit2 in 'Unit2.pas' {DM: TDataModule},
  Unit3 in 'Unit3.pas' {FLOGIN},
  Unit4 in 'Unit4.pas' {FcrearUsuario},
  Unit5 in 'Unit5.pas' {Fmodpass},
  Unit6 in 'Unit6.pas' {Feliminar},
  Unit7 in 'Unit7.pas' {Fchequeos},
  Unit8 in 'Unit8.pas' {FmotivoAE},
  Unit9 in 'Unit9.pas' {Fllamadas},
  Unit10 in 'Unit10.pas' {Fkmnopermanentes},
  Unit11 in 'Unit11.pas' {Fasistencia},
  Unit12 in 'Unit12.pas' {Fescrito},
  Unit13 in 'Unit13.pas' {Funidad6},
  Unit14 in 'Unit14.pas' {Foice},
  Unit15 in 'Unit15.pas' {Fincidencias},
  Unit16 in 'Unit16.pas' {Fmodcargo},
  Unit17 in 'Unit17.pas' {Favanzadas},
  Unit18 in 'Unit18.pas' {Fbajachequeo},
  Unit19 in 'Unit19.pas' {FbajaKM},
  Unit20 in 'Unit20.pas' {FESTADOS},
  Unit21 in 'Unit21.pas' {FFORMASKM},
  Unit22 in 'Unit22.pas' {FIDIOMAS},
  Unit23 in 'Unit23.pas' {FLUGARAPLICADO},
  Unit24 in 'Unit24.pas' {FLUGARMONITOREO},
  Unit25 in 'Unit25.pas' {Ftipokm},
  Unit26 in 'Unit26.pas' {Ftipodoc},
  Unit27 in 'Unit27.pas' {Funidades},
  Unit28 in 'Unit28.pas' {Fkmpermanentes},
  Unit29 in 'Unit29.pas' {FcambiarestadoKM},
  Unit30 in 'Unit30.pas' {FKMPERM},
  Unit31 in 'Unit31.pas' {Fefectasist},
  Unit32 in 'Unit32.pas' {Fefectllam},
  Unit33 in 'Unit33.pas' {FavanzadasD},
  Unit34 in 'Unit34.pas' {Fefect6},
  Unit35 in 'Unit35.pas' {Finterrupciones},
  Unit36 in 'Unit36.pas' {FchequeosKD},
  Unit37 in 'Unit37.pas' {FcorreosKD},
  Unit38 in 'Unit38.pas' {Falertas},
  Unit39 in 'Unit39.pas' {Fveralertas},
  Unit41 in 'Unit41.pas' {FGSA},
  Unit42 in 'Unit42.pas' {FefectGSA},
  Unit72 in 'Unit72.pas' {Form72},
  Unit73 in 'Unit73.pas' {FbajachequeoKD},
  Unit40 in 'Unit40.pas' {FefectcorreosKD};

{$R *.res}

begin
  Application.Initialize;
  Application.Title := 'PartesDiarios';
  //Application.MainFormOnTaskbar := True;

  Application.CreateForm(TDM, DM);
  Application.CreateForm(TFLOGIN, FLOGIN);
  Application.CreateForm(TFmain, Fmain);
  Application.Run;
end.
