using System;
using System.Data;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.IO;

public partial class _Default : System.Web.UI.Page 
{
    protected void Page_Load(object sender, EventArgs e)
    {
        this.txtFv.Enabled = true;
        this.fupFvFilePath.Enabled = false;

    }
    //查询余额
    protected void btnLook_Click(object sender, EventArgs e)
    {
        WebService.Service1 ws = new WebService.Service1();
       txtResult.Text=ws.GetUserInfo(txtUID.Text, txt_PWD.Text);
    }
    //发送短信
    protected void bntSendNote_Click(object sender, EventArgs e)
    {
        WebService.Service1 ws = new WebService.Service1();
        txtResult.Text = ws.SendMessages(txtUID.Text, txt_PWD.Text, txtSmsmob.Text, txtSms.Text, "");
    }
    //发送传真
    protected void btnSendFax_Click(object sender, EventArgs e)
    {
        byte[] buffer = new byte[0];
        if (fupFaxFilePath.FileName == "")
        {
         
            txtResult.Text="传真文件不能为空";
            return;
        }
        else
        {
            FileStream fs = new FileStream(fupFaxFilePath.PostedFile.FileName, FileMode.Open); //Client Side Path
            buffer = new byte[fs.Length];
            fs.Read(buffer, 0, buffer.Length);
            fs.Close();

        }

        string filename = fupFaxFilePath.PostedFile.FileName;
              
        WebService.Service1 ws = new WebService.Service1();
        
        try
        {

            this.txtResult.Text = ws.SendFax(txtUID.Text, txt_PWD.Text,txtFaxNO.Text, txtMen.Text,txtTitle.Text, buffer, filename);

        }
        catch
        { 
        }
        finally
        {
            //   fs.Close();
        }

    }
    //语言
    protected void bntSendSound_Click(object sender, EventArgs e)
    {
        try
        {
            byte[] buffer;

            if (RadioButtonList1.SelectedValue=="3")
            {
                string path = fupFvFilePath.FileName.ToString();
                if (fupFvFilePath.FileName == "")
                {
                    txtResult.Text="请选择语音文件。格式为.WAV 大小不要超过 5M";                  
                    return;
                }
                else
                {                
                    int i = fupFvFilePath.FileName.LastIndexOf(".");
                      //取得文档扩展名
                    string newext = fupFvFilePath.FileName.Substring(i+1).ToLower();
                    if (!newext.Equals("wav"))
                    {
                        txtResult.Text = "语音文件格式不正确";
                        return;
                    }

                }
                FileStream fs = new FileStream(fupFvFilePath.PostedFile.FileName, FileMode.Open);
                buffer = new byte[fs.Length];
                fs.Read(buffer, 0, buffer.Length);
                fs.Close();

            }
            else
            {
                buffer = new byte[0];
            }
       
            WebService.Service1 ws = new WebService.Service1();

            txtResult.Text = ws.SendVoice(txtUID.Text, this.txt_PWD.Text, this.txtFvTo.Text, this.txtFv.Text, RadioButtonList1.SelectedValue.ToString(), buffer, txtSvrNo.Text, "", "");

        }
        catch
        {
            txtResult.Text = "出错了";  
        }
        finally
        {
            // fs.Close();
        }
    }




    protected void RadioButtonList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (RadioButtonList1.SelectedValue == "3")
        {
            this.fupFvFilePath.Enabled = true; 
            this.txtFv.Enabled = false;

        }
    }
    
}
