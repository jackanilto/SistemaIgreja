unit Funcoes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Imaging.jpeg, Vcl.ExtCtrls,
  Vcl.Buttons, Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls;

type
  TFrmFuncoes = class(TForm)
    Label2: TLabel;
    edtNome: TEdit;
    grid: TDBGrid;
    btnNovo: TSpeedButton;
    btnSalvar: TSpeedButton;
    btnEditar: TSpeedButton;
    btnDeletar: TSpeedButton;
    edtCodigo: TEdit;
    Image1: TImage;
    procedure btnNovoClick(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure btnEditarClick(Sender: TObject);
    procedure btnDeletarClick(Sender: TObject);
    procedure gridCellClick(Column: TColumn);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    procedure buscarTudo();

    procedure associarCampos();
  public
    { Public declarations }
  end;

var
  FrmFuncoes: TFrmFuncoes;

implementation

{$R *.dfm}

uses Modulo;

{ TFrmFuncoes }

procedure TFrmFuncoes.associarCampos;
begin
dm.tb_funcoes.FieldByName('nome').Value := edtNome.Text;
end;

procedure TFrmFuncoes.btnDeletarClick(Sender: TObject);
begin
if Messagedlg('Deseja excluir o registro?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  begin
   associarCampos;
    dm.query_funcoes.Close;
    dm.query_funcoes.SQL.Clear;
    dm.query_funcoes.SQL.Add('delete from funcoes where id = :id');

    dm.query_funcoes.ParamByName('id').Value := edtCodigo.Text;
    dm.query_funcoes.ExecSql;
     MessageDlg('Excluido com Sucesso!!', mtInformation, mbOKCancel, 0);
    buscarTudo;
    edtNome.Enabled := false;
    btnSalvar.Enabled := false;
    btnEditar.Enabled := false;
    btnDeletar.Enabled := false;
    btnNovo.Enabled := true;
  end;
end;

procedure TFrmFuncoes.btnEditarClick(Sender: TObject);
begin
if (edtNome.Text <> '') then
    begin
    associarCampos;
    dm.tb_funcoes.Edit;

    dm.query_funcoes.Close;
    dm.query_funcoes.SQL.Clear;
    dm.query_funcoes.SQL.Add('update funcoes set nome = :nome where id = :id');
    dm.query_funcoes.ParamByName('nome').Value := edtNome.Text;

    dm.query_funcoes.ParamByName('id').Value := edtCodigo.Text;
    dm.query_funcoes.ExecSql;

    MessageDlg('Editado com Sucesso!!', mtInformation, mbOKCancel, 0);
    buscarTudo;
    edtNome.Enabled := false;
    btnSalvar.Enabled := false;
    btnEditar.Enabled := false;
    btnDeletar.Enabled := false;
    btnNovo.Enabled := true;
    end
    else
    begin
    MessageDlg('Preencha os Campos', mtInformation, mbOKCancel, 0);
    end;
end;

procedure TFrmFuncoes.btnNovoClick(Sender: TObject);
begin
edtNome.Text := '';
edtNome.Enabled := true;
dm.tb_funcoes.Insert;
BtnSalvar.Enabled := true;
btnNovo.Enabled := false;

btnEditar.Enabled := false;
    btnDeletar.Enabled := false;
end;

procedure TFrmFuncoes.btnSalvarClick(Sender: TObject);
begin
if (edtNome.Text <> '')  then
  begin
  associarCampos;
  dm.tb_funcoes.Post;
  MessageDlg('Salvo com Sucesso!!', mtInformation, mbOKCancel, 0);
  buscarTudo;
  edtNome.Enabled := false;
  btnSalvar.Enabled := false;
  btnNovo.Enabled := true;
  btnEditar.Enabled := false;
  btnDeletar.Enabled := false;
  end
  else
  begin
  MessageDlg('Preencha os Campos', mtInformation, mbOKCancel, 0);
  end;
end;

procedure TFrmFuncoes.buscarTudo;
begin


dm.query_funcoes.Close;
dm.query_funcoes.SQL.Clear;
dm.query_funcoes.SQL.Add('select * from funcoes');
dm.query_funcoes.Open;
end;

procedure TFrmFuncoes.FormShow(Sender: TObject);
begin


dm.tb_funcoes.Active := false;
dm.tb_funcoes.Active := true;



buscarTudo;


btnSalvar.Enabled := false;
btnEditar.Enabled := false;
btnDeletar.Enabled := false;
end;

procedure TFrmFuncoes.gridCellClick(Column: TColumn);
begin
dm.tb_funcoes.Edit;
btnEditar.Enabled := true;
btnDeletar.Enabled := true;
edtNome.Enabled := true;

if dm.query_funcoes.FieldByName('nome').Value <> null then
edtNome.Text := dm.query_funcoes.FieldByName('nome').Value;


edtCodigo.Text := dm.query_funcoes.FieldByName('id').Value;

end;

end.
