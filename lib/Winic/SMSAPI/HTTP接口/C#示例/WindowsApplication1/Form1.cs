using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Text;
using System.Windows.Forms;
using MSXML2;//����com microsoft.xml.3.0

namespace WindowsApplication1
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }

 
        private void button1_Click_1(object sender, EventArgs e)
        {

            string uid = t_uid.Text.Trim();
            string pwd = t_pwd.Text.Trim();
            string mob = t_mob.Text.Trim();
            string msg = t_msg.Text.Trim();
            string Send_URL = "http://service.winic.org/sys_port/gateway/?id=" + uid + "&pwd=" + pwd + "&to=" + mob + "&content=" + msg + "&time=";

            //____________________________
            
            MSXML2.XMLHTTP xmlhttp = new MSXML2.XMLHTTP();

            xmlhttp.open("GET", Send_URL, false, null, null);
            xmlhttp.send("");
            MSXML2.XMLDocument dom = new XMLDocument();
            Byte[] b = (Byte[])xmlhttp.responseBody;

            //string Flag = System.Text.ASCIIEncoding.UTF8.GetString(b, 0, b.Length);
            string andy = System.Text.Encoding.GetEncoding("GB2312").GetString(b).Trim();
 
            vtag.Text = andy;
  
         
        }

        private void button2_Click(object sender, EventArgs e)
        {

            string uid = t_uid.Text.Trim();
            string pwd = t_pwd.Text.Trim();

            string Send_URL = "http://service.winic.org/webservice/public/remoney.asp?uid="+uid+"&pwd="+pwd+"";

            //____________________________
            
            MSXML2.XMLHTTP xmlhttp = new MSXML2.XMLHTTP();

            xmlhttp.open("GET", Send_URL, false, null, null);
            xmlhttp.send("");
            MSXML2.XMLDocument dom = new XMLDocument();
            Byte[] b = (Byte[])xmlhttp.responseBody;

            //string Flag = System.Text.ASCIIEncoding.UTF8.GetString(b, 0, b.Length);
            string andy = System.Text.Encoding.GetEncoding("GB2312").GetString(b).Trim();
 
            vtag.Text = andy;
            
        }


    }
}