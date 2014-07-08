// ************************************************************************ //
// The types declared in this file were generated from data read from the
// WSDL File described below:
// WSDL     : http://service2.winic.org/Service.asmx?WSDL
// Encoding : utf-8
// Version  : 1.0
// (2009-2-19 11:07:19 - 1.33.2.5)
// ************************************************************************ //

unit Service2;

interface

uses InvokeRegistry, SOAPHTTPClient, Types, XSBuiltIns;

type

  // ************************************************************************ //
  // The following types, referred to in the WSDL document are not being represented
  // in this file. They are either aliases[@] of other types represented or were referred
  // to but never[!] declared in the document. The types from the latter category
  // typically map to predefined/known XML or Borland types; however, they could also 
  // indicate incorrect WSDL documents that failed to declare or import a schema type.
  // ************************************************************************ //
  // !:string          - "http://www.w3.org/2001/XMLSchema"
  // !:base64Binary    - "http://www.w3.org/2001/XMLSchema"



  // ************************************************************************ //
  // Namespace : http://tempuri.org/
  // soapAction: http://tempuri.org/%operationName%
  // transport : http://schemas.xmlsoap.org/soap/http
  // binding   : Service1Soap
  // service   : Service1
  // port      : Service1Soap
  // URL       : http://service2.winic.org/Service.asmx
  // ************************************************************************ //
  Service1Soap = interface(IInvokable)
  ['{CFE467D4-A39E-2BD2-5836-7685A9E27F8D}']
    function  RegineUser(const uid: WideString; const pwd: WideString; const agent_code: WideString; const co_name: WideString; const link_man: WideString; const mob: WideString): WideString; stdcall;
    function  GetUserInfo(const uid: WideString; const pwd: WideString): WideString; stdcall;
    function  EditUserPwd(const uid: WideString; const pwd: WideString; const newpwd: WideString): WideString; stdcall;
    function  SendMessages(const uid: WideString; const pwd: WideString; const tos: WideString; const msg: WideString; const otime: WideString): WideString; stdcall;
    function  SendFax(const uid: WideString; const pwd: WideString; const faxno: WideString; const men: WideString; const title: WideString; const Bytes: TByteDynArray; const FileName: WideString): WideString; stdcall;
    function  GetMessageInfo(const snum: WideString): WideString; stdcall;
    function  SendVoice(const uid: WideString; const pwd: WideString; const vto: WideString; const vtxt: WideString; const mode: WideString; const FileBytes: TByteDynArray; const svrno: WideString; const str_time: WideString; const end_time: WideString): WideString; stdcall;
    function  GetFaxRecord(const uid: WideString; const pwd: WideString; const num: WideString; const StartDate: WideString; const EndDate: WideString): WideString; stdcall;
    function  GetVoiceRecord(const uid: WideString; const pwd: WideString; const num: WideString; const StartDate: WideString; const EndDate: WideString): WideString; stdcall;
    function  GetMessageRecord(const uid: WideString; const pwd: WideString; const num: WideString; const StartDate: WideString; const EndDate: WideString): WideString; stdcall;
    function  TelCall(const uid: WideString; const pwd: WideString; const host_call: WideString; const caller: WideString): WideString; stdcall;
  end;

function GetService1Soap(UseWSDL: Boolean=System.False; Addr: string=''; HTTPRIO: THTTPRIO = nil): Service1Soap;


implementation

function GetService1Soap(UseWSDL: Boolean; Addr: string; HTTPRIO: THTTPRIO): Service1Soap;
const
  defWSDL = 'http://service2.winic.org/Service.asmx?WSDL';
  defURL  = 'http://service2.winic.org/Service.asmx';
  defSvc  = 'Service1';
  defPrt  = 'Service1Soap';
var
  RIO: THTTPRIO;
begin
  Result := nil;
  if (Addr = '') then
  begin
    if UseWSDL then
      Addr := defWSDL
    else
      Addr := defURL;
  end;
  if HTTPRIO = nil then
    RIO := THTTPRIO.Create(nil)
  else
    RIO := HTTPRIO;
  try
    Result := (RIO as Service1Soap);
    if UseWSDL then
    begin
      RIO.WSDLLocation := Addr;
      RIO.Service := defSvc;
      RIO.Port := defPrt;
    end else
      RIO.URL := Addr;
  finally
    if (Result = nil) and (HTTPRIO = nil) then
      RIO.Free;
  end;
end;


initialization
  InvRegistry.RegisterInterface(TypeInfo(Service1Soap), 'http://tempuri.org/', 'utf-8');
  InvRegistry.RegisterDefaultSOAPAction(TypeInfo(Service1Soap), 'http://tempuri.org/%operationName%');
  
 //delphi调用net2.0在自动生成的Service.pas文件里需要加这一行。否则会出错。

 InvRegistry.RegisterInvokeOptions(TypeInfo(Service1Soap), ioDocument);   
end. 
