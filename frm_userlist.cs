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
    public partial class frm_userlist : Form
    {
        public frm_userlist()
        {
            InitializeComponent();
        }
        private void frm_userlist_Load(object sender, EventArgs e)
        {
            bal.user obj = new bal.user();
            dataGridView1.AutoGenerateColumns = false;
            dataGridView1.DataSource = obj.list();

        }


        private void dataGridView1_CellClick(object sender, DataGridViewCellEventArgs e)
        {
            if (e.ColumnIndex == 5)
            {
                bal.user obj = new bal.user();
                obj.userid = dataGridView1.CurrentRow.Cells["id"].Value.ToString();
                dataGridView2.AutoGenerateColumns = false;
                dataGridView2.DataSource = obj.userlist();
            }
            if (e.ColumnIndex == 6)
            {
                frm_newuser obj = new frm_newuser();
                obj.MdiParent = this.MdiParent;
                utils.objfrm = obj;
                Hashtable htable = new Hashtable();
                htable.Add("id", dataGridView1.CurrentRow.Cells["id"].Value);
                htable.Add("firstname", dataGridView1.CurrentRow.Cells["firstname"].Value);
                htable.Add("lastname", dataGridView1.CurrentRow.Cells["lastname"].Value);
                htable.Add("username", dataGridView1.CurrentRow.Cells["username"].Value);
                htable.Add("password", dataGridView1.CurrentRow.Cells["password"].Value);

                obj.loaddata(htable);

                obj.Show();
            }
        }


        //private void frm_userlist_Load(object sender, EventArgs e)
        //{
        //    loaddata();
        //}

        private void button1_Click(object sender, EventArgs e)
        {
            this.Close();
        }

        private void frm_userlist_Load_1(object sender, EventArgs e)
        {

        }

        private void dataGridView2_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {

        }

     
      
    }
}
