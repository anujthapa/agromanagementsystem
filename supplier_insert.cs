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
    public partial class supplier_insert : Form
    {
        public supplier_insert()
        {
            InitializeComponent();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            Trading_bal.supplier obj = new Trading_bal.supplier();
            obj.id = Int32.Parse(textBox5.Text);
            obj.suppliername = textBox1.Text;
            obj.address = textBox2.Text;
            obj.phonenumber = textBox3.Text;
            obj.email = textBox4.Text;
            if (obj.save() > 0)
            {
                MessageBox.Show("Data Saved");
                this.Close();
               // utils.obj.Loaddata();

            }
            else
            {
                MessageBox.Show("Data not Saved");
                return;
            }
        }
    }
}
