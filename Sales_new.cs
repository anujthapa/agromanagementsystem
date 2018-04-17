using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.Collections ;

using bal = Trading_bal;

namespace Trading_win
{
    public partial class Sales_new : Form
    {
        public Sales_new()
        {
            InitializeComponent();
        }

        public int salemid { get; set; }
        private void label1_Click(object sender, EventArgs e)
        {

        }

        private void Sales_new_Load(object sender, EventArgs e)
        {
            bal.client obj = new bal.client();
            List<bal.client> lclient = new List<bal.client>();
            lclient = obj.Client_list();
            cmb_clientid.DataSource = lclient;
            cmb_clientid.ValueMember = "id";
            cmb_clientid.DisplayMember = "clientname";

            if (txt_id.Text == "0")
            {
                bal.sales osale = new bal.sales();
                txt_billno.Text = (osale.GetMaxid() + 1).ToString();
            }
                             
        }

        public void loaddata(Hashtable ht)
        {
            txt_id.Text = ht["id"].ToString();
            dt_saledate.Text = ht["saledate"].ToString();
            txt_billno.Text = ht["billno"].ToString();
            txt_grandamount.Text = ht["totalamount"].ToString();
            cmb_clientid.SelectedValue = ht["clientid"].ToString();

            bal.sales obj = new bal.sales();
            List<bal.sales> slist = new List<bal.sales>();
            obj.salemasterid = Int32.Parse(ht["id"].ToString());
            slist = obj.saledetaillist();

            for (int i = 0; i < slist.Count; i++)
            {
                dataGridView1.Rows.Add();
                dataGridView1.Rows[i].Cells["id"].Value = slist[i].id.ToString();
                dataGridView1.Rows[i].Cells["itemid"].Value = slist[i].itemsid.ToString();
                dataGridView1.Rows[i].Cells["itemname"].Value = slist[i].itemsname.ToString();
                dataGridView1.Rows[i].Cells["price"].Value = slist[i].price.ToString();
                dataGridView1.Rows[i].Cells["qty"].Value = slist[i].qty.ToString();
                dataGridView1.Rows[i].Cells["totalamount"].Value = slist[i].totalamount.ToString();
            }
            sum();
        }

        private void comboBox1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        private void dataGridView1_CellClick(object sender, DataGridViewCellEventArgs e)
        {
            if (e.ColumnIndex == 2 || e.ColumnIndex == 3)
            {
                frm_itemlist fobj = new frm_itemlist();
                utils.itemslist_flag = "s";
                utils.objsale = this;
                fobj.MdiParent = this.MdiParent;
                fobj.Show();

            }
        }

        void sum()
        {
            for (int i = 0; i < dataGridView1.Rows.Count - 1; i++)
            {
                txt_grandamount.Text = (Int32.Parse(txt_grandamount.Text) + Int32.Parse(dataGridView1.Rows[i].Cells["totalamount"].Value.ToString())).ToString();
            }
        }

        private void dataGridView1_CellEndEdit(object sender, DataGridViewCellEventArgs e)
        {
            if (e.ColumnIndex == 5)
            {
                bal.items obj = new bal.items();
                obj.id = Int32.Parse(dataGridView1.CurrentRow.Cells["itemid"].Value.ToString());
                obj.qty = Int32.Parse(dataGridView1.CurrentRow.Cells["qty"].Value.ToString());
                obj.checkqty();
                if (obj.id > 0)
                {
                    dataGridView1.CurrentRow.Cells["totalamount"].Value = Int32.Parse(dataGridView1.CurrentRow.Cells["qty"].Value.ToString())
                                                                         * Int32.Parse(dataGridView1.CurrentRow.Cells["price"].Value.ToString());
                    sum();
                }
                else
                {
                       
                    MessageBox.Show("Your enter Quantity is Less than Stock Quantity , Couldnot sale");
                    dataGridView1.CurrentRow.Cells["qty"].Value = 0;
                }

            }

        }

        Boolean checkgrid()
        {
            for (int i = 0; i < dataGridView1.Rows.Count - 1; i++)
            {
                if (Int32.Parse(dataGridView1.CurrentRow.Cells["qty"].Value.ToString()) <= 0)
                    return false;                
            }
            return true;
        }

        void savesalemaster()
        {
            bal.sales obj = new bal.sales();
            obj.id = Int32.Parse(txt_id.Text);
            obj.clientid = Int32.Parse(cmb_clientid.SelectedValue.ToString());
            obj.saledate = DateTime.Parse(dt_saledate.Text);
            obj.billno = Int32.Parse(txt_billno.Text);
            obj.totalamount = Int32.Parse(txt_grandamount.Text);
            obj.userid = 0;
            obj.save_salemaster();
            if (savesaledetail(obj.GetMaxid()))
            {
                MessageBox.Show("Data Saved.");
            }
        }
        Boolean savesaledetail(int salemasterid)
        {
            salemid = salemasterid;
            for (int i = 0; i < dataGridView1.Rows.Count - 1; i++)
            {
                bal.sales obj = new bal.sales();
                obj.id = Int32.Parse(dataGridView1.Rows[i].Cells["id"].Value.ToString());
                obj.salemasterid = salemasterid;
                obj.itemsid = Int32.Parse(dataGridView1.Rows[i].Cells["itemid"].Value.ToString());
                obj.qty = Int32.Parse(dataGridView1.Rows[i].Cells["qty"].Value.ToString());
                obj.price = Int32.Parse(dataGridView1.Rows[i].Cells["price"].Value.ToString());
                obj.userid = 0;
                obj.save_saledetail();
            }
            return true;
        }

        private void btn_save_Click(object sender, EventArgs e)
        {
            savesalemaster();
            Report obj = new Report();
            bal.sales sobj = new bal.sales();
            sobj.salemasterid = this.salemid;



            obj.loadReport(cmb_clientid.Text, txt_billno.Text, dt_saledate.Text, txt_grandamount.Text, sobj.saledetaillist());
            obj.Show();
            obj.MdiParent = this.MdiParent;
            this.Close();
        }

        private void btn_close_Click(object sender, EventArgs e)
        {
            this.Close();

        }

        private void button1_Click(object sender, EventArgs e)
        {
            //printDialog1.Document = printDocument1;

            //if (printDialog1.ShowDialog() == DialogResult.OK)
            //{
            //    printDocument1.Print();
            //}
          
            
        }

        private void panel4_Paint(object sender, PaintEventArgs e)
        {

        }

        //private void printDocument1_PrintPage(object sender, System.Drawing.Printing.PrintPageEventArgs e)
        //{
        //    e.Graphics.DrawString(printdocument1.Text, richTextBox1.Font, Brushes.Black, 100, 20);
        //    e.Graphics.PageUnit = GraphicsUnit.Inch;
        //}

        //private void richTextBox1_TextChanged(object sender, EventArgs e)
        //{

        //}
    }
}
