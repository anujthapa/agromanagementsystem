using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.Collections;
using bal = Trading_bal;

namespace Trading_win
{
    public partial class frm_newuser : Form
    {
        public frm_newuser()
        {
            InitializeComponent();
        }
        public void loaddata(Hashtable ht)
        {
           txtid.Text = ht["id"].ToString();
            txtfirstname.Text = ht["firstname"].ToString();
            txtpassword.Text = ht["lastname"].ToString();
            txtusername.Text = ht["username"].ToString();
            txtlastname.Text = ht["password"].ToString();

            bal.user obj = new bal.user();
            List<bal.user> slist = new List<bal.user>();
            obj.userid = ht["id"].ToString();
            slist = obj.userlist();

            //for (int i = 0; i < slist.Count; i++)
            ////{
            //    frm_newuser..Add();
            //    txtid.txtid[i].Cells["id"].Value = slist[i].id.ToString();
            //    dataGridView1.Rows[i].Cells["itemid"].Value = slist[i].itemsid.ToString();
            //    dataGridView1.Rows[i].Cells["itemname"].Value = slist[i].itemsname.ToString();
            //    dataGridView1.Rows[i].Cells["price"].Value = slist[i].price.ToString();
            //    dataGridView1.Rows[i].Cells["qty"].Value = slist[i].qty.ToString();
            //    dataGridView1.Rows[i].Cells["totalamount"].Value = slist[i].totalamount.ToString();
            //}
            //sum();
        }

        private void label2_Click(object sender, EventArgs e)
        {

        }

        private void btnsave_Click(object sender, EventArgs e)
        {
            if (txtfirstname.Text == string.Empty)
            {
                errorProvider1.SetError(txtfirstname, "Username Blank.");
                return;
            }
            if (txtpassword.Text == string.Empty)
            {
                errorProvider1.SetError(txtpassword, "Password Blank.");
                return;
            }
            else
            {
                Trading_bal.user obj = new Trading_bal.user();
                obj.id = Int32.Parse(txtid.Text);
                obj.username = txtfirstname.Text;
                obj.password = txtpassword.Text;
                if (comboBox1.Text.ToLower() == "admin")
                    obj.usertype = "1";
                else
                {
                    obj.usertype = "2";
                }
                if (obj.save() > 0)
                {
                    MessageBox.Show("Data Saved!!");
                    this.Close();
                    //if(utils.flag>0)
                    //    utils

                }
                else
                {
                    MessageBox.Show("Data not saved!!");
                    return;
                }
            }

        }

        private void btncancel_Click(object sender, EventArgs e)
        {
            this.Close();
        }

        private void txtpassword_TextChanged(object sender, EventArgs e)
        {
            errorProvider1.Clear();
        }

        private void txtusername_TextChanged(object sender, EventArgs e)
        {
            errorProvider1.Clear();
        }

        private void frm_newuser_Load(object sender, EventArgs e)
        {
           // if(!is)
        }

        private void label3_Click(object sender, EventArgs e)
        {

        }

        private void txtfullname_TextChanged(object sender, EventArgs e)
        {

        }

        private void label5_Click(object sender, EventArgs e)
        {

        }

        private void txtid_TextChanged(object sender, EventArgs e)
        {

        }

        private void lblid_Click(object sender, EventArgs e)
        {

        }

        private void comboBox1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        private void label1_Click(object sender, EventArgs e)
        {

        }
    }
}
