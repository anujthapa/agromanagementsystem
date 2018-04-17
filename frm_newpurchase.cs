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
    public partial class frm_newpurchase : Form
    {
        public frm_newpurchase()
        {
            InitializeComponent();
        }

        private void button2_Click(object sender, EventArgs e)
        {

            if (purchasemastersave() > 0)
            {
                bal.Purchases obj = new bal.Purchases();
                obj.GetMaxID();
                purchasedetailsave(obj.purchasemasterid);
                MessageBox.Show("Data Saved.");
                this.Close();              
            }

        }

        int purchasemastersave()
        {
            bal.Purchases obj = new bal.Purchases();
            obj.purchasedate = dateTimePicker1.Value;
            obj.supplierid = int.Parse(comboBox1.SelectedValue.ToString());
            obj.billno = int.Parse(textBox1.Text);
            obj.totalamount = int.Parse(textBox2.Text);
           return obj.save_purchasemaster();
        }

        void purchasedetailsave(int purchasemasterid)
        {
            for (int i = 0; i < dataGridView1.Rows.Count - 1; i++)
            {
                bal.Purchases obj = new bal.Purchases();
                obj.purchasemasterid = purchasemasterid;
                obj.id = int.Parse(dataGridView1.Rows[i].Cells["id"].Value.ToString());
                obj.itemsid = int.Parse(dataGridView1.Rows[i].Cells["itemsid"].Value.ToString());
                obj.qty = int.Parse(dataGridView1.Rows[i].Cells["qty"].Value.ToString());
                obj.price = int.Parse(dataGridView1.Rows[i].Cells["price"].Value.ToString());
                obj.save_purchasedetail();
            }
        }




        private void frm_newpurchase_Load(object sender, EventArgs e)
        {
            bal.supplier obj = new bal.supplier();
            comboBox1.DataSource = obj.list();
            comboBox1.DisplayMember = "suppliername";
            comboBox1.ValueMember = "id";

            
                bal.Purchases opur = new bal.Purchases();
                opur.GetMaxID();
                textBox1.Text = (opur.purchasemasterid + 1).ToString();
            

        }

        private void dataGridView1_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {
            
        }

        private void button1_Click(object sender, EventArgs e)
        {
            this.Close();
        }

        private void dataGridView1_CellClick(object sender, DataGridViewCellEventArgs e)
        {
      
            if (e.ColumnIndex == 2)
            {
                frm_itemlist obj = new frm_itemlist();
                obj.MdiParent = this.MdiParent;
                utils.objpurchase = this;
                utils.itemslist_flag = "p";                              
                obj.Show();
            }
        }

        private void dataGridView1_CellEndEdit(object sender, DataGridViewCellEventArgs e)
        {
            if (e.ColumnIndex == 3 || e.ColumnIndex == 4)
            {
                dataGridView1.Rows[e.RowIndex].Cells["amount"].Value =
                int.Parse(dataGridView1.Rows[e.RowIndex].Cells["qty"].Value.ToString()) * 
                int.Parse(dataGridView1.Rows[e.RowIndex].Cells["price"].Value.ToString());
                Getsum();
            }
        }

        void Getsum()
        {
            int sum = 0;
            for (int i = 0; i < dataGridView1.Rows.Count - 1; i++)
            {
                sum = sum + int.Parse(dataGridView1.Rows[i].Cells["amount"].Value.ToString());
            }
            textBox2.Text = sum.ToString();
        }
    }
}
