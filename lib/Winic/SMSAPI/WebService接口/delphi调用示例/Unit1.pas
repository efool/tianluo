unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,Types, StdCtrls,service, InvokeRegistry, Rio,
  SOAPHTTPClient;

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
    service_url: TEdit;
    Label11: TLabel;
    HTTPRIO1: THTTPRIO;
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
    Label16: TLabel;
    v_txt: TMemo;
    bt8: TButton;
    v_svrno: TEdit;
    Label17: TLabel;
    Label18: TLabel;
    Button6: TButton;
    Button7: TButton;
    Edit1: TEdit;
    Label19: TLabel;
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
    procedure Button7Click(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
var
  uid,pwd:WideString;
  Iservice:   Service1Soap;
begin
    HTTPRIO1.URL:=service_url.Text;
    HTTPRIO1.HTTPWebNode.Agent := 'Borland SOAP 1.2';
    HTTPRIO1.HTTPWebNode.UseUTF8InHeader := true;
    Iservice:= HTTPRIO1 as Service1Soap;

        uid:=trim(euid.Text);
        pwd:=trim(epwd.Text);


       memo2.Text:=Iservice.GetUserInfo(uid,pwd)
 
end;

procedure TForm1.Button2Click(Sender: TObject);
 var
uid,pwd,mob,txt:WideString;
  Iservice:   Service1Soap;
  back_info:string;
begin
    HTTPRIO1.URL:=service_url.Text;
    HTTPRIO1.HTTPWebNode.Agent := 'Borland SOAP 1.2';
    HTTPRIO1.HTTPWebNode.UseUTF8InHeader := true;
    Iservice:= HTTPRIO1 as Service1Soap;
   //______________

        uid:=euid.Text;
        pwd:=epwd.Text;
        mob:=emobno.Text;
        txt:=econtent.Text;

           back_info:=Iservice.SendMessages(uid,pwd,mob,txt,'');
           memo2.Text:=back_info;
        if length(trim(back_info))>3 then begin
             showmessage('短信发送成功'+back_info);
        end else begin
            showmessage('短信发送失败'+back_info);
        end;
end;

procedure TForm1.Button4Click(Sender: TObject);
var

uid,pwd,newpwd:WideString;

  Iservice:   Service1Soap;
begin
    HTTPRIO1.URL:=service_url.Text;
    HTTPRIO1.HTTPWebNode.Agent := 'Borland SOAP 1.2';
    HTTPRIO1.HTTPWebNode.UseUTF8InHeader := true;
    Iservice:= HTTPRIO1 as Service1Soap;
    
        uid:=trim(euid.Text);
        pwd:=trim(epwd.Text);
        newpwd:=trim(enewpwd.Text);


  memo2.Text:=Iservice.EditUserPwd(uid,pwd,newpwd);


end;

procedure TForm1.Button3Click(Sender: TObject);
begin
  opendialog1.Filter:='Word文档|*.doc|Excel表格|*.xls|PowerPoint演示稿|*.ppt|PDF文档|*.pdf|TIFF|*.tif|txt文本文件|*.txt|所有文件|*.*';
if opendialog1.execute then   begin

    faxfile.Text:=opendialog1.FileName ;
     filename.Text:=ExtractFileName(opendialog1.FileName);
end ;

end;

procedure TForm1.Button5Click(Sender: TObject);
 var
  uid,pwd:WideString;
    vByte:TByteDynArray;
    msByte:TMemoryStream;
    iSize:Integer;
    Iservice:    Service1Soap;
    back_info:string;
begin
 if faxfile.Text='' then
    begin
      showmessage('没有选择文件。支持Word、excel、PDF、图片、PPT');
      exit;
    end;
        uid:=trim(euid.Text);
        pwd:=trim(epwd.Text);

      showmessage('因为网速原因可能需要您耐心等侯！最好不要发送超过1M的文件');

    msByte:=TMemoryStream.Create;
    msByte.LoadFromFile(faxfile.Text);
    setlength(vByte,msByte.size);
    msByte.position:=0;
    msByte.read(vByte[0],msByte.size);
   try
    HTTPRIO1.URL:=service_url.Text;
    HTTPRIO1.HTTPWebNode.Agent := 'Borland SOAP 1.2';
    HTTPRIO1.HTTPWebNode.UseUTF8InHeader := true;
    Iservice:= HTTPRIO1 as Service1Soap;



       back_info:=Iservice.SendFax(uid, pwd,trim(faxno.Text),men.Text, title.Text,vByte, WideString(filename.Text));
       memo2.Text:=back_info;
        msByte.Free;
        
       if length(trim(back_info))>3 then begin
             showmessage('传真发送成功'+back_info);
        end else begin
            showmessage('传真发送失败'+back_info);
        end;



      except
       showmessage('有错误');
         exit;
      end;

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

  opendialog1.Filter:='声音文件.wav|*.wav|声音文件.WAV|*.WAV|所有文件.*|*.*';
  
if opendialog1.execute then   begin

    v_file.Text:=opendialog1.FileName ;
    
end ;

end;


procedure TForm1.Button6Click(Sender: TObject);
 var
  uid,pwd:WideString;
    vByte:TByteDynArray;
    msByte:TMemoryStream;
    iSize:Integer;
    Iservice:    Service1Soap;
     back_info:string;
begin

vByte:=0;
 if (mode.Text='3')    then
    begin

    if (v_file.text<>'') then begin

      showmessage('您选择的是自有录音文件上传方式，因为网速原因可能需要等侯,请您耐心等侯！');

      msByte:=TMemoryStream.Create;
      msByte.LoadFromFile(v_file.Text);
      setlength(vByte,msByte.size);
      msByte.position:=0;
      msByte.read(vByte[0],msByte.size);
     end else begin
      showmessage('没有选择声音文件!');
       exit;
      end;
 end;
        uid:=trim(euid.Text);
        pwd:=trim(epwd.Text);

  try
    HTTPRIO1.URL:=service_url.Text;
    HTTPRIO1.HTTPWebNode.Agent := 'Borland SOAP 1.2';
    HTTPRIO1.HTTPWebNode.UseUTF8InHeader := true;
    Iservice:= HTTPRIO1 as Service1Soap;

        

       back_info:=Iservice.SendVoice(uid,pwd,trim(v_no.Text),trim(v_txt.Text),trim(mode.Text),vByte,trim(v_svrno.Text),'','');
       memo2.Text:=back_info;
       
      if length(trim(back_info))>3 then begin
             showmessage('语音发送成功'+back_info);
        end else begin
            showmessage('语音发送失败'+back_info);
        end;

       

    except
       showmessage('有错误');
         exit;
      end;
end;

procedure TForm1.Button7Click(Sender: TObject);
var
  uid,pwd:WideString;
  Iservice:   Service1Soap;
begin
    HTTPRIO1.URL:=service_url.Text;
    HTTPRIO1.HTTPWebNode.Agent := 'Borland SOAP 1.2';
    HTTPRIO1.HTTPWebNode.UseUTF8InHeader := true;
    Iservice:= HTTPRIO1 as Service1Soap;

       memo2.Text:=Iservice.GetMessageInfo(trim(edit1.Text));

end;

end.
