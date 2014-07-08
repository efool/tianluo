using System;
using System.Drawing;
using System.Collections;
using System.ComponentModel;
using System.Windows.Forms;
using System.Data;
using System.IO;

namespace WindowsApplication1
{
	/// <summary>
	/// Form1 的摘要说明。
	/// </summary>
	public class Form1 : System.Windows.Forms.Form
    {
        private System.Windows.Forms.OpenFileDialog openFileDialog1;
        private GroupBox groupBox3;
        private Button button1;
        private Label label5;
        private Label label4;
        private TextBox pwd;
        private TextBox uid;
        private RichTextBox btxt;
        private Label label6;
        private RichTextBox richTextBox1;
        private Label label11;
        private GroupBox mode3;
        private RadioButton mode2;
        private RadioButton mode4;
        private RadioButton mode5;
        private Label label14;
        private RichTextBox fvtxt;
        private Label label13;
        private Label label15;
        private RichTextBox fvto;
        private Label label16;
        private Button btf;
        private TextBox fvfile;
        private Button button5;
        private GroupBox groupBox2;
        private Button button4;
        private Label label7;
        private Label label3;
        private RichTextBox smstxt;
        private RichTextBox smsmob;
        private GroupBox groupBox1;
        private Label label10;
        private Label label1;
        private Label label9;
        private TextBox title;
        private TextBox men;
        private Label label8;
        private RichTextBox faxno;
        private Label label2;
        private Button button3;
        private TextBox filepath;
        private Button button6;
        private TextBox mode;
        private Label label12;
        private TextBox v_svrno;
		/// <summary>
		/// 必需的设计器变量。
		/// </summary>
		private System.ComponentModel.Container components = null;

		public Form1()
		{
			//
			// Windows 窗体设计器支持所必需的
			//
			InitializeComponent();

			//
			// TODO: 在 InitializeComponent 调用后添加任何构造函数代码
			//
		}

		/// <summary>
		/// 清理所有正在使用的资源。
		/// </summary>
		protected override void Dispose( bool disposing )
		{
			if( disposing )
			{
				if (components != null) 
				{
					components.Dispose();
				}
			}
			base.Dispose( disposing );
		}

