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
 
    }


    protected void btnLook_Click(object sender, EventArgs e)
    {
        UNCOM.MyObject1 mycom = new UNCOM.MyObject1();
        txtResult.Text = mycom.GetUserInfo(this.txtUID.Text, this.txt_PWD.Text);
    }
    protected void bntSendNote_Click(object sender, EventArgs e)
    {
        UNCOM.MyObject1 com = new UNCOM.MyObject1();
        txtResult.Text = com.SendMessages(txtUID.Text, txt_PWD.Text, txtSmsmob.Text, txtSms.Text, "");
    }
    protected void btnSendFax_Click(object sender, EventArgs e)
    {
        UNCOM.MyObject1 mycom = new UNCOM.MyObject1();

    
        try
        {

            this.txtResult.Text = mycom.SendFax(txtUID.Text, txt_PWD.Text, txtFaxNO.Text, txtMen.Text, txtTitle.Text, this.fupFaxFilePath.PostedFile.FileName.ToString(), fupFaxFilePath.FileName.ToString());

        }
        catch
        {
        }
        finally
        {
            //   fs.Close();
        }

    }
    protected void bntSendSound_Click(object sender, EventArgs e)
    {
        UNCOM.MyObject1 mycom = new UNCOM.MyObject1();

        
      
        try
        {

            txtResult.Text = mycom.SendVoice(txtUID.Text, this.txt_PWD.Text, this.txtFvTo.Text, this.txtFv.Text, RadioButtonList1.SelectedValue.ToString(), fupFvFilePath.PostedFile.FileName.ToString(), txtSvrNo.Text, "", "");

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
      
    }
}
