<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default2.aspx.cs" Inherits="Default2" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>无标题页</title>
<script language="javascript" type="text/javascript">
<!--

function TABLE1_onclick() {

}

// -->
</script>
</head>
<body>
    
    <form id="form1" runat="server"> 
   <table width="594" >
   <tr>
   <td></td>
   <td valign="top"  align=center style="width: 800px">
	<table id="TABLE1" language="javascript" onclick="return TABLE1_onclick()" >
			<tr>
				<td style="width: 463px; height: 92px;" valign="top">
					<asp:Panel ID="Panel1" runat="server" GroupingText="帐户信息" Width="444px" Height="85px">
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
				<td  align="left" style="width: 463px" >
					&nbsp;<br />
				   <asp:Panel ID="Panel4" runat="server" GroupingText="网络电话" Height="66px" Width="467px">
					  <table  >
							<tr>
								<td align="center" style="height: 47px; width: 208px;" >
									主叫<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox></td>
								<td style="height: 47px; width: 214px;">
									被叫<asp:TextBox ID="TextBox2" runat="server"></asp:TextBox></td>
									<td style="width: 75px; height: 47px"> <asp:Button ID="Button1" runat="server" Text="拨打" Height="24px" OnClick="Button1_Click"   /></td>
							</tr>

						</table>
				 </asp:Panel> 
				 </td> 
			</tr>
			
			<tr>
				<td style="width: 463px"  >
				<asp:Panel ID="Panel5" runat="server" GroupingText="语音发送记录" Height="134px" Width="443px" >
					<table style="width: 449px; height: 106px" >
						<tr>
							<td colspan="2" align="left"  nowrap="noWrap"  >
							 记录返回编号：<asp:TextBox ID="TextBox3" runat="server"></asp:TextBox></td>
						</tr>
						<tr> <td style="width: 445px" >
                            开始时间:<asp:TextBox ID="TextBox4" runat="server"></asp:TextBox> 
								 
											到<asp:TextBox ID="TextBox5" runat="server"></asp:TextBox></td>
					  </tr>
									<tr><td colspan="2" style="width: 190px; height: 33px;">     <asp:Button ID="Button2" runat="server" Text="查询语音发送记录" OnClick="Button2_Click" />&nbsp;</td></tr> 
						 
				  </table>
				
				</asp:Panel>
				</td>
				</tr>
				
				<tr>
				<td style="width: 463px; height: 157px"  >
					<asp:Panel ID="Panel6" runat="server" GroupingText="传真发送记录" Height="142px" Width="440px" >
						<table   >
							<tr>
								<td width="490" colspan="2"  >
									&nbsp;&nbsp; 记录返回编号：
							  <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox></td>
							</tr>
							<tr>
								<td align="center" colspan="2"  > 
												开始时间<asp:TextBox ID="TextBox7" runat="server"></asp:TextBox> 
												到<asp:TextBox ID="TextBox8" runat="server"></asp:TextBox></td> 
							</tr>
							<tr>
							<td colspan=2> 
                                <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="查询传真发送记录" /></td></tr>
				 
					
				 
					</table>
					</asp:Panel>
                    <br />
                    <asp:Panel ID="Panel7" runat="server" GroupingText="短信发送记录" Height="142px" Width="440px" >
                        <table   >
                            <tr>
                                <td width="490" colspan="2"  >
                                    &nbsp;&nbsp; 记录返回编号：
                                    <asp:TextBox ID="TextBox9" runat="server"></asp:TextBox></td>
                            </tr>
                            <tr>
                                <td align="center" colspan="2"  >
                                    开始时间<asp:TextBox ID="TextBox10" runat="server"></asp:TextBox>
                                    到<asp:TextBox ID="TextBox11" runat="server"></asp:TextBox></td>
                            </tr>
                            <tr>
                                <td colspan=2>
                                    <asp:Button ID="Button4" runat="server" OnClick="Button4_Click" Text="查询短信发送记录" /></td>
                            </tr>
                        </table>
                    </asp:Panel>
                    <br />
					 
				</td>
			</tr>   
			<tr>
			
			<td style="height: 40px"><font color=red> &nbsp;*注意：填写编号与日期二选一<br />
										时间格式:2008-01-01</font> </td></tr>
			</table>
	
	</td>
<td width="73">

                    <table border="0" cellpadding="0" cellspacing="0" style="width: 100%">
                        <tr>
                            <td style="width: 422px" align="left">
                                &nbsp;<asp:Panel ID="Panel2" runat="server" GroupingText="执行后返回状态(请对昭下面的返回参数说明表)" Width="402px" HorizontalAlign="Left" Height="107px" >
                                    <br />
                                    <asp:TextBox ID="txtResult" runat="server" TextMode="MultiLine" Height="253px" Width="360px"></asp:TextBox><br />
                                </asp:Panel>
                                <asp:Panel ID="Panel3" runat="server" GroupingText="返参数说明表" Height="134px" HorizontalAlign="Left"
                                    Width="397px">
                                    <table style="width: 100%">
                                        <tr>
                                            <td align="left">
                                                返回状态码
                                            </td>
                                        </tr>
                                        <tr>
                                            <td align="left" style="height: 23px">
                                                信息编号或000 成功！</td>
                                        </tr>
                                        <tr>
                                            <td align="left">
                                                -01 当前账号余额不足！</td>
                                        </tr>
                                        <tr>
                                            <td align="left">
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
                                            <td align="left">
                                                -06 短信内容编码不对！</td>
                                        </tr>
                                        <tr>
                                            <td align="left">
                                                &nbsp;-07 短信内容含有敏感字符！</td>
                                        </tr>
                                        <tr>
                                            <td align="left">
                                                -08 无接收数据</td>
                                        </tr>
                                        <tr>
                                            <td align="left">
                                                -09 系统维护中</td>
                                        </tr>
                                        <tr>
                                            <td align="left">
                                                &nbsp;-10 手机号码数量超长！数量超长！（100个/次 超100个请自行做循环）</td>
                                        </tr>
                                        <tr>
                                            <td align="left">
                                                &nbsp;-11 短信内容超长！（70个字符） 
                                            </td>
                                        </tr>
                                        <tr>
                                            <td align="left">
                                            -12 其它错误！</td>
                                        </tr>
                                        <tr>
                                            <td align="left">
                                            </td>
                                        </tr>
                                    </table>
                                    <br />
                                </asp:Panel>
                            </td>
                        </tr>
                    </table>
     







</td>
<td></td>
</tr>

</table>
    
 
    
    </form>
</body>
</html>
