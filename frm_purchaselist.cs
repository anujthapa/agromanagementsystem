using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

using bal = Trading_bal;


namespace Trading_win
{
    public partial class frm_purchaselist : Form
    {
        public frm_purchaselist()
        {
            InitializeComponent();
        }

        private void frm_purchaselist_Load(object sender, EventArgs e)
        {
            dataGridView1.AutoGenerateColumns = false;
            bal.Purchases obj = new bal.Purchases();
            dataGridView1.DataSource = obj.purchasemasterlist();
        }

        private void dataGridView1_CellClick(object sender, DataGridViewCellEventArgs e)
        {
            if (e.ColumnIndex == 0)
            {
                int id = int.Parse(dataGridView1.Rows[e.RowIndex].Cells["id"].Value.ToString());

                dataGridView2.AutoGenerateColumns = false;
                bal.Purchases obj = new bal.Purchases();
                obj.purchasemasterid = id;
                dataGridView2.DataSource = obj.purchasedetaillist();

            }
        }

        private void dataGridView1_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {
            
        }

        private void panel1_Paint(object sender, PaintEventArgs e)
        {

        }

        private void button1_Click(object sender, EventArgs e)
        {
            this.Close();
        }

        private void textBox1_KeyUp(object sender, KeyEventArgs e)
        {
            
                bal.Purchases obj = new bal.Purchases();
                if (textBox1.Text == string.Empty)
                {
                    dataGridView1.AutoGenerateColumns = false;
                    
                    dataGridView1.DataSource = obj.purchasemasterlist();
                }
                else
                {
                    dataGridView1.AutoGenerateColumns = false;
               
                    obj.billno = Int32.Parse(textBox1.Text);
                    dataGridView1.DataSource = obj.purchasemasterlistbybillno();
                }
          
           
        }
    }
}
