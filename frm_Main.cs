using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.Data.SqlClient;
using Trading_bal;

namespace Trading_win
{
    public partial class frm_Main : Form
    {
        public frm_Main()
        {
            InitializeComponent();
        }

        private void frm_Main_Load(object sender, EventArgs e)
        {

        }

        private void listToolStripMenuItem_Click(object sender, EventArgs e)
        {
            Item_list obj = new Item_list();
            obj.MdiParent = this;
            obj.Show();
        }

        private void newToolStripMenuItem_Click(object sender, EventArgs e)
        {
            item_new obj = new item_new();
            obj.MdiParent = this;
            obj.Show();
        }

        private void newToolStripMenuItem1_Click(object sender, EventArgs e)
        {
            supplier_new obj = new supplier_new();
            obj.MdiParent = this;
            utils.flag = 0;
            obj.Show();
        }

        private void listToolStripMenuItem3_Click(object sender, EventArgs e)
        {
            frm_purchaselist obj = new frm_purchaselist();
            obj.MdiParent = this;
            obj.Show();

        }

        private void newToolStripMenuItem3_Click(object sender, EventArgs e)
        {
            frm_newpurchase obj = new frm_newpurchase();
            obj.MdiParent = this;
            obj.Show();
        }

        private void listToolStripMenuItem1_Click(object sender, EventArgs e)
        {
            Supplier_Form obj = new Supplier_Form();
            obj.MdiParent = this;
            utils.objsuptlist = obj;
            obj.Show();
        }

        private void listToolStripMenuItem2_Click(object sender, EventArgs e)
        {

            client_list obj = new client_list();
            obj.MdiParent = this;
            utils.objclientlist = obj;
            obj.Show();

            
        }

        private void newToolStripMenuItem2_Click(object sender, EventArgs e)
        {
            client_new obj = new client_new();
            obj.MdiParent = this;
            obj.Show();

        }

        private void exitToolStripMenuItem_Click(object sender, EventArgs e)
        {
            Application.Exit();
        }

        private void newToolStripMenuItem4_Click(object sender, EventArgs e)
        {
            Sales_new obj = new Sales_new();
            obj.MdiParent = this;
            obj.Show();
        }

        private void lToolStripMenuItem_Click(object sender, EventArgs e)
        {
            frm_salelist obj = new frm_salelist();
            obj.MdiParent = this;
            obj.Show();
        }

        private void purchaseReturnToolStripMenuItem_Click(object sender, EventArgs e)
        {
            Purchase_Return obj = new Purchase_Return();
            obj.MdiParent = this;
            obj.Show();
        }

        private void returnToolStripMenuItem_Click(object sender, EventArgs e)
        {
            Purchase_Return obj = new Purchase_Return();
            obj.MdiParent = this;
            obj.Show();

        }

        private void newToolStripMenuItem5_Click(object sender, EventArgs e)
        {
        
        }

        private void listToolStripMenuItem4_Click(object sender, EventArgs e)
        {
           
        }

        private void exitToolStripMenuItem1_Click(object sender, EventArgs e)
        {
         
        }

        private void returnToolStripMenuItem1_Click(object sender, EventArgs e)
        {

        }

        private void usersToolStripMenuItem_Click(object sender, EventArgs e)
        {

        }

        private void newToolStripMenuItem6_Click(object sender, EventArgs e)
        {
            frm_newuser obj = new frm_newuser();
            obj.MdiParent = this;
            obj.Show();
        }

        private void listToolStripMenuItem5_Click(object sender, EventArgs e)
        {
            frm_userlist obj = new frm_userlist();
            obj.MdiParent = this;
            // utils.objfrm = obj;
            obj.Show();
        }

        private void exitToolStripMenuItem1_Click_1(object sender, EventArgs e)
        {
            frm_aboutus obj = new frm_aboutus();
            obj.MdiParent = this;
            obj.Show();
        }

        private void backupToolStripMenuItem_Click(object sender, EventArgs e)
        {
            database_backup_and_restore obj = new database_backup_and_restore();
            obj.MdiParent = this;
            obj.Show();
 

        }



        private void exitToolStripMenuItem2_Click(object sender, EventArgs e)
        {
            conform obj = new conform();
            obj.MdiParent = this;
            obj.Show();
            
        }

        private void itemlistToolStripMenuItem_Click(object sender, EventArgs e)
        {
            Report obj = new Report();
            obj.MdiParent = this;
            obj.Show();
        }

        private void supplierlistToolStripMenuItem_Click(object sender, EventArgs e)
        {
            allpurchaselist obj = new allpurchaselist();
            obj.MdiParent = this;
            obj.Show();
        }
    }
}
