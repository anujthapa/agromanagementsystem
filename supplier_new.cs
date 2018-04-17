using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.Text.RegularExpressions;

namespace Trading_win
{
    public partial class supplier_new : Form
    {
        public supplier_new()
        {
            InitializeComponent();
        }

        private void textBox5_TextChanged(object sender, EventArgs e)
        {

        }

        private void textBox4_TextChanged(object sender, EventArgs e)
        {

        }

        private void textBox3_TextChanged(object sender, EventArgs e)
        {

        }

        private void textBox2_TextChanged(object sender, EventArgs e)
        {
            errorProvider1.Clear();
        }

        private void textBox1_TextChanged(object sender, EventArgs e)
        {

        }

        private void button1_Click(object sender, EventArgs e)
        {
            string email = textBox5.Text;
            Regex regex = new Regex(@"^([\w\.\-]+)@([\w\-]+)((\.(\w){2,3})+)$");
            Match match = regex.Match(email);
            if (match.Success)
            {
                MessageBox.Show(email + " email is correct");
            }

            else
            {
                MessageBox.Show(email + " email is incorrect");
                return;
                

            }
            
            if (textBox2.Text == string.Empty)
            {
                errorProvider1.SetError(textBox2, "Enter Supplier Name ");
            }
            else
            {
                Trading_bal.supplier obj = new Trading_bal.supplier();
                obj.id = Int32.Parse(textBox1.Text);
                obj.suppliername = textBox2.Text;
                obj.address = textBox3.Text;
                obj.phonenumber = textBox4.Text;
                obj.email = textBox5.Text;
                if (obj.save() > 0)
                {
                    MessageBox.Show("Data Saved");
                    if (utils.flag == 1)
                    {
                        utils.objsuptlist.loaddata();
                    }
                    this.Close();


                }
                else
                {
                    MessageBox.Show("Data not Saved");
                    return;
                }

            }
        }

        private void button2_Click(object sender, EventArgs e)
        {
            this.Close();
        }

        private void supplier_new_Load(object sender, EventArgs e)
        {

        }

    }
}