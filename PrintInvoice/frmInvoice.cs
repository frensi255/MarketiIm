using System;
using System.Drawing;
using System.Collections;
using System.ComponentModel;
using System.Windows.Forms;
using System.Data;
using System.Data.OleDb;
using System.Data.SqlClient;
using MySql.Data.MySqlClient;

namespace PrintInvoice
{

	public class frmInvoice : System.Windows.Forms.Form
	{
		private System.Windows.Forms.DataGrid datGrid;
        private System.Windows.Forms.Button btnLoad;
		private System.Windows.Forms.Button btnExit;
		private System.ComponentModel.Container components = null;

        public static string myConnectionString = "server = 159.69.214.238; database = autohunt_midb; username = autohunt_midb19; password = Frensi@1234.";
        private TextBox txtkerko;
        private Button btnkerko;
        private Label label1;
        MySqlConnection cnn = new MySqlConnection(myConnectionString);

		public frmInvoice()
		{
			InitializeComponent();
		}

		/// <summary>
		/// Clean up any resources being used.
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

		#region Windows Form Designer generated code
		/// <summary>
		/// Required method for Designer support - do not modify
		/// the contents of this method with the code editor.
		/// </summary>
		private void InitializeComponent()
		{
            this.btnExit = new System.Windows.Forms.Button();
            this.btnLoad = new System.Windows.Forms.Button();
            this.datGrid = new System.Windows.Forms.DataGrid();
            this.txtkerko = new System.Windows.Forms.TextBox();
            this.btnkerko = new System.Windows.Forms.Button();
            this.label1 = new System.Windows.Forms.Label();
            ((System.ComponentModel.ISupportInitialize)(this.datGrid)).BeginInit();
            this.SuspendLayout();
            // 
            // btnExit
            // 
            this.btnExit.Font = new System.Drawing.Font("Microsoft Sans Serif", 8.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnExit.ImeMode = System.Windows.Forms.ImeMode.NoControl;
            this.btnExit.Location = new System.Drawing.Point(373, 358);
            this.btnExit.Name = "btnExit";
            this.btnExit.Size = new System.Drawing.Size(71, 20);
            this.btnExit.TabIndex = 33;
            this.btnExit.Text = "Dil";
            this.btnExit.Click += new System.EventHandler(this.btnExit_Click);
            // 
            // btnLoad
            // 
            this.btnLoad.Location = new System.Drawing.Point(12, 358);
            this.btnLoad.Name = "btnLoad";
            this.btnLoad.Size = new System.Drawing.Size(88, 20);
            this.btnLoad.TabIndex = 34;
            this.btnLoad.Text = "Shfaq Porositë";
            this.btnLoad.Click += new System.EventHandler(this.btnLoad_Click);
            // 
            // datGrid
            // 
            this.datGrid.AlternatingBackColor = System.Drawing.Color.WhiteSmoke;
            this.datGrid.BackColor = System.Drawing.Color.Gainsboro;
            this.datGrid.BackgroundColor = System.Drawing.Color.DarkGray;
            this.datGrid.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;
            this.datGrid.CaptionBackColor = System.Drawing.Color.DarkKhaki;
            this.datGrid.CaptionFont = new System.Drawing.Font("Tahoma", 8F, System.Drawing.FontStyle.Bold);
            this.datGrid.CaptionForeColor = System.Drawing.Color.Black;
            this.datGrid.DataMember = "";
            this.datGrid.FlatMode = true;
            this.datGrid.Font = new System.Drawing.Font("Times New Roman", 9F);
            this.datGrid.ForeColor = System.Drawing.Color.Black;
            this.datGrid.GridLineColor = System.Drawing.Color.Silver;
            this.datGrid.HeaderBackColor = System.Drawing.Color.Black;
            this.datGrid.HeaderFont = new System.Drawing.Font("Tahoma", 8F, System.Drawing.FontStyle.Bold);
            this.datGrid.HeaderForeColor = System.Drawing.Color.White;
            this.datGrid.LinkColor = System.Drawing.Color.DarkSlateBlue;
            this.datGrid.Location = new System.Drawing.Point(12, 112);
            this.datGrid.Name = "datGrid";
            this.datGrid.ParentRowsBackColor = System.Drawing.Color.LightGray;
            this.datGrid.ParentRowsForeColor = System.Drawing.Color.Black;
            this.datGrid.SelectionBackColor = System.Drawing.Color.Firebrick;
            this.datGrid.SelectionForeColor = System.Drawing.Color.White;
            this.datGrid.Size = new System.Drawing.Size(432, 240);
            this.datGrid.TabIndex = 35;
            // 
            // txtkerko
            // 
            this.txtkerko.Location = new System.Drawing.Point(185, 56);
            this.txtkerko.Name = "txtkerko";
            this.txtkerko.Size = new System.Drawing.Size(118, 20);
            this.txtkerko.TabIndex = 36;
            // 
            // btnkerko
            // 
            this.btnkerko.Location = new System.Drawing.Point(320, 54);
            this.btnkerko.Name = "btnkerko";
            this.btnkerko.Size = new System.Drawing.Size(65, 23);
            this.btnkerko.TabIndex = 37;
            this.btnkerko.Text = "kerko";
            this.btnkerko.UseVisualStyleBackColor = true;
            this.btnkerko.Click += new System.EventHandler(this.btnkerko_Click);
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(41, 54);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(114, 26);
            this.label1.TabIndex = 38;
            this.label1.Text = "Shkruaj ID e porosisë  \r\n  që doni të shikoni";
            // 
            // frmInvoice
            // 
            this.AutoScaleBaseSize = new System.Drawing.Size(5, 13);
            this.ClientSize = new System.Drawing.Size(455, 386);
            this.Controls.Add(this.label1);
            this.Controls.Add(this.btnkerko);
            this.Controls.Add(this.txtkerko);
            this.Controls.Add(this.datGrid);
            this.Controls.Add(this.btnLoad);
            this.Controls.Add(this.btnExit);
            this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.Fixed3D;
            this.MaximizeBox = false;
            this.Name = "frmInvoice";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "Porositë";
            this.Load += new System.EventHandler(this.frmInvoice_Load);
            ((System.ComponentModel.ISupportInitialize)(this.datGrid)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

		}
		#endregion

		[STAThread]
		static void Main() 
		{
			Application.Run(new frmLogin());
		}

		private void LoadData()
		{

			try
			{
				
                MySqlCommand cmd = new MySqlCommand("select orders.user_id as 'ID Klienti', user_profile.full_name AS Klienti,orders.order_id as 'ID Porosise', orders.total_price as 'Totali Fatures', orders.create_date as Data from orders inner join user_profile on orders.user_id=user_profile.user_id;", cnn);

                MySqlDataAdapter datAdp = new MySqlDataAdapter(cmd);
                MySqlCommandBuilder cBuilder = new MySqlCommandBuilder(datAdp);

				DataTable dTable = new DataTable();

				datAdp.Fill(dTable);
				datGrid.DataSource = dTable;
			}
			catch(Exception e)
			{ 
				MessageBox.Show(e.ToString());
			}
		}

		private void frmInvoice_Load(object sender, System.EventArgs e)
		{
			datGrid.CaptionText = "Orders...";
			
		}

		private void btnLoad_Click(object sender, System.EventArgs e)
		{
			LoadData();

		}


		private void btnExit_Click(object sender, System.EventArgs e)
		{
            frmLogin fl = new frmLogin();
            fl.Show();
            this.Close();
		}

        private void btnkerko_Click(object sender, EventArgs e)
        {
            string mcs = "server = 159.69.214.238; database = autohunt_midb; username = autohunt_midb19; password = Frensi@1234.";
            MySqlConnection myConnectionString = new MySqlConnection(mcs);

            MySqlCommand cmd = new MySqlCommand("select user_profile.user_id, user_profile.full_name, orders.order_id, orders.prod_details, orders.total_price, orders.create_date from user_profile inner JOIN orders on user_profile.user_id = orders.user_id and order_id='" + txtkerko.Text + "'", cnn);

                MySqlDataAdapter datAdp = new MySqlDataAdapter(cmd);
                MySqlCommandBuilder cBuilder = new MySqlCommandBuilder(datAdp);

                DataTable dTable = new DataTable();

                datAdp.Fill(dTable);
                datGrid.DataSource = dTable;

            
         
        }

        private void button1_Click(object sender, EventArgs e)
        {
            string mcs = "server = 159.69.214.238; database = autohunt_midb; username = autohunt_midb19; password = Frensi@1234.";
            MySqlConnection myConnectionString = new MySqlConnection(mcs);

                        String[] strings = null;
            MySqlCommand cmd = new MySqlCommand("select prod_details from orders where prod_details ='"+strings+"'", cnn);

            MySqlDataAdapter datAdp = new MySqlDataAdapter(cmd);
            MySqlCommandBuilder cBuilder = new MySqlCommandBuilder(datAdp);

            DataTable dTable = new DataTable();

            datAdp.Fill(dTable);
            datGrid.DataSource = dTable;

        }

       

	}
}
