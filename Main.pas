unit Main;

interface

uses
  Winapi.Windows, Winapi.Messages, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, Vcl.ComCtrls, REST.Client,
  Data.Bind.Components, Data.Bind.ObjectScope, Vcl.StdCtrls, Vcl.CheckLst,
  Vcl.ExtCtrls, System.JSON, System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  System.Rtti, System.Bindings.Outputs, System.IOUtils, VclTee.TeeGDIPlus, VCLTee.TeEngine, VCLTee.TeeProcs,
  VCLTee.Chart, System.DateUtils, Vcl.Grids, TDictionary, Vcl.Samples.Gauges,
  VCLTee.Series, Vcl.Tabs, IniFiles, Find, System.AnsiStrings, Data.DB, Generics.Collections,
  Datasnap.DBClient, REST.Response.Adapter, shellapi, QExport4, QExport4XLS,
  Vcl.Imaging.jpeg, Vcl.Imaging.pngimage, Vcl.Buttons, Vcl.Themes, Vcl.Styles, func,
  JvExExtCtrls, JvExtComponent, JvRollOut;


type
  TForm1 = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    TabSheet4: TTabSheet;
    Panel1: TPanel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Memo1: TMemo;
    Button3: TButton;
    StringGrid1: TStringGrid;
    Chart1: TChart;
    Series1: TBarSeries;
    Chart2: TChart;
    Label11: TLabel;
    Label15: TLabel;
    Label19: TLabel;
    Label16: TLabel;
    Label20: TLabel;
    Label17: TLabel;
    Label21: TLabel;
    Label18: TLabel;
    Label22: TLabel;
    Label27: TLabel;
    Label23: TLabel;
    PageControl2: TPageControl;
    TabSheet6: TTabSheet;
    TabSheet7: TTabSheet;
    ScrollBox1: TScrollBox;
    Panel2: TPanel;
    ScrollBox2: TScrollBox;
    StatusBar1: TStatusBar;
    CategoryPanelGroup1: TCategoryPanelGroup;
    CategoryPanel1: TCategoryPanel;
    Series2: TBarSeries;
    StringGrid2: TStringGrid;
    StatusBar2: TStatusBar;
    Chart3: TChart;
    Series3: TBarSeries;
    StringGrid3: TStringGrid;
    Chart4: TChart;
    Series4: TBarSeries;
    StringGrid4: TStringGrid;
    Chart5: TChart;
    Series5: TBarSeries;
    StringGrid5: TStringGrid;
    Button4: TButton;
    CategoryPanel2: TCategoryPanel;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    Button8: TButton;
    Button9: TButton;
    Button10: TButton;
    CategoryPanelGroup2: TCategoryPanelGroup;
    CategoryPanel3: TCategoryPanel;
    Button11: TButton;
    Button12: TButton;
    Button13: TButton;
    Button14: TButton;
    Button15: TButton;
    Herramientas: TCategoryPanel;
    QExport4XLS1: TQExport4XLS;
    Button16: TButton;
    Button17: TButton;
    Panel3: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    DateTimePicker1: TDateTimePicker;
    Label4: TLabel;
    CheckListBox2: TCheckListBox;
    CheckListBox1: TCheckListBox;
    Button1: TButton;
    Button2: TButton;
    Gauge1: TGauge;
    CancelBtn: TButton;
    OKBtn: TButton;
    DateTimePicker2: TDateTimePicker;
    Label5: TLabel;
    Panel6: TPanel;
    Image2: TImage;
    Image1: TImage;
    ComboBox1: TComboBox;
    Label24: TLabel;
    SpeedButton1: TSpeedButton;
    Panel7: TPanel;
    Label25: TLabel;
    Label26: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    Label30: TLabel;
    Label31: TLabel;
    Label32: TLabel;
    Label33: TLabel;
    Label34: TLabel;
    Label35: TLabel;
    Label36: TLabel;
    Label37: TLabel;
    Label38: TLabel;
    Label39: TLabel;
    Label40: TLabel;
    Label41: TLabel;
    Label42: TLabel;
    Memo2: TMemo;
    Panel8: TPanel;
    PageControl3: TPageControl;
    TabSheet8: TTabSheet;
    ScrollBox3: TScrollBox;
    StringGrid6: TStringGrid;
    StringGrid7: TStringGrid;
    StatusBar3: TStatusBar;
    StringGrid8: TStringGrid;
    CategoryPanelGroup3: TCategoryPanelGroup;
    CategoryPanel5: TCategoryPanel;
    Button22: TButton;
    Button23: TButton;
    Button24: TButton;
    TabSheet9: TTabSheet;
    ScrollBox4: TScrollBox;
    Chart6: TChart;
    Series6: TBarSeries;
    Chart7: TChart;
    Series7: TBarSeries;
    CategoryPanelGroup4: TCategoryPanelGroup;
    CategoryPanel6: TCategoryPanel;
    Button27: TButton;
    CategoryPanel7: TCategoryPanel;
    Button29: TButton;
    Button30: TButton;
    QExport4XLS2: TQExport4XLS;
    Panel9: TPanel;
    Label43: TLabel;
    Label44: TLabel;
    Label45: TLabel;
    Label46: TLabel;
    Label47: TLabel;
    Label48: TLabel;
    Label49: TLabel;
    Label50: TLabel;
    Label51: TLabel;
    Label52: TLabel;
    Label53: TLabel;
    Label54: TLabel;
    Label55: TLabel;
    Label56: TLabel;
    Label57: TLabel;
    Label58: TLabel;
    Label59: TLabel;
    Memo3: TMemo;
    PageControl4: TPageControl;
    TabSheet10: TTabSheet;
    ScrollBox5: TScrollBox;
    StringGrid9: TStringGrid;
    StringGrid10: TStringGrid;
    StatusBar4: TStatusBar;
    StringGrid11: TStringGrid;
    CategoryPanelGroup5: TCategoryPanelGroup;
    CategoryPanel9: TCategoryPanel;
    Button32: TButton;
    Button33: TButton;
    Button34: TButton;
    TabSheet11: TTabSheet;
    ScrollBox6: TScrollBox;
    Chart8: TChart;
    Chart9: TChart;
    Series10: TBarSeries;
    CategoryPanelGroup6: TCategoryPanelGroup;
    CategoryPanel10: TCategoryPanel;
    Button35: TButton;
    CategoryPanel11: TCategoryPanel;
    Button36: TButton;
    Button37: TButton;
    Button38: TButton;
    Series9: TBarSeries;
    Series8: TBarSeries;
    Chart10: TChart;
    Series11: TBarSeries;
    Chart11: TChart;
    Series12: TBarSeries;
    Chart12: TChart;
    Series13: TBarSeries;
    Chart14: TChart;
    Series15: TBarSeries;
    Chart13: TChart;
    Series14: TBarSeries;
    QExport4XLS3: TQExport4XLS;
    Button39: TButton;
    Button40: TButton;
    Button41: TButton;
    Button42: TButton;
    CategoryPanel12: TCategoryPanel;
    Button43: TButton;
    Button44: TButton;
    Button45: TButton;
    Button46: TButton;
    CategoryPanel4: TCategoryPanel;
    Button18: TButton;
    Button19: TButton;
    Button20: TButton;
    Button21: TButton;
    Panel10: TPanel;
    JvRollOut1: TJvRollOut;
    Button25: TButton;
    CategoryPanelGroup7: TCategoryPanelGroup;
    CategoryPanel8: TCategoryPanel;
    Memo4: TMemo;
    procedure FormCreate(Sender: TObject);
    procedure OKBtnClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    //procedure RESTRequest3AfterExecute(Sender: TCustomRESTRequest);
    //procedure RESTRequest1AfterExecute(Sender: TCustomRESTRequest);
    //procedure RESTRequest2AfterExecute(Sender: TCustomRESTRequest);
    procedure TabSheet2Show(Sender: TObject);
    procedure PageControl1DrawTab(Control: TCustomTabControl; TabIndex: Integer;
      const Rect: TRect; Active: Boolean);
    procedure PageControl1Change(Sender: TObject);
    //function SegToFormatHour(Segundos: Integer): String;
    procedure Button3Click(Sender: TObject);
    //procedure Button3Click(Grid: TStringGrid);

    procedure StringGrid1DrawCell(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
    //procedure RESTRequest4AfterExecute(Sender: TCustomRESTRequest);
    procedure TabSheet1Show(Sender: TObject);
    procedure StringGrid1MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    //procedure RESTRequest5AfterExecute(Sender: TCustomRESTRequest);
    //procedure RESTRequest6AfterExecute(Sender: TCustomRESTRequest);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure OKRightDlgFind(Sender: TObject);
    procedure Button10Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure CheckListBox1ClickCheck(Sender: TObject);
    //procedure CheckListBox2ClickCheck(Sender: TObject);
    procedure Button16Click(Sender: TObject);
    procedure Button17Click(Sender: TObject);
    procedure CancelBtnClick(Sender: TObject);
    procedure Panel4Resize(Sender: TObject);
    procedure Panel3Resize(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure TabSheet3Show(Sender: TObject);
    procedure Button21Click(Sender: TObject);
    procedure Button27Click(Sender: TObject);
    procedure TabSheet4Show(Sender: TObject);
    procedure Button31Click(Sender: TObject);
    procedure Button25Click(Sender: TObject);
    procedure StringGrid5Click(Sender: TObject);
    procedure limpiarDatos(Sender: TObject);
    procedure Button35Click(Sender: TObject);
  private
    { Private declarations }
    TabAnterior: integer;  // Control del PageControl
    StrGrid: TAssoc;
    Grid, Grid1, Grid2, Grid3: TStringGrid;
    Chart_1, Chart_2, Chart_3: TChart;
    pagina: TWinControl;
    query: string;
    Error: string;
    ColumnGrid: TAssoc;
    //colas, agentes: TAssoc;
    //abandoned: integer;
  public
    { Public declarations }
    //Theme: string;
    Fila: integer;
    queue: string;
    agent: string;
    start: string;
    end_: string;
    queue1: Tstringlist;
    agent1: TStringlist;
    agentes: array of string;
    colas: array of string;
    procedure AppException(Sender: TObject; E: Exception);
  end;

var
  Form1: TForm1;

implementation

uses datamodule, Clipbrd, FmDB, TabGraficosAtendidas, TabGraficosNoAtendidas,
  TabGraficosDistribuidas;


{$R *.dfm}

procedure TForm1.Button10Click(Sender: TObject);
begin
  OKRightDlgFind(Sender);
end;

procedure TForm1.Button16Click(Sender: TObject);
begin
  //Path := ExtractfilePath(Application.ExeName);
  QExport4XLS1.FileName := Path + '\Atendidas.xls';
  QExport4XLS1.Sheets[0].Exported := true;
  QExport4XLS1.Execute;
end;

procedure TForm1.Button17Click(Sender: TObject);
begin
  Application.CreateForm(TPagesDlg, PagesDlg);
  PagesDlg.Show;
end;

procedure TForm1.Button1Click(Sender: TObject);
var
  i: integer;
begin
  for i := 0 to checklistbox1.Items.Count -1 do
    checklistbox1.Checked[i] := button1.Caption = 'Marcar Todos';

  if button1.Caption = 'Desmarcar Todos' then
    button1.Caption := 'Marcar Todos'
  else
    button1.Caption := 'Desmarcar Todos';

end;

procedure TForm1.Button21Click(Sender: TObject);
begin
  //Path := ExtractfilePath(Application.ExeName);
  QExport4XLS2.FileName := Path + '\Sin_Atender.xls';
  QExport4XLS2.Sheets[0].Exported := true;
  QExport4XLS2.Execute;
end;

procedure TForm1.Button25Click(Sender: TObject);
begin
  while True do
    try
      datamodule2.RestRequest00.Execute;
    finally
      if Pos('Error', Memo4.Lines.Text) <> 0 then
        if MessageDlg('Error Abriendo fichero de Log de Asterisk' + #13'Reintentar?', mtError, [mbYes, mbNo], 0) <> mrYes then Abort;
    end;
    query := 'SELECT UPDATE_TIME';
    query := query+' FROM  information_schema.tables';
    query := query+' WHERE TABLE_SCHEMA = "qstats"';
    query := query+' AND TABLE_NAME = "queue_stats"';

    datamodule2.RestRequest0.Params.ParameterByName('action').Value := 'select_all';
    datamodule2.RestRequest0.Params.ParameterByName('clase').Value := 'rep_dbsel';
    datamodule2.RestRequest0.Params.ParameterByName('valor').Value := query;
    try
      datamodule2.RestRequest0.Execute;
    except
      on E: Exception do
      begin
        ShowMessage(E.ClassName);
      end;
    end;
end;

procedure TForm1.Button27Click(Sender: TObject);
begin
  Application.CreateForm(TPagesDlg1, PagesDlg1);
  PagesDlg1.Show;
end;

procedure TForm1.Button2Click(Sender: TObject);
var
  i:integer;
begin
  for i := 0 to checklistbox2.Items.Count -1 do
    checklistbox2.Checked[i] := button2.Caption = 'Marcar Todos';

  if button2.Caption = 'Desmarcar Todos' then
    button2.Caption := 'Marcar Todos'
  else
    button2.Caption := 'Desmarcar Todos';

end;

// Copiar Fila StringGrid portapapeles ********************************************

procedure TForm1.Button31Click(Sender: TObject);
begin
  //Path := ExtractfilePath(Application.ExeName);
  QExport4XLS3.FileName := Path + '\Distribucion.xls';
  QExport4XLS3.Sheets[0].Exported := true;
  QExport4XLS3.Execute;
end;

procedure TForm1.Button35Click(Sender: TObject);
begin
  Application.CreateForm(TPagesDlg2, PagesDlg2);
  PagesDlg2.Show;
end;

procedure TForm1.Button3Click(Sender: TObject);
var
  i, j:Integer;
  Str:String;
label
  TheEnd;
begin

  // Inicializamos
  Str := '';
  // Para cada l�nea de las selecciondas
  //For h := 0 to ComponentCount - 1 do
  //begin
    //if (FindComponent('StringGrid' + IntToStr(h)) is TStringGrid) then
    //begin
      //with TStringGrid(FindComponent('StringGrid' + IntToStr(h))) do
      with Grid do
      begin

        for i := (Selection.Top) to (Selection.Bottom) do begin
          // Si no es la 1� linea, a�adimos un salto de l�nea
          if (i <> Selection.Top) then begin
            Str := Str + #13#10;
          end;
          // Para cada elemento dentro de la l�nea (celdas)
          for j := 0 to (Rows[i].Count - 1) do begin
            // Si no es la primera celda, a�adimos un separados
            if (j <> 0) then begin
              Str := Str + ';';
            end;
            // Construimos la cadena
            Str := Str + Rows[i].Strings[j];
          end;
          // La guardamos en el clipboard (como texto)
          Clipboard.AsText := Str
        end;
        MessageDlg('El contenido de la/s celda/s se ha copiado al portapapeles de windows', mtInformation, [mbOK], 0);
        goto TheEnd;

      end;
    //end;
  //end;
TheEnd:
end;

procedure TForm1.Button4Click(Sender: TObject);
begin
  pagina:=TButton(Sender).Parent;
  pagina:=pagina.Parent;
  pagina:=pagina.Parent;
  pagina:=pagina.Parent;
  {
  pagina:=pagina.Parent;
  pagina:=pagina.Parent;
  pagina:=pagina.Parent;
  }
  Application.CreateForm(TOKRightDlg, OKRightDlg);
  OKRightDlg.ShowModal;
  //ShowWindow(OKRightDlg.Handle, SW_SHOWMINNOACTIVE);
end;

procedure TForm1.Button5Click(Sender: TObject);
var
  h: integer;
begin

  For h := 0 to ComponentCount - 1 do
  begin
    if (FindComponent('StringGrid' + IntToStr(h)) is TStringGrid) then
    begin
      with TStringGrid(FindComponent('StringGrid' + IntToStr(h))) do
      begin
          AnimateWindow(Handle, 500, AW_HOR_NEGATIVE or  AW_HIDE);
          //Visible := False;
      end;
    end;

    if (FindComponent('Scrollbox' + IntToStr(h)) is TScrollbox) then
    begin
      with TScrollbox(FindComponent('Scrollbox' + IntToStr(h))) do
        VertScrollBar.Position := 0;
    end;
  end;

  with TStringGrid(FindComponent('StringGrid' + IntToStr(TButton(Sender).Tag))) do
  begin
    SendMessage(Handle, WM_SETREDRAW, WPARAM(False), 0);
    try
      AnimateWindow(Handle, 500, AW_HOR_POSITIVE or AW_SLIDE or  AW_ACTIVATE);
    finally
      Visible := True;
      SendMessage(Handle, WM_SETREDRAW, WPARAM(True), 0);
      RedrawWindow( Handle, nil, 0, RDW_ERASE or RDW_FRAME or RDW_INVALIDATE or RDW_ALLCHILDREN );
    end;
  end;

  if PageControl1.ActivePage = TabSheet2 then
  begin
    Grid1 := TStringGrid(FindComponent('StringGrid'+ IntToStr(TButton(Sender).Tag)));
    StatusBar2.Panels[0].Text := Grid1.Hint;
  end
  else if PageControl1.ActivePage = TabSheet3 then
  begin
    Grid2 := TStringGrid(FindComponent('StringGrid'+ IntToStr(TButton(Sender).Tag)));
    StatusBar3.Panels[0].Text := Grid2.Hint;
  end
  else if PageControl1.ActivePage = TabSheet4 then
  begin
    Grid3 := TStringGrid(FindComponent('StringGrid'+ IntToStr(TButton(Sender).Tag)));
    StatusBar4.Panels[0].Text := Grid3.Hint;
  end;

end;

procedure TForm1.Button6Click(Sender: TObject);
var
  h: integer;
begin

  For h := 0 to ComponentCount - 1 do
  begin
    if (FindComponent('Chart' + IntToStr(h)) is TChart) then
    begin
      with TChart(FindComponent('Chart' + IntToStr(h))) do
      begin
          AnimateWindow(Handle, 500, AW_HOR_NEGATIVE or  AW_HIDE);
          //Visible := False;
      end;
    end;

    if (FindComponent('Chart' + IntToStr(h)) is TScrollbox) then
    begin
      with TScrollbox(FindComponent('Chart' + IntToStr(h))) do
        VertScrollBar.Position := 0;
    end;
  end;

  with TChart(FindComponent('Chart' + IntToStr(TButton(Sender).Tag))) do
  begin
    SendMessage(Handle, WM_SETREDRAW, WPARAM(False), 0);
    try
      AnimateWindow(Handle, 500, AW_HOR_POSITIVE or AW_SLIDE or  AW_ACTIVATE);
    finally
      Visible := True;
      SendMessage(Handle, WM_SETREDRAW, WPARAM(True), 0);
      RedrawWindow( Handle, nil, 0, RDW_ERASE or RDW_FRAME or RDW_INVALIDATE or RDW_ALLCHILDREN );
    end;
  end;

  if PageControl1.ActivePage = TabSheet2 then
    Chart_1 := TChart(FindComponent('Chart' + IntToStr(TButton(Sender).Tag)))
  else if PageControl1.ActivePage = TabSheet3 then
    Chart_2 := TChart(FindComponent('Chart' + IntToStr(TButton(Sender).Tag)))
  else if PageControl1.ActivePage = TabSheet4 then
    Chart_3 := TChart(FindComponent('Chart' + IntToStr(TButton(Sender).Tag)));

end;

procedure TForm1.CancelBtnClick(Sender: TObject);
begin
  Close;
end;


procedure TForm1.CheckListBox1ClickCheck(Sender: TObject);
var
  i, j: integer;
  queue1: Tstringlist;
begin
  StatusBar1.Panels[1].Text:=StatusBar1.Panels[1].Text+'Calculando...';
  Screen.Cursor:=crSQLWait;
  Application.ProcessMessages;
  Gauge1.Progress := 0;
  queue1:= TStringlist.Create;

  for i:=0 to CheckListBox1.Count-1 do
  begin
     if checklistbox1.Checked[i]=true then
       queue1.Add(QuotedStr(CheckListBox1.Items[i]));
  end;
  queue:=StringsToStr(queue1);

  if queue <> '' then
  begin

    datamodule2.selectagentes(Sender);

    Gauge1.MaxValue := Length(agentes);

    CheckListBox2.Clear;
    for j := 0 to Length(agentes) -1 do
    begin
      CheckListBox2.Items.Add(agentes[j]);
      CheckListBox2.CheckAll(cbChecked, false, true);
      Gauge1.Progress := j;
    end;

  end;

  Gauge1.Progress := 0;
  StatusBar1.Panels[1].Text:=StatusBar1.Panels[1].Text+'Correcto';
  Screen.Cursor:=crDefault;


end;
{
procedure TForm1.CheckListBox2ClickCheck(Sender: TObject);
var
  i, j: integer;
  queue1: Tstringlist;
begin
  StatusBar1.Panels[1].Text:=StatusBar1.Panels[1].Text+'Calculando...';
  Application.ProcessMessages;
  Gauge1.Progress := 0;
  queue1:= TStringlist.Create;

  for i:=0 to CheckListBox2.Count-1 do
  begin
     if checklistbox2.Checked[i]=true then
       queue1.Add(QuotedStr(CheckListBox2.Items[i]));
  end;
  agent:=StringsToStr(queue1);

  datamodule2.selectcolas(Sender);

  Gauge1.MaxValue := Length(colas);

  for j := 0 to Length(colas) -1 do
  begin
    for i:=0 to CheckListBox1.Count-1 do begin
     if checklistbox1.Items[i]=colas[j] then
       CheckListBox1.Checked[i]:=true;
     Gauge1.Progress := j;
    end;
  end;
  StatusBar1.Panels[1].Text:=StatusBar1.Panels[1].Text+'Correcto';

end;
}

procedure TForm1.ComboBox1Change(Sender: TObject);
begin
  Theme:=ComboBox1.Items[ComboBox1.ItemIndex];
  TStyleManager.TrySetStyle(ComboBox1.Items[ComboBox1.ItemIndex]);
end;

procedure TForm1.OKRightDlgFind(Sender: TObject);
var
  i, j, h :Integer;
  pagina1: Twincontrol;
label
  TheEnd;
begin
  For h := 0 to ComponentCount - 1 do
  begin
      if (FindComponent('StringGrid' + IntToStr(h)) is TStringGrid) then
      begin
        pagina1:=TStringGrid(FindComponent('StringGrid' + IntToStr(h))).Parent;
        if pagina1.Parent=pagina then
        begin
          with TStringGrid(FindComponent('StringGrid' + IntToStr(h))) do
          begin
            i := Fila;
            j := 0;
            while (i <= RowCount-1) do
            begin
              while (j <= ColCount -1) do
              begin
                if AnsiContainsText(Cells[j, i], OKRightDlg.Edit1.Text) then
                begin
                  Col := j;
                  Row := i;
                  SetFocus;
                  Fila := i+1;
                  goto TheEnd;
                end;
                inc(j);
              end;
              j := 0;
              Fila:=1;
              inc(i);
            end;
          end;
      end;
    end;
  end;
TheEnd:
end;

//*********************************************************************************************

procedure TForm1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  GuardarRegistroSistema(Form1);
  Application.Terminate;
end;


procedure TForm1.AppException(Sender: TObject; E: Exception);
begin
  log('Clase Excepcion: '+E.ClassName+' Mensaje:'+E.Message);
  //Error:='Hay Errores';
  if E is EAccessViolation then
  begin
    ShowMessage('Algun reporte NO contiene datos con este rango de Filtro');
    Error:='Algun reporte NO contiene datos con este rango de Filtro';
  end else
  begin
    Application.ShowException(E);
    Error:=E.Message;
  end;
  StatusBar1.Panels[1].Text:='Ultimas operaciones: '+Error;
  limpiarDatos(Sender);

  //Application.Terminate;
end;


procedure TForm1.FormCreate(Sender: TObject);
var
  Rec: LongRec;
begin

    Try
      Application.OnException := AppException;

      Error:='Correcto';
      CargarRegistroSistema(Form1);
      If not DirectoryExists(Path) then CreateDirectory(PChar(Path), 0);

      Datamodule2.RestClient1.BaseURL:=BasedeDatos;
      Datamodule2.RestClient2.BaseURL:=Parser;

      //Theme:=Form1.ComboBox1.Items[Form1.ComboBox1.ItemIndex];
      TStyleManager.TrySetStyle(Theme, false);

      StatusBar1.Panels[0].Text:='CONEXION CORRECTA';

      query := 'SELECT UPDATE_TIME';
      query := query+' FROM  information_schema.tables';
      query := query+' WHERE TABLE_SCHEMA = "qstats"';
      query := query+' AND TABLE_NAME = "queue_stats"';

      datamodule2.RestRequest0.Params.ParameterByName('action').Value := 'select_all';
      datamodule2.RestRequest0.Params.ParameterByName('clase').Value := 'rep_dbsel';
      datamodule2.RestRequest0.Params.ParameterByName('valor').Value := query;
      datamodule2.RestRequest0.Execute;

      Rec := LongRec(GetFileVersion(ParamStr(0)));
      Caption := Caption + Format('%d.%d', [Rec.Hi, Rec.Lo]);
      JvRollOut1.Collapsed:=True;
      //CategoryPanel8.Collapsed:=True;
      ColumnGrid := TAssoc.Create(False);

      Application.ShowHint:=True;

      limpiarDatos(Sender);

      //DateTimePicker1.Format:='yyyy/MM/dd';
      DateTimePicker1.DateTime:=Now;
      //DateTimePicker1.Time:=Time;
      //DateTimePicker2.Format:='yyyy/MM/dd';
      DateTimePicker2.DateTime:=Now;
      //DateTimePicker2.Time:=Time;

      datamodule2.crea(Sender);
    Except
      StatusBar1.Panels[0].Text:='ERROR: No se puede conectar al servidor...';
      //ShowMessage('No se puede conectar el servidor...');
    End;

end;

procedure TForm1.limpiarDatos(Sender: TObject);
var
  i, h, j: integer;
begin
    if ColumnGrid.All <> nil then
      ColumnGrid.Clear;

    For h := ComponentCount - 1 downto 0 do
    begin
      if (FindComponent('StringGrid' + IntToStr(h)) is TStringGrid) then
      begin
        with TStringGrid(FindComponent('StringGrid' + IntToStr(h))) do
        begin
          for I := 0 to RowCount - 1 do
            Rows[i].Clear;

          RowCount:=2;
          Align:=alClient;
          Visible:=False;
          ShowHint:=True;
          Font.Color := clBlack;
          Font.Style := [];
          ColumnGrid[Name].Val := -1;
        end;
      end;

      if (FindComponent('Chart' + IntToStr(h)) is TChart) then
      begin
        with TChart(FindComponent('Chart' + IntToStr(h))) do
        begin
          //Clear;
          Align:=alClient;
          Visible:=False;
          AutoSize:=True;
          Zoom.Allow:=False;
          AllowPanning:=pmNone;
        end;
      end;

      if (FindComponent('Scrollbox' + IntToStr(h)) is TScrollbox) then
      begin
        with TScrollbox(FindComponent('Scrollbox' + IntToStr(h))) do
          VertScrollBar.Position := 0;
      end;

    end;

    TabAnterior:=0;   // Control del PageControl *****************************************
    PageControl1.ActivePage:=TabSheet1;
    PageControl2.ActivePage:=TabSheet6;
    PageControl3.ActivePage:=TabSheet8;
    PageControl4.ActivePage:=TabSheet10;
    TabSheet2.Enabled:=false;
    TabSheet3.Enabled:=false;
    TabSheet4.Enabled:=false;
    //TabSheet5.Enabled:=false;

    Grid1 := StringGrid1;
    StatusBar2.Panels[0].Text := Grid1.Hint;
    Grid1.Visible := True;
    //Grid1.Align := alClient;
    Chart_1 := Chart1;
    Chart_1.Visible:=True;

    Grid2 := StringGrid6;
    Grid2.Visible := True;
    //Grid2.Align := alClient;
    Chart_2 := Chart6;
    Chart_2.Visible:=True;

    Grid3 := StringGrid9;
    Grid3.Visible := True;
    //Grid3.Align := alClient;
    Chart_3 := Chart8;
    Chart_3.Visible:=True;

end;

procedure TForm1.FormShow(Sender: TObject);
var
  s: String;
begin
  ComboBox1.Items.BeginUpdate;
  try
    ComboBox1.Items.Clear;
    for s in TStyleManager.StyleNames do
       ComboBox1.Items.Add(s);
    ComboBox1.Sorted := True;
    // Select the style that's currently in use in the combobox
    ComboBox1.ItemIndex := ComboBox1.Items.IndexOf(TStyleManager.ActiveStyle.Name);
  finally
    ComboBox1.Items.EndUpdate;
  end;

end;

procedure TForm1.OKBtnClick(Sender: TObject);
var
  i:integer;
begin

  //SetLength(queue, CheckListBox1.Count);
  //SetLength(agent, CheckListBox2.Count);

  //Gauge1.Progress := 0;

  limpiarDatos(Sender);

  queue1:= TStringlist.Create;
  agent1:= TStringlist.Create;

  for i:=0 to CheckListBox1.Count-1 do
  begin
     if checklistbox1.Checked[i]=true then
       queue1.Add(QuotedStr(CheckListBox1.Items[i]));
  end;
  queue:=StringsToStr(queue1);

  for i:=0 to CheckListBox2.Count-1 do
  begin
     if checklistbox2.Checked[i]=true then
       agent1.Add(QuotedStr(CheckListBox2.Items[i]));
  end;
  agent:=StringsToStr(agent1);

  //DateTimePicker1.Format:='dd/MM/yyyy';
  //DateTimePicker2.Format:='yyyy-MM-dd';

  DateTimeToString(start, 'yyyy-MM-dd', DateTimePicker1.Date);
  //start:=QuotedStr(StringReplace(StringReplace(start,'/','-',[rfReplaceAll]),'(','',[rfReplaceAll]));
  start:=QuotedStr(start);
  //end_ :=QuotedStr(DateTimeToStr(DateTimePicker2.Date));
  DateTimeToString(end_, 'yyyy-MM-dd', DateTimePicker2.Date);
  //end_:=QuotedStr(StringReplace(StringReplace(end_,'/','-',[rfReplaceAll]),'(','',[rfReplaceAll]));
  end_:=QuotedStr(end_+' 23:59:59');
  //ParamByName('xFecha').AsDate := DateTimePicker1.Date;

  StatusBar1.Panels[1].Text:='Calculando...';
  Screen.Cursor:=crSQLWait;
  Application.ProcessMessages;
  try
    datamodule2.selects(Sender);
  finally
    Screen.Cursor:=crDefault;
    StatusBar1.Panels[1].Text:='Ultimas operaciones: '+Error;
    TabSheet2.Enabled:=true;
    TabSheet3.Enabled:=true;
    TabSheet4.Enabled:=true;
    //TabSheet5.Enabled:=true;

    PageControl1.ActivePageIndex:=1;

    Gauge1.Progress := 0;
  end;

end;

// Control del PageControl  *****************************************************
procedure TForm1.PageControl1Change(Sender: TObject);
begin
  if not (PageControl1.ActivePage.Enabled) then
  begin
    PageControl1.ActivePageIndex := TabAnterior;
  end
  else begin
    TabAnterior := PageControl1.ActivePageIndex;
  end;
end;

procedure TForm1.PageControl1DrawTab(Control: TCustomTabControl;
  TabIndex: Integer; const Rect: TRect; Active: Boolean);
var
  R,R2: TRect;
  Texto,Texto2: String;
begin

  if not (PageControl1.Pages[TabIndex].Enabled) then
    Control.Canvas.Font.Color := clGrayText;
  Texto2 := PageControl1.Pages[TabIndex].Caption;
  R2 := Rect;
  Control.Canvas.FillRect(R2);
  if not Active then
    InflateRect(R2, 0, -3);

  if Active then
    Control.Canvas.Font.Color := clBlue;
  Texto := PageControl1.Pages[TabIndex].Caption;
  R := Rect;
  Control.Canvas.FillRect(R);
  if not Active then
    InflateRect(R, 0, -3);

  DrawText(Control.Canvas.Handle, PChar(Texto2), -1, R,
  DT_SINGLELINE or DT_CENTER or DT_VCENTER);
  DrawText(Control.Canvas.Handle, PChar(Texto), -1, R2,
  DT_SINGLELINE or DT_CENTER or DT_VCENTER);
end;

procedure TForm1.Panel3Resize(Sender: TObject);
begin
  Panel6.Left := (Panel3.Width div 2) - (Panel6.Width div 2); // asi va al centro horizontal
  Panel6.Top := (Panel3.Height div 2) - (Panel6.Height div 2); // asi verticalmente
end;

procedure TForm1.Panel4Resize(Sender: TObject);
begin
  Panel5.Left := (Panel4.Width div 2) - (Panel5.Width div 2); // asi va al centro horizontal
  Panel5.Top := (Panel4.Height div 2) - (Panel5.Height div 2); // asi verticalmente
end;
// Fin control del PageControl ******************************************************


// Control del StringGrid ***********************************************************
procedure TForm1.StringGrid1DrawCell(Sender: TObject; ACol, ARow: Integer;
  Rect: TRect; State: TGridDrawState);
var
  sTexto: String;           // Texto que va a imprimir en la celda actual
  Alineacion: TAlignment;   // Alineaci�n que le vamos a dar al texto
  iAnchoTexto: Integer;     // Ancho del texto a imprimir en pixels
begin
  with TStringGrid(Sender).Canvas do
  begin
    // Lo primero es coger la fuente por defecto que le hemos asignado al componente
    Font.Name := Font.Name;
    Font.Size := Font.Size;


    //TStringGrid(Sender).DefaultRowHeight:= 24;
    TStringGrid(Sender).RowHeights[0]:= 35;


    if ARow = 0 then begin
      Alineacion := taCenter;
    end
    else
    begin
      // Si es la columna del importe pendiente alineamos el texto a la derecha


      if (ACol <> 0) then
        Alineacion := taRightJustify
      else
        Alineacion := taLeftJustify;

    end;

    // �Es una celda fija de s�lo lectura?
    if gdFixed in State then
    begin
      Brush.Color := clNavy;      // le ponemos azul de fondo
      Font.Color := clWhite;      // fuente blanca
      Font.Style := [fsBold];    // y negrita
    end
    else
    begin
      // �Esta enfocada la celda?

      if gdFocused in State then
      begin
        Brush.Color := clRed;     // fondo rojo
        Font.Color := clWhite;    // fuente blanca
        Font.Style := [fsBold];   // y negrita
      end
      else
      begin
        // Para el resto de celdas el fondo lo ponemos blanco
        Brush.Color := clWindow;

        // �Es la columna del importe pendiente?

        if (ACol = ColumnGrid[TStringGrid(Sender).Name].Val) then
        begin
          Font.Color := clGreen;   // la pintamos de azul
          Font.Style := [fsBold];  // y negrita
          Alineacion := taRightJustify;
        end
        else
        begin

          Font.Color := clBlack;
          Font.Style := [];
        end;
      end;
    end;

    sTexto := TStringGrid(Sender).Cells[ACol,ARow];
    FillRect( Rect );
    iAnchoTexto := TextWidth( sTexto );

    case Alineacion of
      taLeftJustify: TextOut( Rect.Left + 5, Rect.Top + 2, sTexto );
      taCenter: TextOut( Rect.Left + ( ( Rect.Right - Rect.Left ) - iAnchoTexto ) div 2, Rect.Top + 2, sTexto );
      taRightJustify: TextOut( Rect.Right - iAnchoTexto - 2, Rect.Top + 2, sTexto );
    end;
  end;
end;

procedure TForm1.StringGrid1MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  //edit2.Text:=inttostr(x);
  //edit3.Text:=inttostr(y);
  Grid := TStringGrid(Sender);
  with TStringGrid(Sender)
  do begin
    if Y <= RowHeights[0]
    then begin
      ColumnGrid[TStringGrid(Sender).Name].Val:= x div (DefaultColWidth+GridLineWidth);
      //if C<=1 then
        SortStringGrid(TStringGrid(Sender),ColumnGrid[TStringGrid(Sender).Name].Val, StrGrid[TStringGrid(Sender).Name][ColumnGrid[TStringGrid(Sender).Name].Val].Val); //gdInteger)
      //else
        //SortStringGrid(TStringGrid(Sender),C, gdTime);
      //Sortgrid(TStringGrid(Sender),C);
      marcaordGrid(TStringGrid(Sender),ColumnGrid[TStringGrid(Sender).Name].Val);
    end;
  end;
end;

procedure TForm1.StringGrid5Click(Sender: TObject);
begin

end;

// ************************************************************************

procedure TForm1.TabSheet1Show(Sender: TObject);
begin
  //Form1.VertScrollBar.Range:=0;
  DateTimePicker1.Format:='dd/MM/yyyy';
  DateTimePicker2.Format:='dd/MM/yyyy';
end;

procedure TForm1.TabSheet2Show(Sender: TObject);
begin
  //Form1.VertScrollBar.Position:=0;
  //Form1.VertScrollBar.Range:=2000;

  Memo1.Text:=queue;
  label12.Caption:=start;
  label13.Caption:=end_;
  label14.Caption:=IntToStr(DaysBetween(DateTimePicker1.Date, DateTimePicker2.Date))+ ' D�as';
  with datamodule2 do
  begin
    label19.Caption:=IntToStr(total_calls)+ ' Llamadas';
    label20.Caption:=IntToStr(transferidas)+ ' Llamadas';
    label21.Caption:=IntToStr(Round(average_duration))+ ' Segs.';
    label22.Caption:=total_duration_print+ ' Horas' ;
    label23.Caption:=IntToStr(Round(average_hold))+ ' Segs.';
  end;

  Grid1.Visible := True;
  StatusBar2.Panels[0].Text := Grid1.Hint;
  Chart_1.Visible := True;


  StrGrid := TAssoc.Create(False);

  with StringGrid1 do
  begin
    Cells[0, 0] := 'NOMBRE';
    Cells[1, 0] := 'LLAMADAS';
    Cells[2, 0] := '% LLAMADAS';
    Cells[3, 0] := 'TIEMPO LLAMADAS';
    Cells[4, 0] := '% TIEMPO';
    Cells[5, 0] := 'MEDIA TIEMPO';
    Cells[6, 0] := 'T. EN ESPERA';
    Cells[7, 0] := 'MEDIA T. EN ESPERA';
    StrGrid[Name][0].Val:=gdString;
    StrGrid[Name][1].Val:=gdInteger;
    StrGrid[Name][2].Val:=gdFloat;
    StrGrid[Name][3].Val:=gdTime;
    StrGrid[Name][4].Val:=gdFloat;
    StrGrid[Name][5].Val:=gdTime;
    StrGrid[Name][6].Val:=gdTime;
    StrGrid[Name][7].Val:=gdTime;
  end;

  with StringGrid2 do
  begin
    Cells[0, 0] := 'RESPONDIDAS';
    Cells[1, 0] := 'N. LLAMADAS';
    Cells[2, 0] := 'DELTA';
    Cells[3, 0] := ' % ';
    StrGrid[Name][0].Val:=gdInteger;
    StrGrid[Name][1].Val:=gdInteger;
    StrGrid[Name][2].Val:=gdInteger;
    StrGrid[Name][3].Val:=gdFloat;
  end;

  with StringGrid3 do
  begin
    Cells[0, 0] := 'COLA';
    Cells[1, 0] := 'N. LLAMADAS';
    Cells[2, 0] := ' % ';
    StrGrid[Name][0].Val:=gdInteger;
    StrGrid[Name][1].Val:=gdInteger;
    StrGrid[Name][2].Val:=gdFloat;
  end;

  with StringGrid4 do
  begin
    Cells[0, 0] := 'CAUSA';
    Cells[1, 0] := 'NUMERO';
    Cells[2, 0] := ' % ';
    StrGrid[Name][0].Val:=gdString;
    StrGrid[Name][1].Val:=gdInteger;
    StrGrid[Name][2].Val:=gdFloat;
  end;

  with StringGrid5 do
  begin
    Cells[0, 0] := 'AGENTE';
    Cells[1, 0] := ' A ';
    Cells[2, 0] := 'NUMERO';
    StrGrid[Name][0].Val:=gdString;
    StrGrid[Name][1].Val:=gdString;
    StrGrid[Name][2].Val:=gdInteger;
  end;

  //StrGrid.Clear;

  {
  for i := 0 to TabSheet1.ComponentCount do
  begin
    if (FindComponent('StringGrid' + IntToStr(i)) is TStringGrid) then
    begin
      StrGrid.['StringGrid'Str(i)]
    end;
  end;
  }


  Series1.Repaint;
  Series2.Repaint;
  Series3.Repaint;
  Series4.Repaint;
  Series5.Repaint;

end;


procedure TForm1.TabSheet3Show(Sender: TObject);
begin
  Memo2.Text:=queue;
  label31.Caption:=start;
  label32.Caption:=end_;
  label33.Caption:=IntToStr(DaysBetween(DateTimePicker1.Date, DateTimePicker2.Date))+ ' D�as';

  with datamodule2 do
  begin
    label36.Caption:=IntToStr(total_abandon)+ ' Llamadas';
    label38.Caption:=FloatToStrF(abandon_average_hold, ffNumber, 10, 0)+ ' Llamadas';
    label40.Caption:=FloatToStr(abandon_average_end)+ ' Llamadas';
    label42.Caption:=IntToStr(abandon_average_start)+ ' Llamadas';

  end;

  Grid2.Visible := True;
  StatusBar3.Panels[0].Text := Grid2.Hint;
  Chart_2.Visible := True;


  with StringGrid6 do
  begin
    Cells[0, 0] := 'COLA';
    Cells[1, 0] := 'LLAMANTE';
    Cells[2, 0] := 'COM. POSICION';
    Cells[3, 0] := 'FIN POSICION';
    Cells[4, 0] := 'T. ESPERA';
    Cells[5, 0] := 'FECHA Y HORA';
    Cells[6, 0] := 'ESTADO';
    StrGrid[Name][0].Val:=gdInteger;
    StrGrid[Name][1].Val:=gdString;
    StrGrid[Name][2].Val:=gdInteger;
    StrGrid[Name][3].Val:=gdInteger;
    StrGrid[Name][4].Val:=gdInteger;
    StrGrid[Name][5].Val:=gdString;
    StrGrid[Name][6].Val:=gdString;
  end;

  with StringGrid7 do
  begin
    Cells[0, 0] := 'CAUSA';
    Cells[1, 0] := 'NUMERO';
    Cells[2, 0] := ' % ';
    StrGrid[Name][0].Val:=gdString;
    StrGrid[Name][1].Val:=gdInteger;
    StrGrid[Name][2].Val:=gdFloat;
  end;

  with StringGrid8 do
  begin
    Cells[0, 0] := 'COLA';
    Cells[1, 0] := 'NUMERO';
    Cells[2, 0] := ' % ';
    StrGrid[Name][0].Val:=gdInteger;
    StrGrid[Name][1].Val:=gdInteger;
    StrGrid[Name][2].Val:=gdFloat;
  end;

  end;

procedure TForm1.TabSheet4Show(Sender: TObject);
begin
  Memo3.Text:=queue;
  label48.Caption:=start;
  label49.Caption:=end_;
  label50.Caption:=IntToStr(DaysBetween(DateTimePicker1.Date, DateTimePicker2.Date))+ ' D�as';

  with datamodule2 do
  begin
    label53.Caption:=IntToStr(answered)+ ' Llamadas';
    label55.Caption:=IntToStr(unanswered)+ ' Llamadas';
    label57.Caption:=IntToStr(login);
    label59.Caption:=IntToStr(logoff);
  end;

  Grid3.Visible := True;
  StatusBar4.Panels[0].Text := Grid3.Hint;
  Chart_3.Visible := True;

  with StringGrid9 do
  begin
    Cells[0, 0] := 'FECHA';
    Cells[1, 0] := 'RESPONDIDAS';
    Cells[2, 0] := '% RESP.';
    Cells[3, 0] := 'NO RESPONDIDAS';
    Cells[4, 0] := '% NO RESP.';
    Cells[5, 0] := 'MEDIA DURACION';
    Cells[6, 0] := 'MEDIA ESPERA';
    Cells[7, 0] := 'LOGIN';
    Cells[8, 0] := 'LOGOFF';
    StrGrid[Name][0].Val:=gdString;
    StrGrid[Name][1].Val:=gdInteger;
    StrGrid[Name][2].Val:=gdFloat;
    StrGrid[Name][3].Val:=gdInteger;
    StrGrid[Name][4].Val:=gdFloat;
    StrGrid[Name][5].Val:=gdTime;
    StrGrid[Name][6].Val:=gdTime;
    StrGrid[Name][7].Val:=gdInteger;
    StrGrid[Name][8].Val:=gdInteger;
  end;

  with StringGrid10 do
  begin
    Cells[0, 0] := 'HORA';
    Cells[1, 0] := 'RESPONDIDAS';
    Cells[2, 0] := '% RESP.';
    Cells[3, 0] := 'NO RESPONDIDAS';
    Cells[4, 0] := '% NO RESP.';
    Cells[5, 0] := 'MEDIA DURACION';
    Cells[6, 0] := 'MEDIA ESPERA';
    Cells[7, 0] := 'LOGIN';
    Cells[8, 0] := 'LOGOFF';
    StrGrid[Name][0].Val:=gdInteger;
    StrGrid[Name][1].Val:=gdInteger;
    StrGrid[Name][2].Val:=gdFloat;
    StrGrid[Name][3].Val:=gdInteger;
    StrGrid[Name][4].Val:=gdFloat;
    StrGrid[Name][5].Val:=gdTime;
    StrGrid[Name][6].Val:=gdTime;
    StrGrid[Name][7].Val:=gdInteger;
    StrGrid[Name][8].Val:=gdInteger;
  end;

  with StringGrid11 do
  begin
    Cells[0, 0] := 'DIA';
    Cells[1, 0] := 'RESPONDIDAS';
    Cells[2, 0] := '% RESP.';
    Cells[3, 0] := 'NO RESPONDIDAS';
    Cells[4, 0] := '% NO RESP.';
    Cells[5, 0] := 'MEDIA DURACION';
    Cells[6, 0] := 'MEDIA ESPERA';
    Cells[7, 0] := 'LOGIN';
    Cells[8, 0] := 'LOGOFF';
    StrGrid[Name][0].Val:=gdString;
    StrGrid[Name][1].Val:=gdInteger;
    StrGrid[Name][2].Val:=gdFloat;
    StrGrid[Name][3].Val:=gdInteger;
    StrGrid[Name][4].Val:=gdFloat;
    StrGrid[Name][5].Val:=gdTime;
    StrGrid[Name][6].Val:=gdTime;
    StrGrid[Name][7].Val:=gdInteger;
    StrGrid[Name][8].Val:=gdInteger;
  end;

end;

end.
