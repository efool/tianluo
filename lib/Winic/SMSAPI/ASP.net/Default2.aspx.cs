using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;

public partial class Default2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnLook_Click(object sender, EventArgs e)
    {

        WebService.Service1 ws = new WebService.Service1();
        txtResult.Text = ws.GetUserInfo(txtUID.Text, txt_PWD.Text);
            }

    //网络电话
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        { 
              WebService.Service1 ws = new WebService.Service1();
        txtResult.Text = ws.TelCall(this.txtUID.Text, txt_PWD.Text,this.TextBox1.Text.Trim(),this.TextBox2.Text.Trim());
        }
        catch(Exception ex)
        {
            string xx = ex.ToString();
        }
  
    }

    //语音发送记录
    protected void Button2_Click(object sender, EventArgs e)
    {
        WebService.Service1 ws = new WebService.Service1();
        txtResult.Text = ws.GetVoiceRecord(this.txtUID.Text, txt_PWD.Text, this.TextBox3.Text.Trim(), this.TextBox4.Text.Trim(), this.TextBox5.Text.Trim());
    }
    //传真发送记录
    protected void Button3_Click(object sender, EventArgs e)
    {
        WebService.Service1 ws = new WebService.Service1();
        txtResult.Text = ws.GetFaxRecord(this.txtUID.Text, txt_PWD.Text, this.TextBox6.Text.Trim(), this.TextBox7.Text.Trim(), this.TextBox8.Text.Trim());
    }

    //发送短信记录
    protected void Button4_Click(object sender, EventArgs e)
    {
        WebService.Service1 ws = new WebService.Service1();
        txtResult.Text = ws.GetMessageRecord(this.txtUID.Text, txt_PWD.Text, this.TextBox9.Text.Trim(), this.TextBox10.Text.Trim(), this.TextBox11.Text.Trim());
    }
}
