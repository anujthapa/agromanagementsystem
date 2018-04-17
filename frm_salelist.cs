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
    public partial class frm_salelist : Form
    {
        public frm_salelist()
        {
            InitializeComponent();
        }

        private void frm_salelist_Load(object sender, EventArgs e)
        {
            bal.sales obj = new bal.sales();
            dataGridView1.AutoGenerateColumns = false;
            dataGridView1.DataSource = obj.salemasterlist();

        }

        private void dataGridView1_CellClick(object sender, DataGridViewCellEventArgs e)
        {
            if (e.ColumnIndex == 5)
            {
                bal.sales obj = new bal.sales();
                obj.salemasterid = Int32.Parse(dataGridView1.CurrentRow.Cells["id"].Value.ToString());
                dataGridView2.AutoGenerateColumns = false;
                dataGridView2.DataSource = obj.saledetaillist();
            }
            if (e.ColumnIndex == 6)
            {
                Sales_new obj = new Sales_new();
                obj.MdiParent = this.MdiParent;
                utils.objsale = obj;
                Hashtable htable = new Hashtable();
                htable.Add("id", dataGridView1.CurrentRow.Cells["id"].Value);
                htable.Add("clientid", dataGridView1.CurrentRow.Cells["clientid"].Value);
                htable.Add("billno", dataGridView1.CurrentRow.Cells["billno"].Value);
                htable.Add("saledate",dataGridView1.CurrentRow.Cells["saledate"].Value);
                htable.Add("totalamount", dataGridView1.CurrentRow.Cells["totalamount"].Value);
               
                obj.loaddata(htable) ;

                obj.Show();
            }
        }

        private void button1_Click(object sender, EventArgs e)
        {
            this.Close();
        }

        private void dataGridView1_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {

        }
    }
}
