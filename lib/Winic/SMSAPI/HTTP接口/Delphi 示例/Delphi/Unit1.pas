unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls,comobj; // 注意要引用 uses comobj;

type
  TForm1 = class(TForm)
    GroupBox2: TGroupBox;
    btxt: TMemo;
    Label4: TLabel;
    content: TMemo;
    mob: TMemo;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    GroupBox3: TGroupBox;
    pwd: TEdit;
    Label3: TLabel;
    uid: TEdit;
    Label2: TLabel;
    Button2: TButton;
    procedure Button2Click(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

//_________________________________HTTP通信函数返回信息
function  HTTPwebservice(url:string):string;
var
    responseText:   WideString;
    xmlHttp:   OLEVariant;

begin
    try
        xmlHttp:=CreateOleObject('Msxml2.XMLHTTP');
        xmlHttp.open('GET',url,false);
        xmlHttp.send();
        responseText:=xmlHttp.responseText;
        if   xmlHttp.status='200'   then
        begin
        HTTPwebservice:=responseText;
        end;
        xmlHttp   :=   Unassigned;
    except
          exit;
    end;
end;
//______________________________

procedure TForm1.Button2Click(Sender: TObject);
var

    bdata,mobstr:string;
begin

    mobstr:=stringreplace(mob.Text,#10,',',[rfReplaceAll]);
    bdata:=HTTPwebservice('http://service.winic.org/sys_port/gateway/?id='+uid.Text+'&pwd='+pwd.Text+'&to='+mobstr+'&content='+content.Text+'&time=');
    btxt.Lines.Append(bdata);
end;

end.
