using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace Trading_win
{
    public partial class client_list : Form
    {
        public client_list()
        {
            InitializeComponent();
        }
        public void Loaddata()
        {
            dataGridView2.AutoGenerateColumns = false;
            Trading_bal.client obj = new Trading_bal.client();
            dataGridView2.DataSource = obj.Client_list();
           
        }

   

        private void textBox1_KeyDown(object sender, KeyEventArgs e)
        {
            if (textBox1.Text == string.Empty)
            {
                Loaddata();
            }
            else
            {
                //Trading_bal.client obj = new Trading_bal.client();
                //obj.clientname = textBox1.Text;
                //dataGridView1.DataSource = obj.();
            }
        }

       
       

        private void client_list_Load(object sender, EventArgs e)
        {
            Loaddata();
        }

        private void dataGridView2_CellClick(object sender, DataGridViewCellEventArgs e)
        {

            if (e.ColumnIndex == 5)
            {
                client_new obj =  new client_new();
                obj.MdiParent = this.MdiParent;
                utils.flag = 1;
                obj.textBox1.Text = dataGridView2.Rows[e.RowIndex].Cells["id"].Value.ToString();
                obj.textBox2.Text = dataGridView2.Rows[e.RowIndex].Cells["clientname"].Value.ToString();
                obj.textBox3.Text = dataGridView2.Rows[e.RowIndex].Cells["address"].Value.ToString();
                obj.textBox4.Text = dataGridView2.Rows[e.RowIndex].Cells["phonenumber"].Value.ToString();
                obj.textBox5.Text = dataGridView2.Rows[e.RowIndex].Cells["email"].Value.ToString();
                obj.Show();
            }

            if (e.ColumnIndex == 6)
            {
                if (MessageBox.Show("Are you sure to Delete", "Info", MessageBoxButtons.YesNo) == DialogResult.Yes)
                {
                    Trading_bal.client obj = new Trading_bal.client();
                    obj.id = Int32.Parse(dataGridView2.Rows[e.RowIndex].Cells["id"].Value.ToString());
                    obj.remove();
                    Loaddata();


                }
            }

        }

        private void dataGridView2_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {

        }

        private void button1_Click(object sender, EventArgs e)
        {
            this.Close();
        }

        private void textBox1_TextChanged(object sender, EventArgs e)
        {

        }

        private void textBox1_KeyUp(object sender, KeyEventArgs e)
        {
            if (textBox1.Text == string.Empty)
            {
                Loaddata();
            }
            else
            {
                Trading_bal.client obj = new Trading_bal.client();
                obj.clientname = textBox1.Text;
                dataGridView2.AutoGenerateColumns = false;
                dataGridView2.DataSource = obj.Client_listbyname();
            
            }
        }
    }
}
