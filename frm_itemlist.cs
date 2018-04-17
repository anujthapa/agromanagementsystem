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
    public partial class frm_itemlist : Form
    {
        public frm_itemlist()
        {
            InitializeComponent();
        }

        private void frm_itemlist_Load(object sender, EventArgs e)
        {
            dataGridView1.AutoGenerateColumns = false;
            bal.items obj = new bal.items();
            dataGridView1.DataSource = obj.List();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            this.Close();
        }

        private void dataGridView1_CellClick(object sender, DataGridViewCellEventArgs e)
        {
            if (e.ColumnIndex == 1)
            {
                if (utils.itemslist_flag == "p")
                {
                    utils.objpurchase.dataGridView1.CurrentRow.Cells["id"].Value = 0;
                    utils.objpurchase.dataGridView1.CurrentRow.Cells["itemsid"].Value = dataGridView1.Rows[e.RowIndex].Cells["id"].Value.ToString();
                    utils.objpurchase.dataGridView1.CurrentRow.Cells["itemsname"].Value = dataGridView1.Rows[e.RowIndex].Cells["itemsname"].Value.ToString();
                    utils.objpurchase.dataGridView1.CurrentRow.Cells["qty"].Value = 0;
                    utils.objpurchase.dataGridView1.CurrentRow.Cells["price"].Value = 0;
                }
                else
                {
                    for (int i = 0; i < utils.objsale.dataGridView1.Rows.Count - 1; i++)
                    {
                        if (dataGridView1.Rows[e.RowIndex].Cells["itemsname"].Value.ToString() == utils.objsale.dataGridView1.Rows[i].Cells["itemname"].Value.ToString())
                        {
                            MessageBox.Show("Already Selected this items.");
                            return;
                        }
                    }
                    utils.objsale.dataGridView1.CurrentRow.Cells["id"].Value = 0;
                    utils.objsale.dataGridView1.CurrentRow.Cells["itemid"].Value = dataGridView1.Rows[e.RowIndex].Cells["id"].Value.ToString();
                    utils.objsale.dataGridView1.CurrentRow.Cells["itemname"].Value = dataGridView1.Rows[e.RowIndex].Cells["itemsname"].Value.ToString();
                    utils.objsale.dataGridView1.CurrentRow.Cells["price"].Value = dataGridView1.Rows[e.RowIndex].Cells["price"].Value.ToString();
                    utils.objsale.dataGridView1.CurrentRow.Cells["itemname"].Selected = false;
                    utils.objsale.dataGridView1.CurrentRow.Cells["qty"].Selected = true;                    
                }
                this.Close();
                    

            }
        }

        private void dataGridView1_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {

        }
    }
}
