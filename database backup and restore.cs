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

namespace Trading_win
{
    public partial class database_backup_and_restore : Form
    {
        private SqlConnection conn;
        private SqlCommand command;
        private SqlDataReader reader;
        string sql = "";
        string connectionstring = "";
        public database_backup_and_restore()
        {
            InitializeComponent();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            try
            {
                connectionstring = "data source=" + txtlocation.Text +". user id=" + txtusername.Text +"; password =  " + txtpassword.Text + "";
                    conn= new SqlConnection(connectionstring);
                conn.Open();
                sql="EXEC sa_databases";
                command= new SqlCommand(sql, conn);
                reader=command.ExecuteReader();
                datapath.Items.Clear();
                while(reader.Read())
                {
                    datapath.Items.Add(reader[0].ToString());
                }
                txtloaction.Enabled = false;
                txtusername.Enabled = false;
                txtpassword.Enabled = true;
                btnconnect.Enabled = false;
                btnbackup.Enabled = true;
                btnrestore.Enabled = true;
            }
            catch(Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
        }

        private void button2_Click(object sender, EventArgs e)
        {
            txtloaction.Enabled = false;
            txtusername.Enabled = false;
            txtpassword.Enabled = true;
            datapath.Enabled = false;
            btnbackup.Enabled = false;
            btnrestore.Enabled = false;

        }

        private void btnbackup_Click(object sender, EventArgs e)
        {
            try
            {
                if (datapath.Text.CompareTo("") == 0)
                {
                    MessageBox.Show("please select a database");
                    return;
                }
                conn = new SqlConnection(connectionstring);
                conn.Open();
                sql = "BACKUP DATABASE" + datapath.Text + "TO DISK ='" + txtloaction.Text + "\\" + datapath.Text + "-" + DateTime.Now.Ticks.ToString() + ".bak'";
                command = new SqlCommand(sql, conn);
                command.ExecuteNonQuery();
                conn.Close();
                conn.Dispose();
                MessageBox.Show("successfully backup");
            }
            catch(Exception ex) 
            {
                MessageBox.Show(ex.Message);
            }
        }

        private void button4_Click(object sender, EventArgs e)
        {
            FolderBrowserDialog dlg = new FolderBrowserDialog();
            if (dlg.ShowDialog() == DialogResult.OK)
            {
                txtbackuppath.Text=dlg.SelectedPath;
            }
        }

        private void btnrestore_Click(object sender, EventArgs e)
        {
            try
            {
                if (txtbackuppath.Text.CompareTo("")==0)
                {
                    MessageBox.Show("please select a database");
                    return;
                }
                conn = new SqlConnection(connectionstring);
                conn.Open();
                sql = "ALTER Database" + txtbackuppath.Text + "Set SINGLE_USER WITH ROLLBACK IMMEDIATE;";
                sql += "RESTORE Datebase" + txtbackuppath.Text + " FROM DISK='" + txtbackuppath.Text + "' WITH REPLACE";
                command = new SqlCommand(sql, conn);
                command.ExecuteNonQuery();
                conn.Close();
                conn.Dispose();
                MessageBox.Show("sucess to restore database");

            }
            catch (Exception ex)
            { 
            }
        }

        private void button6_Click(object sender, EventArgs e)
        {
            OpenFileDialog dlg = new OpenFileDialog();
            dlg.Filter = "backup fles(*.bak)|*.bak|ALL files(*.*)|*.*";
            dlg.FilterIndex = 0;
            if (dlg.ShowDialog() == DialogResult.OK)
            {
                txtbackuppath.Text = dlg.FileName;
            }
        }
    }
}
