using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.Security;

namespace Trading_win
{
    public partial class frm_login : Form
    {
        public frm_login()
        {
            InitializeComponent();
        }

        protected void button1_Click(object sender, EventArgs e)
        {
            if (txtusername.Text == string.Empty)
            {
                errorProvider1.SetError(txtusername, "Username Blank.");
                return;
            }
            if (txtpassword.Text == string.Empty)
            {
                errorProvider1.SetError(txtpassword, "Password Blank.");
                return;
            }
            if (txtusername.Text != string.Empty && txtpassword.Text != string.Empty)
            {
                Trading_bal.user obj = new Trading_bal.user();
                obj.username = txtusername.Text;
                obj.password = txtpassword.Text;
                List<Trading_bal.user> luser = new List<Trading_bal.user>();
                luser = obj.getlogin();                
                if (luser.Count > 0)
                {
                   
                    frm_Main objmain = new frm_Main();
                    utils.usertype = luser[0].usertype;
                    objmain.Show();
                    this.Hide();
                }
                else
                {
                    MessageBox.Show("Invalid Useraname and Password.");
                }

               
            }
            
        }

       

        private void button2_Click(object sender, EventArgs e)
        {
            Application.Exit();
        }

        private void pictureBox1_Click(object sender, EventArgs e)
        {

        }

        private void txtusername_TextChanged(object sender, EventArgs e)
        {
            errorProvider1.Clear();
        }

        private void txtpassword_TextChanged(object sender, EventArgs e)
        {
            errorProvider1.Clear();
        }

        private void frm_login_Load(object sender, EventArgs e)
        {

        }

        private void backgroundWorker1_DoWork(object sender, DoWorkEventArgs e)
        {

        }

        private void label3_Click(object sender, EventArgs e)
        {

        }
    }
}
