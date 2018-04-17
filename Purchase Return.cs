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
    public partial class Purchase_Return : Form
    {
        public Purchase_Return()
        {
            InitializeComponent();
        }

        private void Purchase_Return_Load(object sender, EventArgs e)
        {
            
        }

        private void button1_Click(object sender, EventArgs e)
        {
            if (textBox1.Text == "")
            {
                label2.Text = "please enter the bill no";
                return;
            }

            else

            {
                dataGridView1.AutoGenerateColumns = false;
                Trading_bal.Purchases obj = new Trading_bal.Purchases();
                obj.billno = Int32.Parse(textBox1.Text);
                

            
            }

        }

        private void button2_Click(object sender, EventArgs e)
        {
            this.Close();

        }
    }
}
