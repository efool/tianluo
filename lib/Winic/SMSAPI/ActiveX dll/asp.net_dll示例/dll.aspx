<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="dll.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>无标题页</title>
</head>
<body>
 
    <form id="form2" runat="server">
    <div align="center" style="width:100%">
        <table width="800px" style="font-style:normal;font-size:12px;">
            <tr>
                <td style="width: 224px; height: 685px;" valign="top">
                    <table style="width:415px">
                        <tr>
                            <td style="width: 347px; height: 92px;" valign="top">
                                <asp:Panel ID="Panel1" runat="server" GroupingText="帐户信息" Width="402px">
                                    <table style="width: 101%; height: 100%">
                                        <tr>
                                            <td style="width: 89px; height: 43px;">
                                                帐号:</td>
                                            <td style="width: 108px; height: 43px;">
                                                <asp:TextBox ID="txtUID" runat="server" Width="97px"></asp:TextBox></td>
                                            <td style="width: 148px; height: 43px;">
                                                密码:</td>
                                            <td style="width: 87px; height: 43px;">
                                                <asp:TextBox ID="txt_PWD" runat="server" Width="93px"></asp:TextBox>
                                            </td>
                                            <td style="width: 100px; height: 43px;">
                                                <asp:Button ID="btnLook" runat="server" Text="查询帐户" OnClick="btnLook_Click" /></td>
                                        </tr>
                                    </table>
                                </asp:Panel>
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 347px;  height: 131px;" align="left">
                                <asp:Panel ID="Panel2" runat="server" GroupingText="执行后返回状态(请对昭下面的返回参数说明表)" Width="402px" HorizontalAlign="Left" Height="107px" >
                                    <br />
                                    <asp:TextBox ID="txtResult" runat="server" TextMode="MultiLine" Height="79px" Width="346px"></asp:TextBox><br />
                                </asp:Panel>
                                <br />
                                </td>
                        </tr>
                        <tr>
                            <td style="width: 347px; height: 38px; ">
                                <asp:Panel ID="Panel3" runat="server" GroupingText="返参数说明表" Width="397px" Height="134px" HorizontalAlign="Left">
                                    <table style="width:100%">
                                        <tr>
                                            <td align="left" >
                                                返回状态码
                                            </td>
                                        </tr>
                                        <tr>
                                            <td align="left" style="height: 23px" >
                                                信息编号或000 成功！</td>
                                        </tr>
                                        <tr>
                                            <td align="left" >
                                                -01 当前账号余额不足！</td>
                                        </tr>
                                        <tr>
                                            <td align="left" >
                                                -02 当前用户ID错误！</td>
                                        </tr>
                                        <tr>
                                            <td align="left">
                                                -03 当前密码错误！</td>
                                        </tr>
                                        <tr>
                                            <td align="left">
                                                -04 参数不够或参数内容的类型错误！</td>
                                        </tr>
                                        <tr>
                                            <td align="left">
                                                &nbsp;-05 手机号码格式不对</td>
                                        </tr>
                                        <tr>
                                            <td align="left" >
                                                -06 短信内容编码不对！</td>
                                        </tr>
                                        <tr>
                                            <td align="left" >
                                                &nbsp;-07 短信内容含有敏感字符！</td>
                                        </tr>
                                        <tr>
                                            <td align="left" >
                                                -08 无接收数据</td>
                                        </tr>
                                        <tr>
                                            <td align="left" >
                                                -09 系统维护中</td>
                                        </tr>
                                        <tr>
                                            <td align="left" >
                                                &nbsp;-10 手机号码数量超长！数量超长！（100个/次 超100个请自行做循环）</td>
                                        </tr>
                                        <tr>
                                            <td align="left" >
                                                &nbsp;-11 短信内容超长！（70个字符） </td>
                                        </tr>
                                        <tr>
                                            <td align="left" >
                                            -12 其它错误！</td>
                                        </tr>
                                        <tr>
                                            <td align="left" >
                                            </td>
                                        </tr>
                                    </table>
                                    <br />
                                </asp:Panel>
                            </td>
                        </tr>
                    </table>
                </td>
                <td style="width: 615px; height: 685px;" valign="top">
                    <table border="0" cellpadding="0" cellspacing="0" style="width: 100%">
                        <tr>
                            <td style="width: 422px; height: 157px;" valign="top">
                               <asp:Panel ID="Panel4" runat="server" Width="450px" GroupingText="发短信" Height="131px">
                                  <table style="width: 100%" >
                                        <tr>
                                            <td align="center" style="width: 885px">
                                                手机号(多个用,号分隔)</td>
                                            <td style="width: 904px">
                                                短信内容(60-70字超过做下循环)</td>
                                        </tr>
                                        <tr>
                                            <td rowspan="2" style="width: 885px" valign="top">
                                                <asp:TextBox ID="txtSmsmob" runat="server" TextMode="MultiLine" Height="86px" Width="181px" BackColor="#FFC0C0"></asp:TextBox></td>
                                            <td style="width: 904px">
                                                <asp:TextBox ID="txtSms" runat="server" TextMode="MultiLine" Height="64px" Width="227px">您好！工作愉快！</asp:TextBox></td>
                                        </tr>
                                        <tr>
                                            <td style="width: 904px; height: 26px;" align="center">
                                                <asp:Button ID="bntSendNote" runat="server" Text="发送短信" OnClick="bntSendNote_Click" /></td>
                                        </tr>
                                    </table>
                                </asp:Panel>
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 422px; height: 183px;" align="left">
                                <asp:Panel ID="Panel5" runat="server" GroupingText="发传真" Width="450px" Height="162px">
                                    <table style="width: 98%">
                                        <tr>
                                            <td colspan="2" align="left">
                                                <asp:Label ID="Label2" runat="server" Text="收件人"></asp:Label>
                                                <asp:TextBox ID="txtMen" runat="server" Width="110px"></asp:TextBox>
                                                <asp:Label ID="Label3" runat="server" Text="文档名称"></asp:Label>
                                                <asp:TextBox ID="txtTitle" runat="server" Width="121px"></asp:TextBox></td>
                                        </tr>
                                        <tr>
                                            <td style="width: 100px" align="center">
                                                <asp:Label ID="Label4" runat="server" Text="接收号码"></asp:Label>
                                                <br />
                                                <asp:Label ID="Label5" runat="server" Text="逗号隔开"></asp:Label></td>
                                            <td align="left">
                                                <asp:TextBox ID="txtFaxNO" runat="server" TextMode="MultiLine" Width="258px" BackColor="#FFC0C0"></asp:TextBox></td>
                                        </tr>
                                        <tr>
                                            <td style="width: 100px" align="center">
                                                <asp:Label ID="Label6" runat="server" Text="传真文档"></asp:Label></td>
                                            <td align="left">
                                                <asp:FileUpload ID="fupFaxFilePath" runat="server" /></td>
                                        </tr>
                                        <tr>
                                            <td align="center" colspan="2" style="height: 21px">
                                                <asp:Button ID="btnSendFax" runat="server" Text="发送传真" OnClick="btnSendFax_Click" /></td>
                                        </tr>
                                    </table>
                                </asp:Panel>
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 422px" align="left">
                                <asp:Panel ID="Panel6" runat="server" GroupingText="语音引擎" Width="104%">
                                    <table style="width: 100%">
                                        <tr>
                                            <td style="width: 11px">
                                            </td>
                                            <td style="width: 108px;"  >
                                                &nbsp;<table>
                                                    <tr>
                                                        <td style="width: 87px; height: 35px">
                                                <asp:Label ID="Label1" runat="server" Height="19px" Text="接收号码(多个逗号隔开)" Width="150px"></asp:Label></td>
                                                        <td style="width: 111px; height: 35px">
                                                            <asp:Label ID="Label7" runat="server" Text="类型" Height="17px" Width="40px"></asp:Label></td>
                                                    </tr>
                                                </table>
                                            </td>
                                            <td  align="center"  >
                                                <table width="100%" style="height:100%">
                                                    <tr>
                                                        <td style="height: 48px;" align="left" colspan="3">
                                                            <asp:RadioButtonList ID="RadioButtonList1" runat="server"  Width="222px" RepeatDirection="Horizontal" OnSelectedIndexChanged="RadioButtonList1_SelectedIndexChanged" AutoPostBack="True" Height="49px"   >
                                                                <asp:ListItem Value="1" Selected="True">软件合成</asp:ListItem>
                                                               <asp:ListItem Value="2">人工合成</asp:ListItem> 
                                                                <asp:ListItem Value="3">录音文件</asp:ListItem>
                                                            </asp:RadioButtonList></td>
                                                    </tr>
                                                </table>
                                               
                                        </tr>
                                        <tr>
                                            <td rowspan="2" style="width: 11px">
                                            </td>
                                            <td rowspan="2" style="width: 108px">
                                                <asp:TextBox ID="txtFvTo" runat="server" TextMode="MultiLine" Height="68px" Width="196px" BackColor="#FFC0C0"></asp:TextBox><br />
                                            </td>
                                            <td style="width: 100px">
                                                <asp:Label ID="Label8" runat="server" Text="语音文字(8000个字)" Width="160px"></asp:Label></td>
                                        </tr>
                                        <tr>
                                            <td style="width: 100px;" valign="top">
                                                <asp:TextBox ID="txtFv" runat="server" MaxLength="8000" TextMode="MultiLine" Height="67px" Width="229px">移动商务应用中心，为您提供统一通信服务。系统测试中请稍侯！</asp:TextBox></td>
                                        </tr>
                                        <tr>
                                            <td style="width: 11px">
                                            </td>
                                            <td style="width: 108px">
                                                <asp:Label ID="Label9" runat="server" Text="客服号码(多个逗号隔开)" Width="142px"></asp:Label></td>
                                            <td style="width: 100px" align="left">
                                                <asp:Label ID="Label10" runat="server" Text="录音文件(*.WAV)" Width="168px"></asp:Label>
                                                <asp:FileUpload ID="fupFvFilePath" runat="server" /></td>
                                        </tr>
                                        <tr>
                                            <td style="width: 11px; height: 26px">
                                            </td>
                                            <td style="width: 108px; height: 26px;">
                                                <asp:TextBox ID="txtSvrNo" runat="server">075525599861</asp:TextBox></td>
                                            <td style="width: 100px; height: 26px;">
                                                <asp:Button ID="bntSendSound" runat="server" Text="发送语音" OnClick="bntSendSound_Click" /></td>
                                        </tr>
                                    </table>
                                </asp:Panel>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
        </table>
    
    </div>
    </form>
               
</body>
</html>