		#region Windows 窗体设计器生成的代码
		/// <summary>
		/// 设计器支持所需的方法 - 不要使用代码编辑器修改
		/// 此方法的内容。
		/// </summary>
		private void InitializeComponent()
		{
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(Form1));
            this.openFileDialog1 = new System.Windows.Forms.OpenFileDialog();
            this.groupBox3 = new System.Windows.Forms.GroupBox();
            this.button1 = new System.Windows.Forms.Button();
            this.label5 = new System.Windows.Forms.Label();
            this.label4 = new System.Windows.Forms.Label();
            this.pwd = new System.Windows.Forms.TextBox();
            this.uid = new System.Windows.Forms.TextBox();
            this.btxt = new System.Windows.Forms.RichTextBox();
            this.label6 = new System.Windows.Forms.Label();
            this.richTextBox1 = new System.Windows.Forms.RichTextBox();
            this.label11 = new System.Windows.Forms.Label();
            this.mode3 = new System.Windows.Forms.GroupBox();
            this.mode = new System.Windows.Forms.TextBox();
            this.mode2 = new System.Windows.Forms.RadioButton();
            this.mode4 = new System.Windows.Forms.RadioButton();
            this.mode5 = new System.Windows.Forms.RadioButton();
            this.label14 = new System.Windows.Forms.Label();
            this.fvtxt = new System.Windows.Forms.RichTextBox();
            this.label13 = new System.Windows.Forms.Label();
            this.label15 = new System.Windows.Forms.Label();
            this.fvto = new System.Windows.Forms.RichTextBox();
            this.label16 = new System.Windows.Forms.Label();
            this.btf = new System.Windows.Forms.Button();
            this.fvfile = new System.Windows.Forms.TextBox();
            this.button5 = new System.Windows.Forms.Button();
            this.groupBox2 = new System.Windows.Forms.GroupBox();
            this.button4 = new System.Windows.Forms.Button();
            this.label7 = new System.Windows.Forms.Label();
            this.label3 = new System.Windows.Forms.Label();
            this.smstxt = new System.Windows.Forms.RichTextBox();
            this.smsmob = new System.Windows.Forms.RichTextBox();
            this.groupBox1 = new System.Windows.Forms.GroupBox();
            this.button6 = new System.Windows.Forms.Button();
            this.label10 = new System.Windows.Forms.Label();
            this.label1 = new System.Windows.Forms.Label();
            this.label9 = new System.Windows.Forms.Label();
            this.title = new System.Windows.Forms.TextBox();
            this.men = new System.Windows.Forms.TextBox();
            this.label8 = new System.Windows.Forms.Label();
            this.faxno = new System.Windows.Forms.RichTextBox();
            this.label2 = new System.Windows.Forms.Label();
            this.button3 = new System.Windows.Forms.Button();
            this.filepath = new System.Windows.Forms.TextBox();
            this.v_svrno = new System.Windows.Forms.TextBox();
            this.label12 = new System.Windows.Forms.Label();
            this.groupBox3.SuspendLayout();
            this.mode3.SuspendLayout();
            this.groupBox2.SuspendLayout();
            this.groupBox1.SuspendLayout();
            this.SuspendLayout();
            // 
            // groupBox3
            // 
            this.groupBox3.BackColor = System.Drawing.SystemColors.Control;
            this.groupBox3.Controls.Add(this.button1);
            this.groupBox3.Controls.Add(this.label5);
            this.groupBox3.Controls.Add(this.label4);
            this.groupBox3.Controls.Add(this.pwd);
            this.groupBox3.Controls.Add(this.uid);
            this.groupBox3.Location = new System.Drawing.Point(13, 9);
            this.groupBox3.Name = "groupBox3";
            this.groupBox3.Size = new System.Drawing.Size(348, 55);
            this.groupBox3.TabIndex = 7;
            this.groupBox3.TabStop = false;
            this.groupBox3.Text = "账户信息";
            // 
            // button1
            // 
            this.button1.Location = new System.Drawing.Point(263, 17);
            this.button1.Name = "button1";
            this.button1.Size = new System.Drawing.Size(69, 23);
            this.button1.TabIndex = 5;
            this.button1.Text = "查询账户";
            this.button1.UseVisualStyleBackColor = true;
            this.button1.Click += new System.EventHandler(this.button1_Click);
            // 
            // label5
            // 
            this.label5.Location = new System.Drawing.Point(135, 22);
            this.label5.Name = "label5";
            this.label5.Size = new System.Drawing.Size(29, 14);
            this.label5.TabIndex = 4;
            this.label5.Text = "密码";
            // 
            // label4
            // 
            this.label4.Location = new System.Drawing.Point(6, 22);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(31, 16);
            this.label4.TabIndex = 3;
            this.label4.Text = "账号";
            // 
            // pwd
            // 
            this.pwd.Location = new System.Drawing.Point(170, 17);
            this.pwd.Name = "pwd";
            this.pwd.Size = new System.Drawing.Size(87, 21);
            this.pwd.TabIndex = 2;
            this.pwd.Text = "123456";
            // 
            // uid
            // 
            this.uid.Location = new System.Drawing.Point(43, 17);
            this.uid.Name = "uid";
            this.uid.Size = new System.Drawing.Size(86, 21);
            this.uid.TabIndex = 1;
            this.uid.Text = "test";
            // 
            // btxt
            // 
            this.btxt.Location = new System.Drawing.Point(12, 115);
            this.btxt.Name = "btxt";
            this.btxt.Size = new System.Drawing.Size(348, 69);
            this.btxt.TabIndex = 8;
            this.btxt.Text = "";
            // 
            // label6
            // 
            this.label6.AutoSize = true;
            this.label6.Font = new System.Drawing.Font("宋体", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(134)));
            this.label6.ForeColor = System.Drawing.SystemColors.ActiveCaption;
            this.label6.Location = new System.Drawing.Point(9, 78);
            this.label6.Name = "label6";
            this.label6.Size = new System.Drawing.Size(344, 16);
            this.label6.TabIndex = 9;
            this.label6.Text = "执行后返回状态(请对昭下面的返回参数说明表)";
            // 
            // richTextBox1
            // 
            this.richTextBox1.BackColor = System.Drawing.SystemColors.ControlLight;
            this.richTextBox1.BorderStyle = System.Windows.Forms.BorderStyle.None;
            this.richTextBox1.Location = new System.Drawing.Point(12, 220);
            this.richTextBox1.Name = "richTextBox1";
            this.richTextBox1.Size = new System.Drawing.Size(348, 370);
            this.richTextBox1.TabIndex = 10;
            this.richTextBox1.Text = resources.GetString("richTextBox1.Text");
            // 
            // label11
            // 
            this.label11.AutoSize = true;
            this.label11.Font = new System.Drawing.Font("宋体", 14.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(134)));
            this.label11.ForeColor = System.Drawing.SystemColors.ActiveCaption;
            this.label11.Location = new System.Drawing.Point(9, 188);
            this.label11.Name = "label11";
            this.label11.Size = new System.Drawing.Size(123, 19);
            this.label11.TabIndex = 11;
            this.label11.Text = "返参数说明表";
            // 
            // mode3
            // 
            this.mode3.BackColor = System.Drawing.SystemColors.Control;
            this.mode3.Controls.Add(this.label12);
            this.mode3.Controls.Add(this.v_svrno);
            this.mode3.Controls.Add(this.mode);
            this.mode3.Controls.Add(this.mode2);
            this.mode3.Controls.Add(this.mode4);
            this.mode3.Controls.Add(this.mode5);
            this.mode3.Controls.Add(this.label14);
            this.mode3.Controls.Add(this.fvtxt);
            this.mode3.Controls.Add(this.label13);
            this.mode3.Controls.Add(this.label15);
            this.mode3.Controls.Add(this.fvto);
            this.mode3.Controls.Add(this.label16);
            this.mode3.Controls.Add(this.btf);
            this.mode3.Controls.Add(this.fvfile);
            this.mode3.Controls.Add(this.button5);
            this.mode3.Location = new System.Drawing.Point(382, 369);
            this.mode3.Name = "mode3";
            this.mode3.Size = new System.Drawing.Size(470, 221);
            this.mode3.TabIndex = 15;
            this.mode3.TabStop = false;
            this.mode3.Text = "语音引擎";
            // 
            // mode
            // 
            this.mode.Location = new System.Drawing.Point(433, 17);
            this.mode.Name = "mode";
            this.mode.ReadOnly = true;
            this.mode.Size = new System.Drawing.Size(20, 21);
            this.mode.TabIndex = 22;
            this.mode.Text = "1";
            // 
            // mode2
            // 
            this.mode2.AutoSize = true;
            this.mode2.Location = new System.Drawing.Point(278, 21);
            this.mode2.Name = "mode2";
            this.mode2.Size = new System.Drawing.Size(71, 16);
            this.mode2.TabIndex = 21;
            this.mode2.Text = "软件合成";
            this.mode2.UseVisualStyleBackColor = true;
            this.mode2.CheckedChanged += new System.EventHandler(this.mode2_CheckedChanged);
            // 
            // mode4
            // 
            this.mode4.AutoSize = true;
            this.mode4.Location = new System.Drawing.Point(356, 21);
            this.mode4.Name = "mode4";
            this.mode4.Size = new System.Drawing.Size(71, 16);
            this.mode4.TabIndex = 20;
            this.mode4.Text = "录音文件";
            this.mode4.UseVisualStyleBackColor = true;
            this.mode4.CheckedChanged += new System.EventHandler(this.radioButton2_CheckedChanged_1);
            // 
            // mode5
            // 
            this.mode5.AutoSize = true;
            this.mode5.Checked = true;
            this.mode5.Location = new System.Drawing.Point(200, 20);
            this.mode5.Name = "mode5";
            this.mode5.Size = new System.Drawing.Size(71, 16);
            this.mode5.TabIndex = 19;
            this.mode5.TabStop = true;
            this.mode5.Text = "人工合成";
            this.mode5.UseVisualStyleBackColor = true;
            this.mode5.CheckedChanged += new System.EventHandler(this.mode5_CheckedChanged);
            // 
            // label14
            // 
            this.label14.AutoSize = true;
            this.label14.Location = new System.Drawing.Point(165, 21);
            this.label14.Name = "label14";
            this.label14.Size = new System.Drawing.Size(29, 12);
            this.label14.TabIndex = 18;
            this.label14.Text = "类型";
            // 
            // fvtxt
            // 
            this.fvtxt.BackColor = System.Drawing.SystemColors.ButtonHighlight;
            this.fvtxt.ForeColor = System.Drawing.SystemColors.HotTrack;
            this.fvtxt.Location = new System.Drawing.Point(166, 65);
            this.fvtxt.Name = "fvtxt";
            this.fvtxt.Size = new System.Drawing.Size(291, 72);
            this.fvtxt.TabIndex = 17;
            this.fvtxt.Text = "移动商务应用中心，为您提供统一通信服务。系统测试中请稍侯！";
            // 
            // label13
            // 
            this.label13.AutoSize = true;
            this.label13.Location = new System.Drawing.Point(161, 148);
            this.label13.Name = "label13";
            this.label13.Size = new System.Drawing.Size(53, 12);
            this.label13.TabIndex = 15;
            this.label13.Text = "录音文件";
            // 
            // label15
            // 
            this.label15.AutoSize = true;
            this.label15.Location = new System.Drawing.Point(165, 50);
            this.label15.Name = "label15";
            this.label15.Size = new System.Drawing.Size(113, 12);
            this.label15.TabIndex = 11;
            this.label15.Text = "语音文字(8000个字)";
            // 
            // fvto
            // 
            this.fvto.BackColor = System.Drawing.SystemColors.Info;
            this.fvto.Location = new System.Drawing.Point(6, 38);
            this.fvto.Name = "fvto";
            this.fvto.Size = new System.Drawing.Size(153, 110);
            this.fvto.TabIndex = 10;
            this.fvto.Text = "";
            // 
            // label16
            // 
            this.label16.AutoSize = true;
            this.label16.Location = new System.Drawing.Point(6, 17);
            this.label16.Name = "label16";
            this.label16.Size = new System.Drawing.Size(137, 12);
            this.label16.TabIndex = 7;
            this.label16.Text = "接收号码(多个逗号隔开)";
            // 
            // btf
            // 
            this.btf.Enabled = false;
            this.btf.Location = new System.Drawing.Point(409, 143);
            this.btf.Name = "btf";
            this.btf.Size = new System.Drawing.Size(48, 23);
            this.btf.TabIndex = 6;
            this.btf.Text = "*.WAV";
            this.btf.Click += new System.EventHandler(this.button2_Click_1);
            // 
            // fvfile
            // 
            this.fvfile.Enabled = false;
            this.fvfile.Location = new System.Drawing.Point(220, 145);
            this.fvfile.Name = "fvfile";
            this.fvfile.Size = new System.Drawing.Size(184, 21);
            this.fvfile.TabIndex = 3;
            // 
            // button5
            // 
            this.button5.Location = new System.Drawing.Point(242, 172);
            this.button5.Name = "button5";
            this.button5.Size = new System.Drawing.Size(128, 37);
            this.button5.TabIndex = 1;
            this.button5.Text = "发送语音";
            this.button5.Click += new System.EventHandler(this.button5_Click);
            // 
            // groupBox2
            // 
            this.groupBox2.BackColor = System.Drawing.SystemColors.Control;
            this.groupBox2.Controls.Add(this.button4);
            this.groupBox2.Controls.Add(this.label7);
            this.groupBox2.Controls.Add(this.label3);
            this.groupBox2.Controls.Add(this.smstxt);
            this.groupBox2.Controls.Add(this.smsmob);
            this.groupBox2.Location = new System.Drawing.Point(382, 2);
            this.groupBox2.Name = "groupBox2";
            this.groupBox2.Size = new System.Drawing.Size(470, 157);
            this.groupBox2.TabIndex = 14;
            this.groupBox2.TabStop = false;
            this.groupBox2.Text = "发短信";
            // 
            // button4
            // 
            this.button4.Location = new System.Drawing.Point(242, 113);
            this.button4.Name = "button4";
            this.button4.Size = new System.Drawing.Size(152, 40);
            this.button4.TabIndex = 13;
            this.button4.Text = "发送短信";
            this.button4.UseVisualStyleBackColor = true;
            this.button4.Click += new System.EventHandler(this.button4_Click_1);
            // 
            // label7
            // 
            this.label7.Location = new System.Drawing.Point(206, 17);
            this.label7.Name = "label7";
            this.label7.Size = new System.Drawing.Size(188, 14);
            this.label7.TabIndex = 12;
            this.label7.Text = "短信内容(60-70字超过做下循环)";
            // 
            // label3
            // 
            this.label3.Location = new System.Drawing.Point(6, 17);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(144, 14);
            this.label3.TabIndex = 11;
            this.label3.Text = "手机号(多个用,号分隔)";
            // 
            // smstxt
            // 
            this.smstxt.BackColor = System.Drawing.SystemColors.ButtonHighlight;
            this.smstxt.ForeColor = System.Drawing.SystemColors.HotTrack;
            this.smstxt.Location = new System.Drawing.Point(177, 34);
            this.smstxt.Name = "smstxt";
            this.smstxt.Size = new System.Drawing.Size(282, 73);
            this.smstxt.TabIndex = 10;
            this.smstxt.Text = "您好！工作愉快！";
            // 
            // smsmob
            // 
            this.smsmob.BackColor = System.Drawing.SystemColors.Info;
            this.smsmob.Location = new System.Drawing.Point(8, 34);
            this.smsmob.Name = "smsmob";
            this.smsmob.Size = new System.Drawing.Size(163, 113);
            this.smsmob.TabIndex = 9;
            this.smsmob.Text = "";
            // 
            // groupBox1
            // 
            this.groupBox1.BackColor = System.Drawing.SystemColors.Control;
            this.groupBox1.Controls.Add(this.button6);
            this.groupBox1.Controls.Add(this.label10);
            this.groupBox1.Controls.Add(this.label1);
            this.groupBox1.Controls.Add(this.label9);
            this.groupBox1.Controls.Add(this.title);
            this.groupBox1.Controls.Add(this.men);
            this.groupBox1.Controls.Add(this.label8);
            this.groupBox1.Controls.Add(this.faxno);
            this.groupBox1.Controls.Add(this.label2);
            this.groupBox1.Controls.Add(this.button3);
            this.groupBox1.Controls.Add(this.filepath);
            this.groupBox1.Location = new System.Drawing.Point(382, 165);
            this.groupBox1.Name = "groupBox1";
            this.groupBox1.Size = new System.Drawing.Size(470, 185);
            this.groupBox1.TabIndex = 13;
            this.groupBox1.TabStop = false;
            this.groupBox1.Text = "发传真";
            // 
            // button6
            // 
            this.button6.Location = new System.Drawing.Point(200, 146);
            this.button6.Name = "button6";
            this.button6.Size = new System.Drawing.Size(109, 33);
            this.button6.TabIndex = 17;
            this.button6.Text = "发送传真";
            this.button6.UseVisualStyleBackColor = true;
            this.button6.Click += new System.EventHandler(this.button6_Click);
            // 
            // label10
            // 
            this.label10.AutoSize = true;
            this.label10.Location = new System.Drawing.Point(15, 89);
            this.label10.Name = "label10";
            this.label10.Size = new System.Drawing.Size(53, 12);
            this.label10.TabIndex = 16;
            this.label10.Text = "逗号隔开";
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(15, 122);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(53, 12);
            this.label1.TabIndex = 15;
            this.label1.Text = "传真文档";
            // 
            // label9
            // 
            this.label9.AutoSize = true;
            this.label9.Location = new System.Drawing.Point(179, 23);
            this.label9.Name = "label9";
            this.label9.Size = new System.Drawing.Size(53, 12);
            this.label9.TabIndex = 14;
            this.label9.Text = "文档名称";
            // 
            // title
            // 
            this.title.Location = new System.Drawing.Point(249, 20);
            this.title.Name = "title";
            this.title.Size = new System.Drawing.Size(100, 21);
            this.title.TabIndex = 13;
            this.title.Text = "报价表";
            // 
            // men
            // 
            this.men.Location = new System.Drawing.Point(59, 20);
            this.men.Name = "men";
            this.men.Size = new System.Drawing.Size(100, 21);
            this.men.TabIndex = 12;
            this.men.Text = "张三";
            // 
            // label8
            // 
            this.label8.AutoSize = true;
            this.label8.Location = new System.Drawing.Point(12, 23);
            this.label8.Name = "label8";
            this.label8.Size = new System.Drawing.Size(41, 12);
            this.label8.TabIndex = 11;
            this.label8.Text = "收件人";
            // 
            // faxno
            // 
            this.faxno.BackColor = System.Drawing.SystemColors.Info;
            this.faxno.Location = new System.Drawing.Point(77, 47);
            this.faxno.Name = "faxno";
            this.faxno.Size = new System.Drawing.Size(382, 66);
            this.faxno.TabIndex = 10;
            this.faxno.Text = "";
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(15, 64);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(53, 12);
            this.label2.TabIndex = 7;
            this.label2.Text = "接收号码";
            // 
            // button3
            // 
            this.button3.Location = new System.Drawing.Point(387, 117);
            this.button3.Name = "button3";
            this.button3.Size = new System.Drawing.Size(40, 23);
            this.button3.TabIndex = 6;
            this.button3.Text = "浏览文件";
            this.button3.Click += new System.EventHandler(this.button3_Click_1);
            // 
            // filepath
            // 
            this.filepath.Location = new System.Drawing.Point(77, 119);
            this.filepath.Name = "filepath";
            this.filepath.Size = new System.Drawing.Size(304, 21);
            this.filepath.TabIndex = 3;
            // 
            // v_svrno
            // 
            this.v_svrno.Location = new System.Drawing.Point(6, 181);
            this.v_svrno.Name = "v_svrno";
            this.v_svrno.Size = new System.Drawing.Size(151, 21);
            this.v_svrno.TabIndex = 23;
            this.v_svrno.Text = "075525599861";
            // 
            // label12
            // 
            this.label12.AutoSize = true;
            this.label12.Location = new System.Drawing.Point(6, 154);
            this.label12.Name = "label12";
            this.label12.Size = new System.Drawing.Size(137, 12);
            this.label12.TabIndex = 24;
            this.label12.Text = "客服号码(多个逗号隔开)";
            // 
            // Form1
            // 
            this.AutoScaleBaseSize = new System.Drawing.Size(6, 14);
            this.ClientSize = new System.Drawing.Size(875, 608);
            this.Controls.Add(this.mode3);
            this.Controls.Add(this.groupBox2);
            this.Controls.Add(this.groupBox1);
            this.Controls.Add(this.label11);
            this.Controls.Add(this.richTextBox1);
            this.Controls.Add(this.label6);
            this.Controls.Add(this.groupBox3);
            this.Controls.Add(this.btxt);
            this.Font = new System.Drawing.Font("宋体", 9F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(134)));
            this.Name = "Form1";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "c#调用webservice Demo";
            this.groupBox3.ResumeLayout(false);
            this.groupBox3.PerformLayout();
            this.mode3.ResumeLayout(false);
            this.mode3.PerformLayout();
            this.groupBox2.ResumeLayout(false);
            this.groupBox1.ResumeLayout(false);
            this.groupBox1.PerformLayout();
            this.ResumeLayout(false);
            this.PerformLayout();

		}
		#endregion

		/// <summary>
		/// 应用程序的主入口点。
		/// </summary>
		[STAThread]
		static void Main() 
		{
			Application.Run(new Form1());
		}

 

		private void button2_Click(object sender, System.EventArgs e)
		{
			if (filepath.Text=="")
			{
				MessageBox.Show("传真文件不能为空");
				return;
			}

            string filename = filepath.Text.Substring(filepath.Text.LastIndexOf("\\")).Replace("\\", ""); //根据全路径取文件名

           // MessageBox.Show(filename);
            Service1.Service1 xx = new Service1.Service1() ;
		 
			FileStream fs = new FileStream(filepath.Text, FileMode.Open); //Client Side Path
			byte[] buffer = new byte[fs.Length];
			fs.Read(buffer, 0, buffer.Length);
 
            try
            {

                btxt.Text = xx.SendFax(uid.Text, pwd.Text, faxno.Text, men.Text, title.Text, buffer, filename);

            }
            catch
            {
                MessageBox.Show("出错");
            }
            finally
            {
                fs.Close();
            }
		}

		private void label2_Click(object sender, System.EventArgs e)
		{
		
		}

		private void textBox2_TextChanged(object sender, System.EventArgs e)
		{
		
		}

		private void button3_Click(object sender, System.EventArgs e)
		{
            openFileDialog1.Multiselect = true;
			openFileDialog1.ShowDialog();
			//if (openFileDialog1.ShowDialog())
            if (openFileDialog1.FileName != "")
            {
                filepath.Text = openFileDialog1.FileName;
               // filename.Text = openFileDialog1.FileName.Substring(openFileDialog1.FileName.LastIndexOf("\\")).Replace("\\", "");//取用户名和后缀
            }
		}

        private void button1_Click(object sender, EventArgs e)
        {
            Service1.Service1 getid = new Service1.Service1();
         btxt.Text=getid.GetUserInfo(uid.Text,pwd.Text);
            
        }

  
        private void button4_Click_1(object sender, EventArgs e)
        {
            Service1.Service1 sendmsg = new Service1.Service1();
            btxt.Text = sendmsg.SendMessages(uid.Text, pwd.Text, smsmob.Text, smstxt.Text, "");
        }

        private void 发送传真_Click(object sender, EventArgs e)
        {
            if (filepath.Text == "")
            {
                MessageBox.Show("传真文件不能为空");
                return;
            }

            string filename = filepath.Text.Substring(filepath.Text.LastIndexOf("\\")).Replace("\\", ""); //根据全路径取文件名

            // MessageBox.Show(filename);
            Service1.Service1 xx = new Service1.Service1();

            FileStream fs = new FileStream(filepath.Text, FileMode.Open); //Client Side Path
            byte[] buffer = new byte[fs.Length];
            fs.Read(buffer, 0, buffer.Length);

            try
            {

                btxt.Text = xx.SendFax(uid.Text, pwd.Text, faxno.Text, men.Text, title.Text, buffer, filename);

            }
            catch
            {
                MessageBox.Show("出错");
            }
            finally
            {
                fs.Close();
            }
        }

        private void button3_Click_1(object sender, EventArgs e)
        {
            openFileDialog1.Multiselect = true;
            openFileDialog1.ShowDialog();
            //if (openFileDialog1.ShowDialog())
            if (openFileDialog1.FileName != "")
            {
                filepath.Text = openFileDialog1.FileName;
                // filename.Text = openFileDialog1.FileName.Substring(openFileDialog1.FileName.LastIndexOf("\\")).Replace("\\", "");//取用户名和后缀
            
            }


        }

        private void radioButton2_CheckedChanged_1(object sender, EventArgs e)
        {
            if (mode4.Checked)
            {
                fvfile.Enabled = true;
                btf.Enabled = true;
                fvtxt.Enabled = false;
                mode.Text = "3";
            }
            else
            {
                fvfile.Enabled = false;
                btf.Enabled = false;
                fvtxt.Enabled = true;
               
            }
        }

        private void button6_Click(object sender, EventArgs e)
        {
            byte[] buffer = new byte[0]; 
            if (filepath.Text == "")
            {
                MessageBox.Show("传真文件不能为空");
                return;
            }
            else
            {
                FileStream fs = new FileStream(filepath.Text, FileMode.Open); //Client Side Path
                buffer = new byte[fs.Length];
                fs.Read(buffer, 0, buffer.Length);
                fs.Close();

            }


            string filename = filepath.Text.Substring(filepath.Text.LastIndexOf("\\")).Replace("\\", ""); //根据全路径取文件名

            // MessageBox.Show(filename);
            Service1.Service1 xx = new Service1.Service1();


           try
            {

                btxt.Text = xx.SendFax(uid.Text, pwd.Text, faxno.Text, men.Text, title.Text, buffer, filename);

           }
            catch
           {
                MessageBox.Show("出错");
          }
           finally
            {
            //   fs.Close();
          }
        }

        private void button5_Click(object sender, EventArgs e)
        {

            try
            {
                byte[] buffer;

                if (mode4.Checked)
                {
                    if (fvfile.Text == "")
                    {
                        MessageBox.Show("请选择语音文件。格式为.WAV 大小不要超过 5M");
                        return;
                    }


                    FileStream fs = new FileStream(fvfile.Text, FileMode.Open); //Client Side Path
                    buffer = new byte[fs.Length];
                    fs.Read(buffer, 0, buffer.Length);
                    fs.Close();

                }
                else
                {
                    buffer = new byte [0];
                }
 
        

            // MessageBox.Show(filename);
            Service1.Service1 vx = new Service1.Service1();


                btxt.Text = vx.SendVoice(uid.Text, pwd.Text, fvto.Text, fvtxt.Text,mode.Text, buffer,v_svrno.Text,"", "");
          
            }
            catch
            {
                MessageBox.Show("出错3");
            }
            finally
            {
               // fs.Close();
            }

        }

        private void mode5_CheckedChanged(object sender, EventArgs e)
        {
            if (mode5.Checked)
            {
                mode.Text = "1";
            }
 
        }

        private void mode2_CheckedChanged(object sender, EventArgs e)
        {
            if (mode2.Checked)
            {
                mode.Text = "2";
            }
        }

        private void button2_Click_1(object sender, EventArgs e)
        {
            openFileDialog1.Filter = "语音文件|*.WAV|所有文件|*.*";
            openFileDialog1.Multiselect = true;
            openFileDialog1.ShowDialog();
            //if (openFileDialog1.ShowDialog())
            if (openFileDialog1.FileName != "")
            {
                fvfile.Text = openFileDialog1.FileName;
                // filename.Text = openFileDialog1.FileName.Substring(openFileDialog1.FileName.LastIndexOf("\\")).Replace("\\", "");//取用户名和后缀
            }
            openFileDialog1.Filter = "所有文件|*.*";
        }

   
	}
}
