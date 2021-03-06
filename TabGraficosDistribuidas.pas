unit TabGraficosDistribuidas;

interface

uses Winapi.Windows, System.SysUtils, System.Classes, Vcl.Graphics, Vcl.Forms,
  Vcl.Controls, Vcl.StdCtrls, Vcl.Buttons, Vcl.ComCtrls, Vcl.ExtCtrls,
  VclTee.TeeGDIPlus, VCLTee.Series, VCLTee.TeEngine, VCLTee.TeeProcs,
  VCLTee.Chart;

type
  TPagesDlg2 = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    PageControl1: TPageControl;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    OKBtn: TButton;
    Button1: TButton;
    Panel4: TPanel;
    Panel5: TPanel;
    Button2: TButton;
    Chart1: TChart;
    BarSeries2: TBarSeries;
    PieSeries2: TPieSeries;
    TabSheet1: TTabSheet;
    TabSheet4: TTabSheet;
    TabSheet5: TTabSheet;
    TabSheet6: TTabSheet;
    TabSheet7: TTabSheet;
    Chart5: TChart;
    BarSeries3: TBarSeries;
    Chart6: TChart;
    BarSeries4: TBarSeries;
    Chart7: TChart;
    BarSeries5: TBarSeries;
    Chart8: TChart;
    BarSeries6: TBarSeries;
    Chart9: TChart;
    BarSeries7: TBarSeries;
    PieSeries3: TPieSeries;
    PieSeries4: TPieSeries;
    PieSeries5: TPieSeries;
    PieSeries6: TPieSeries;
    PieSeries7: TPieSeries;
    Chart2: TChart;
    PieSeries1_1: TPieSeries;
    PieSeries1: TPieSeries;
    BarSeries1_1: TBarSeries;
    BarSeries1: TBarSeries;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure OKBtnClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  PagesDlg2: TPagesDlg2;

implementation

uses Main, Generics.Collections, TDictionary, func, datamodule;

{$R *.dfm}

procedure TPagesDlg2.Button1Click(Sender: TObject);
begin

  BarSeries1.Active := not BarSeries1.Active;
  BarSeries1_1.Active := not BarSeries1_1.Active;
  PieSeries1.Active := not PieSeries1.Active;
  PieSeries1_1.Active := not PieSeries1_1.Active;
  Chart2.View3DOptions.Orthogonal:=True;

  BarSeries2.Active := not BarSeries2.Active;
  PieSeries2.Active := not PieSeries2.Active;

  BarSeries3.Active := not BarSeries3.Active;
  PieSeries3.Active := not PieSeries3.Active;

  BarSeries4.Active := not BarSeries4.Active;
  PieSeries4.Active := not PieSeries4.Active;

  BarSeries5.Active := not BarSeries5.Active;
  PieSeries5.Active := not PieSeries5.Active;

  BarSeries6.Active := not BarSeries6.Active;
  PieSeries6.Active := not PieSeries6.Active;

  BarSeries7.Active := not BarSeries7.Active;
  PieSeries7.Active := not PieSeries7.Active;

end;

procedure TPagesDlg2.Button2Click(Sender: TObject);
begin
  //Path := ExtractfilePath(Application.ExeName);
  Chart2.SaveToBitmapFile(Path+'\Resp_NoREspHora.bmp');
  Chart1.SaveToBitmapFile(Path+'\MLLamadaHora.bmp');
  Chart5.SaveToBitmapFile(Path+'\MEsperaHora.bmp');
  Chart6.SaveToBitmapFile(Path+'\RespSemana.bmp');
  Chart7.SaveToBitmapFile(Path+'\NoRespSemana.bmp');
  Chart9.SaveToBitmapFile(Path+'\MLlamadaSemana.bmp');
  Chart8.SaveToBitmapFile(Path+'\MEsperaSemana.bmp');
end;

procedure TPagesDlg2.FormCreate(Sender: TObject);
var
  i   : Integer;
  key: string;
  dia: integer;
begin
  PageControl1.ActivePage:=TabSheet2;

  with datamodule2 do
  begin

    for i := 0 to 23 do
    begin

      if i < 10 then key := '0'+inttostr(i) else key := inttostr(i);

      if NOT (ans_by_hour[key].Val > 0) then
      begin
        ans_by_hour[key].Val:=0;
        average_call_duration := 0;
        average_hold_duration := 0;
      end else begin
        average_call_duration := Double(total_time_by_hour[key].Val / ans_by_hour[key].Val);
        average_hold_duration := Double(total_hold_by_hour[key].Val / ans_by_hour[key].Val);
      end;


      With BarSeries1 do
      begin
        AddXY(strtoint(key), ans_by_hour[key].Val, '' , clBlue);
      end;
      With BarSeries1_1 do
      begin
        AddXY(strtoint(key), unans_by_hour[key].Val, '' , clRed);
      end;
      With PieSeries1 do
      begin
        AddXY(strtoint(key), ans_by_hour[key].Val, '', clBlue);
      end;
      With PieSeries1_1 do
      begin
        AddXY(strtoint(key), unans_by_hour[key].Val, '', clRed);
      end;

      With BarSeries2 do
      begin
        AddXY(strtoint(key), round(average_call_duration));
      end;
      With PieSeries2 do
      begin
        AddXY(strtoint(key), round(average_call_duration));
      end;

      With BarSeries3 do
      begin
        AddXY(strtoint(key), round(average_hold_duration));
      end;
      With PieSeries3 do
      begin
        AddXY(strtoint(key), round(average_hold_duration));
      end;

    end;

    for dia := 0 to 6 do
    begin

      case dia of
           0: key:='lunes';
           1: key:='martes';
           2: key:='mi�rcoles';
           3: key:='jueves';
           4: key:='viernes';
           5: key:='s�bado';
           6: key:='domingo';
      end;

      if NOT (ans_by_dw[key].Val > 0) then
      begin
        ans_by_dw[key].Val:=0;
        average_call_duration := 0;
        average_hold_duration := 0;
      end else begin
        average_call_duration := Double(total_time_by_dw[key].Val / ans_by_dw[key].Val);
        average_hold_duration := Double(total_hold_by_dw[key].Val / ans_by_dw[key].Val);
      end;


      With BarSeries4 do
      begin
        AddXY(dia, ans_by_dw[key].Val, key+' '+IntToStr(ans_by_dw[key].Val));
      end;
      With PieSeries4 do
      begin
        AddXY(dia, ans_by_dw[key].Val, key+' '+IntToStr(ans_by_dw[key].Val));
      end;

      With BarSeries5 do
      begin
        AddXY(dia, unans_by_dw[key].Val, key+' '+IntToStr(unans_by_dw[key].Val));
      end;
      With PieSeries5 do
      begin
        AddXY(dia, unans_by_dw[key].Val, key+' '+IntToStr(unans_by_dw[key].Val));
      end;

      With BarSeries6 do
      begin
        AddXY(dia, round(average_call_duration), key+' '+SegToFormatHour(round(average_call_duration)));
      end;
      With PieSeries6 do
      begin
        AddXY(dia, round(average_call_duration), key+' '+SegToFormatHour(round(average_call_duration)));
      end;

      With BarSeries7 do
      begin
        AddXY(dia, round(average_hold_duration), key+' '+SegToFormatHour(round(average_hold_duration)));
      end;
      With PieSeries7 do
      begin
        AddXY(dia, round(average_hold_duration), key+' '+SegToFormatHour(round(average_hold_duration)));
      end;


    end;


  end;

end;

procedure TPagesDlg2.OKBtnClick(Sender: TObject);
begin
  Close;
end;

end.

