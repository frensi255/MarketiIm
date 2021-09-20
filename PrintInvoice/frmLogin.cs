using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Text;
using System.Windows.Forms;
using System.Data.SqlClient;
using MySql.Data.MySqlClient;

namespace PrintInvoice
{
    public partial class frmLogin : Form
    {
        public static string myConnectionString = "server =160.153.153.168; database = midb; username = midb19; password = hgmi@1234";
        MySqlConnection cnn = new MySqlConnection(myConnectionString);
        public frmLogin()
        {
            InitializeComponent();
        }

        private void login_Load(object sender, EventArgs e)
        {
            try
            {
                cnn.Open();
                MessageBox.Show("Connection Open ! ");
                cnn.Close();
            }
            catch (Exception ex)
            {
                MessageBox.Show("Can not open connection ! ");
            }
        }

        private void button1_Click(object sender, EventArgs e)
        {
            cnn.Open();
            string administrator = tbAdministrator.Text;
            string password = tbPassword.Text;

            MySqlCommand cmd = new MySqlCommand("select * from admin where administrator='" + tbAdministrator.Text + "' and password='" + tbPassword.Text + "'", cnn);


            MySqlDataAdapter da = new MySqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            if (dt.Rows.Count > 0)
            {

                Form fi = new Form();
                fi.Show();
                MessageBox.Show("Me sukses");
                
            }
            else
            {
                MessageBox.Show("Kombnimi i te dhenave eshte i gabuar");
           
            }
            cnn.Close();
        }
    }
}
