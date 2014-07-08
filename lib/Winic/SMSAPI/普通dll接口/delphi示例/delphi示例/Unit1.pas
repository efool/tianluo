unit Unit1;

interface

uses
  Windows,
  comobj, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    GroupBox1: TGroupBox;
    euid: TEdit;
    epwd: TEdit;
    Button1: TButton;
    Label1: TLabel;
    Label2: TLabel;
    econtent: TMemo;
    emobno: TMemo;
    Label3: TLabel;
    Label4: TLabel;
    Button2: TButton;
    Memo1: TMemo;
    Label5: TLabel;
    Memo2: TMemo;
    Label6: TLabel;
    Button3: TButton;
    Button4: TButton;
    enewpwd: TEdit;
    Label7: TLabel;
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

//������ ����
function Sendsms(uid,pwd,mobno,content,mycode,time:pchar):pchar;stdcall;  external 'winsms.dll';
//����� ����
function Remoney(uid,pwd:pchar):pchar;stdcall;  external 'winsms.dll';
//���ն���  ����
function Getsms(uid,pwd:pchar):pchar;stdcall;  external 'winsms.dll';
//�޸����� ����
function Editpwd(uid,pwd,newpwd:pchar):pchar;stdcall;  external 'winsms.dll';


//_________________________________________________
procedure TForm1.Button2Click(Sender: TObject);
var
bmsg:pchar;
begin
 //���÷��ͺ���
    bmsg:=Sendsms(pchar(euid.Text),pchar(epwd.Text),pchar(emobno.Text),pchar(econtent.Text),'','');
   memo2.Text:=pchar(bmsg);

end;

//_________________________________________________
procedure TForm1.Button1Click(Sender: TObject);
var
bmsg:pchar;
begin
 //���ò�ѯ����
    bmsg:=Remoney(pchar(euid.Text),pchar(epwd.Text));
   memo2.Text:=pchar(bmsg);
end;
//_________________________________________________
procedure TForm1.Button3Click(Sender: TObject);
var
bmsg:pchar;
begin
 //���ý��ն��ź���
    bmsg:=Getsms(pchar(euid.Text),pchar(epwd.Text));
   memo2.Text:=pchar(bmsg);

end;
//_________________________________________________
procedure TForm1.Button4Click(Sender: TObject);
var
bmsg:pchar;
begin
 //�����޸����뺯��
    bmsg:=Editpwd(pchar(euid.Text),pchar(epwd.Text),pchar(enewpwd.Text));
   memo2.Text:=pchar(bmsg);

end;

end.
