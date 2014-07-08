namespace WindowsApplication1
{
    partial class Form1
    {
        /// <summary>
        /// 必需的设计器变量。
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// 清理所有正在使用的资源。
        /// </summary>
        /// <param name="disposing">如果应释放托管资源，为 true；否则为 false。</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows 窗体设计器生成的代码

        /// <summary>
        /// 设计器支持所需的方法 - 不要
        /// 使用代码编辑器修改此方法的内容。
        /// </summary>
        private void InitializeComponent()
        {
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(Form1));
            this.t_uid = new System.Windows.Forms.TextBox();
            this.t_pwd = new System.Windows.Forms.TextBox();
            this.groupBox1 = new System.Windows.Forms.GroupBox();
            this.vtagss = new System.Windows.Forms.Label();
            this.vtag = new System.Windows.Forms.TextBox();
            this.label2 = new System.Windows.Forms.Label();
            this.label1 = new System.Windows.Forms.Label();
            this.button1 = new System.Windows.Forms.Button();
            this.t_mob = new System.Windows.Forms.RichTextBox();
            this.t_msg = new System.Windows.Forms.RichTextBox();
            this.label3 = new System.Windows.Forms.Label();
            this.label4 = new System.Windows.Forms.Label();
            this.richTextBox1 = new System.Windows.Forms.RichTextBox();
            this.button2 = new System.Windows.Forms.Button();
            this.groupBox1.SuspendLayout();
            this.SuspendLayout();
            // 
            // t_uid
            // 
            this.t_uid.Location = new System.Drawing.Point(65, 12);
            this.t_uid.Name = "t_uid";
            this.t_uid.Size = new System.Drawing.Size(100, 21);
            this.t_uid.TabIndex = 1;
            this.t_uid.Text = "test";
            // 
            // t_pwd
            // 
            this.t_pwd.Location = new System.Drawing.Point(218, 12);
            this.t_pwd.Name = "t_pwd";
            this.t_pwd.Size = new System.Drawing.Size(100, 21);
            this.t_pwd.TabIndex = 2;
            this.t_pwd.Text = "123456";
            // 
            // groupBox1
            // 
            this.groupBox1.Controls.Add(this.vtagss);
            this.groupBox1.Controls.Add(this.vtag);
            this.groupBox1.Controls.Add(this.label2);
            this.groupBox1.Controls.Add(this.label1);
            this.groupBox1.Controls.Add(this.button1);
            this.groupBox1.Controls.Add(this.t_mob);
            this.groupBox1.Controls.Add(this.t_msg);
            this.groupBox1.Location = new System.Drawing.Point(12, 51);
            this.groupBox1.Name = "groupBox1";
            this.groupBox1.Size = new System.Drawing.Size(385, 365);
            this.groupBox1.TabIndex = 4;
            this.groupBox1.TabStop = false;
            this.groupBox1.Text = "发短信";
            // 
            // vtagss
            // 
            this.vtagss.AutoSize = true;
            this.vtagss.Location = new System.Drawing.Point(18, 245);
            this.vtagss.Name = "vtagss";
            this.vtagss.Size = new System.Drawing.Size(53, 12);
            this.vtagss.TabIndex = 10;
            this.vtagss.Text = "返回状态";
            // 
            // vtag
            // 
            this.vtag.BackColor = System.Drawing.SystemColors.ControlLight;
            this.vtag.Location = new System.Drawing.Point(8, 269);
            this.vtag.Name = "vtag";
            this.vtag.Size = new System.Drawing.Size(366, 21);
            this.vtag.TabIndex = 9;
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(16, 134);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(227, 12);
            this.label2.TabIndex = 8;
            this.label2.Text = "短信内容(60-70个字，超过自己做下循环)";
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(16, 17);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(155, 12);
            this.label1.TabIndex = 7;
            this.label1.Text = "手机号码(多个用逗号,分隔)";
            // 
            // button1
            // 
            this.button1.Location = new System.Drawing.Point(141, 311);
            this.button1.Name = "button1";
            this.button1.Size = new System.Drawing.Size(102, 34);
            this.button1.TabIndex = 6;
            this.button1.Text = "短信短信";
            this.button1.UseVisualStyleBackColor = true;
            this.button1.Click += new System.EventHandler(this.button1_Click_1);
            // 
            // t_mob
            // 
            this.t_mob.Location = new System.Drawing.Point(18, 32);
            this.t_mob.Name = "t_mob";
            this.t_mob.Size = new System.Drawing.Size(270, 86);
            this.t_mob.TabIndex = 5;
            this.t_mob.Text = "";
            // 
            // t_msg
            // 
            this.t_msg.Location = new System.Drawing.Point(18, 149);
            this.t_msg.Name = "t_msg";
            this.t_msg.Size = new System.Drawing.Size(356, 82);
            this.t_msg.TabIndex = 4;
            this.t_msg.Text = "";
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Location = new System.Drawing.Point(18, 20);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(41, 12);
            this.label3.TabIndex = 5;
            this.label3.Text = "账号：";
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Location = new System.Drawing.Point(171, 15);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(41, 12);
            this.label4.TabIndex = 6;
            this.label4.Text = "密码：";
            // 
            // richTextBox1
            // 
            this.richTextBox1.Location = new System.Drawing.Point(412, 53);
            this.richTextBox1.Name = "richTextBox1";
            this.richTextBox1.Size = new System.Drawing.Size(328, 343);
            this.richTextBox1.TabIndex = 7;
            this.richTextBox1.Text = resources.GetString("richTextBox1.Text");
            // 
            // button2
            // 
            this.button2.Location = new System.Drawing.Point(339, 10);
            this.button2.Name = "button2";
            this.button2.Size = new System.Drawing.Size(75, 23);
            this.button2.TabIndex = 8;
            this.button2.Text = "查询余额";
            this.button2.UseVisualStyleBackColor = true;
            this.button2.Click += new System.EventHandler(this.button2_Click);
            // 
            // Form1
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(788, 494);
            this.Controls.Add(this.button2);
            this.Controls.Add(this.richTextBox1);
            this.Controls.Add(this.label4);
            this.Controls.Add(this.label3);
            this.Controls.Add(this.groupBox1);
            this.Controls.Add(this.t_pwd);
            this.Controls.Add(this.t_uid);
            this.Icon = ((System.Drawing.Icon)(resources.GetObject("$this.Icon")));
            this.Name = "Form1";
            this.Text = "c#　短信接口demo";
            this.groupBox1.ResumeLayout(false);
            this.groupBox1.PerformLayout();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.TextBox t_uid;
        private System.Windows.Forms.TextBox t_pwd;
        private System.Windows.Forms.GroupBox groupBox1;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Button button1;
        private System.Windows.Forms.RichTextBox t_mob;
        private System.Windows.Forms.RichTextBox t_msg;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.Label vtagss;
        private System.Windows.Forms.TextBox vtag;
        private System.Windows.Forms.RichTextBox richTextBox1;
        private System.Windows.Forms.Button button2;

    }
}

