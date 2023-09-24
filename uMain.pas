unit uMain;

interface

uses
  Winapi.Windows,
  Winapi.Messages,
  System.SysUtils,
  System.Variants,
  System.Classes,
  Vcl.Graphics,
  Vcl.Controls,
  Vcl.Forms,
  Vcl.Dialogs,
  Vcl.StdCtrls,
  System.Threading, Vcl.ExtCtrls;

type
  TuFrmMain = class(TForm)
    btnTask: TButton;
    lbltimetask: TLabel;
    btnPadrao: TButton;
    btnITask: TButton;
    btnifuture: TButton;
    cbt1: TCheckBox;
    cbt3: TCheckBox;
    cbt2: TCheckBox;
    TimerIFuture: TTimer;
    procedure btnTaskClick(Sender: TObject);
    procedure btnPadraoClick(Sender: TObject);
    procedure btnITaskClick(Sender: TObject);
    procedure btnifutureClick(Sender: TObject);
    procedure TimerIFutureTimer(Sender: TObject);
  private
    { Private declarations }
    T1, T2, T3: IFuture<String>;
  public
    { Public declarations }
  end;

var
  uFrmMain: TuFrmMain;

implementation

{$R *.dfm}

procedure TuFrmMain.btnifutureClick(Sender: TObject);
begin

  { Ativar o Time de Verifica��o }
  if not TimerIFuture.Enabled then
    TimerIFuture.Enabled := True;

  { Task com iFutures }
  TTask.Run(
    procedure
    begin
      { iFuture 1 }
      Sleep(Random(10000));
      T1 := TTask.Future<String>(
        function: String
        begin
          Result := DateTimeToStr(Now);
        end);

      TThread.Synchronize(TThread.CurrentThread,
        procedure
        begin
          lbltimetask.Caption := 'iFuture T1 :' + T1.Value;
        end);
      { iFuture 1 }

      { iFuture 2 }
      Sleep(Random(10000));
      T2 := TTask.Future<String>(
        function: String
        begin
          Result := DateTimeToStr(Now);
        end);

      TThread.Synchronize(TThread.CurrentThread,
        procedure
        begin
          lbltimetask.Caption := 'iFuture T2 :' + T2.Value;
        end);
      { iFuture 2 }

      { iFuture 3 }
      Sleep(Random(10000));
      T3 := TTask.Future<String>(
        function: String
        begin
          Result := DateTimeToStr(Now);
        end);

      TThread.Synchronize(TThread.CurrentThread,
        procedure
        begin
          lbltimetask.Caption := 'iFuture T3 :' + T3.Value;
        end);
      { iFuture 3 }
    end);

end;

procedure TuFrmMain.btnITaskClick(Sender: TObject);
var
  ilTask: ITask;
begin
  { Cria��o da iTask }
  ilTask := TTask.Create(
    procedure
    begin
      Sleep(5000);
      TThread.Synchronize(TThread.CurrentThread,
        procedure
        begin
          lbltimetask.Caption := 'iTask: ' + DateTimeToStr(Now);
        end);
    end);

  { Verifica��o do Status Antes de Executar }
  if ilTask.Status = TTaskStatus.Created then
  begin
    ilTask.Start;
  end;

end;

procedure TuFrmMain.btnPadraoClick(Sender: TObject);
begin
  Sleep(10000);
end;

procedure TuFrmMain.btnTaskClick(Sender: TObject);
begin
  { Cria��o da TTask }
  TTask.Run(
    procedure
    begin
      Sleep(5000);
      TThread.Synchronize(TThread.CurrentThread,
        procedure
        begin
          lbltimetask.Caption := 'TTask: ' + DateTimeToStr(Now);
        end);
    end);
end;

procedure TuFrmMain.TimerIFutureTimer(Sender: TObject);
begin

  if Assigned(T1) then
  begin
    if T1.Status = TTaskStatus.Running then
      cbt1.Checked := False;

    if T1.Status = TTaskStatus.Completed then
      cbt1.Checked := True;
  end;

  if Assigned(T2) then
  begin
    if T2.Status = TTaskStatus.Running then
      cbt2.Checked := False;

    if T2.Status = TTaskStatus.Completed then
      cbt2.Checked := True;
  end;

  if Assigned(T3) then
  begin
    if T3.Status = TTaskStatus.Running then
      cbt3.Checked := False;

    if T3.Status = TTaskStatus.Completed then
      cbt3.Checked := True;
  end;

end;

end.
