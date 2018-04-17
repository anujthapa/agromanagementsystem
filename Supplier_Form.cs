using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using Trading_bal;

namespace Trading_win
{
    public partial class Supplier_Form : Form
    {
        public Supplier_Form()
        {
            InitializeComponent();
        }

        private void Supplier_Form_Load(object sender, EventArgs e)
        {
            loaddata();
        }

       public void loaddata()
        {
            dataGridView1.AutoGenerateColumns = false;
            Trading_bal.supplier obj = new Trading_bal.supplier();
            dataGridView1.DataSource = obj.list();
        }
        private void dataGridView1_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {
            

        }

        private void button1_Click(object sender, EventArgs e)
        {
            supplier_new obj = new supplier_new();
            utils.flag = 1;
            obj.MdiParent = this.MdiParent;
            obj.Show();
        }

        private void dataGridView1_CellClick(object sender, DataGridViewCellEventArgs e )
        {
            if (e.ColumnIndex == 5)
            {
                supplier_new obj = new supplier_new();
                obj.MdiParent = this.MdiParent;
                utils.flag = 1;
                obj.textBox1.Text = dataGridView1.Rows[e.RowIndex].Cells["id"].Value.ToString();
                obj.textBox2.Text = dataGridView1.Rows[e.RowIndex].Cells["suppliername"].Value.ToString();
                obj.textBox3.Text = dataGridView1.Rows[e.RowIndex].Cells["address"].Value.ToString();
                obj.textBox4.Text = dataGridView1.Rows[e.RowIndex].Cells["phonenumber"].Value.ToString();
                obj.textBox5.Text = dataGridView1.Rows[e.RowIndex].Cells["email"].Value.ToString();
                obj.Show();

            }
            if (e.ColumnIndex == 6)
            {
                if (MessageBox.Show("Are you sure to Delete", "Info", MessageBoxButtons.YesNo) == DialogResult.Yes)
                {
                    Trading_bal.supplier obj = new Trading_bal.supplier();
                    obj.id = Int32.Parse(dataGridView1.Rows[e.RowIndex].Cells["id"].Value.ToString());
                    obj.remove();
                    loaddata();
                    
                   
                }
            }
        }

        private void panel1_Paint(object sender, PaintEventArgs e)
        {

        }

        private void button2_Click(object sender, EventArgs e)
        {
            this.Close();
        }

        private void textBox1_KeyDown(object sender, KeyEventArgs e)
        {

        }

        private void textBox1_KeyUp(object sender, KeyEventArgs e)
        {
            if (textBox1.Text == string.Empty)
            {
                loaddata();
            }

            else
            
            {
                Trading_bal.supplier obj = new Trading_bal.supplier();
                obj.suppliername = textBox1.Text;
                dataGridView1.DataSource = obj.listbyname();
            
            }
        }
    }
}
