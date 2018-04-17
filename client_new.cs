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
    public partial class client_new : Form
    {
        public client_new()
        {
            InitializeComponent();
        }

        private void button2_Click(object sender, EventArgs e)
        {
            this.Close();
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
                errorProvider1.SetError(textBox2, "ClientName must be filled.");
            }
            else
            {
                Trading_bal.client obj = new Trading_bal.client();
                obj.id = Int32.Parse(textBox1.Text);
                obj.clientname = textBox2.Text;
                obj.address = textBox3.Text;
                obj.phonenumber = textBox4.Text;
                obj.email = textBox5.Text;
                // obj.userid = 0;
                if (obj.save() > 0)
                {
                    MessageBox.Show("Data Saved");
                    if (utils.flag == 1)
                    {
                        utils.objclientlist.Loaddata();
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

        private void label5_Click(object sender, EventArgs e)
        {
        
        }

        private void textBox5_TextChanged(object sender, EventArgs e)
        {
        
        }

        private void textBox4_TextChanged(object sender, EventArgs e)
        {
        
        }

        private void textBox3_TextChanged(object sender, EventArgs e)
        {
            //if (System.Text.RegularExpressions.Regex.IsMatch("[^0-9]", textBox1.Text))  for number only validation
            //{
            //    MessageBox.Show("Please enter only numbers.");
            //    textBox1.Text.Remove(textBox1.Text.Length - 1);
            //}
            //else
            //{
            //}
        }

        private void textBox2_TextChanged(object sender, EventArgs e)
        {
        
        }

        private void label4_Click(object sender, EventArgs e)
        {
        
        }

        private void label3_Click(object sender, EventArgs e)
        {
        
        }

        private void label2_Click(object sender, EventArgs e)
        {
        
        }

        private void textBox2_TextChanged_1(object sender, EventArgs e)
        {
            errorProvider1.Clear();
        }

        private void client_new_Load(object sender, EventArgs e)
        {

        }
        
    }

}
