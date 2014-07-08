unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,Types, StdCtrls;

type
  TForm1 = class(TForm)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label7: TLabel;
    euid: TEdit;
    epwd: TEdit;
    Button1: TButton;
    Button4: TButton;
    enewpwd: TEdit;
    Memo1: TMemo;
    Memo2: TMemo;
    GroupBox2: TGroupBox;
    Label3: TLabel;
    emobno: TMemo;
    econtent: TMemo;
    Label4: TLabel;
    Button2: TButton;
    GroupBox3: TGroupBox;
    Label5: TLabel;
    faxno: TMemo;
    Label6: TLabel;
    faxfile: TEdit;
    Button3: TButton;
    Label8: TLabel;
    men: TEdit;
    title: TEdit;
    Label9: TLabel;
    Label10: TLabel;
    Button5: TButton;
    OpenDialog1: TOpenDialog;
    filename: TEdit;
    GroupBox4: TGroupBox;
    v_no: TMemo;
    v_file: TEdit;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    RadioButton3: TRadioButton;
    mode: TEdit;
    Label15: TLabel;
    v_txt: TMemo;
    bt8: TButton;
    v_svrno: TEdit;
    Label17: TLabel;
    Label18: TLabel;
    Button6: TButton;
    Label11: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure RadioButton1Click(Sender: TObject);
    procedure RadioButton2Click(Sender: TObject);
    procedure RadioButton3Click(Sender: TObject);
    procedure bt8Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

//ע��һ��Ҫ uses   comobj;

uses   comobj;


procedure TForm1.Button1Click(Sender: TObject);
var
  uid,pwd:WideString;
  Mycom: OleVariant;
begin

        uid:=trim(euid.Text);
        pwd:=trim(epwd.Text);

     Mycom:=CreateOleObject('UNCOM.MyObject1');
     memo2.Lines.Text:=Mycom.GetUserInfo(uid,pwd);
  
end;

procedure TForm1.Button2Click(Sender: TObject);
 var
uid,pwd,mob,txt:WideString;
 
    Mycom: OleVariant;
begin

   //______________

        uid:=euid.Text;
        pwd:=epwd.Text;
        mob:=emobno.Text;
        txt:=econtent.Text;

     Mycom:=CreateOleObject('UNCOM.MyObject1');
     memo2.Lines.Text:=Mycom.SendMessages(uid,pwd,mob,txt,'');
 
end;

procedure TForm1.Button4Click(Sender: TObject);
var

uid,pwd,newpwd:WideString;
      Mycom: OleVariant;
begin

    
        uid:=trim(euid.Text);
        pwd:=trim(epwd.Text);
        newpwd:=trim(enewpwd.Text);
 

     Mycom:=CreateOleObject('UNCOM.MyObject1');
     memo2.Lines.Text:=Mycom.EditUserPwd(uid,pwd,newpwd);


end;

procedure TForm1.Button3Click(Sender: TObject);
begin
  opendialog1.Filter:='Word�ĵ�|*.doc|Excel���|*.xls|PowerPoint��ʾ��|*.ppt|PDF�ĵ�|*.pdf|TIFF|*.tif|txt�ı��ļ�|*.txt|�����ļ�|*.*';
if opendialog1.execute then   begin

    faxfile.Text:=opendialog1.FileName ;
     filename.Text:=ExtractFileName(opendialog1.FileName);
end ;

end;

procedure TForm1.Button5Click(Sender: TObject);
 var
  uid,pwd:WideString;
 
  Mycom: OleVariant;
begin
 if faxfile.Text='' then
    begin
      showmessage('û��ѡ���ļ���֧��Word��excel��PDF��ͼƬ��PPT');
      exit;
    end;
        uid:=trim(euid.Text);
        pwd:=trim(epwd.Text);

      showmessage('��Ϊ����ԭ�������Ҫ�����ĵȺ��ò�Ҫ���ͳ���2M���ļ�');
 

     Mycom:=CreateOleObject('UNCOM.MyObject1');
     memo2.Lines.Text:=Mycom.SendFax(uid,pwd,faxno.Text,men.Text,title.Text,faxfile.Text,ExtractFileName(faxfile.Text))
 
 
end;



procedure TForm1.RadioButton1Click(Sender: TObject);
begin
mode.Text:='1';
v_txt.Enabled:=true;
v_file.Enabled:=false;
bt8.Enabled:=false;
end;

procedure TForm1.RadioButton2Click(Sender: TObject);
begin
mode.Text:='2';
v_txt.Enabled:=true;
v_file.Enabled:=false;
bt8.Enabled:=false;
end;

procedure TForm1.RadioButton3Click(Sender: TObject);
begin
mode.Text:='3';
v_txt.Enabled:=false;
v_file.Enabled:=true;
bt8.Enabled:=true;
end;

procedure TForm1.bt8Click(Sender: TObject);
begin

  opendialog1.Filter:='�����ļ�.wav|*.wav|�����ļ�.WAV|*.WAV|�����ļ�.*|*.*';
  
if opendialog1.execute then   begin

    v_file.Text:=opendialog1.FileName ;
    
end ;

end;


procedure TForm1.Button6Click(Sender: TObject);
 var
  uid,pwd:WideString;
  Mycom: OleVariant;
begin

 
 if (mode.Text='3')    then
    begin

    if (v_file.text<>'') then begin

      showmessage('��ѡ���������¼���ļ��ϴ���ʽ����Ϊ����ԭ�������Ҫ�Ⱥ�,�������ĵȺ');
 
     end else begin
      showmessage('û��ѡ�������ļ�!');
       exit;
      end;
 end;
 
        uid:=trim(euid.Text);
        pwd:=trim(epwd.Text);
 
     Mycom:=CreateOleObject('UNCOM.MyObject1');
     memo2.Lines.Text:=Mycom.SendVoice(uid,pwd,v_no.Text,v_txt.Text,mode.Text,v_file.Text,v_svrno.Text,'','')
 
 
end;

end.
