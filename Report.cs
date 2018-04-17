using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

using Microsoft.Reporting.WinForms;

using bal = Trading_bal ;


namespace Trading_win
{
    public partial class Report : Form
    {
        public Report()
        {
            InitializeComponent();
        }

        private void Report_Load(object sender, EventArgs e)
        {
            // TODO: This line of code loads data into the 'tradingdbDataSet.trading_pro_client_list' table. You can move, or remove it, as needed.
            this.trading_pro_client_listTableAdapter.Fill(this.tradingdbDataSet.trading_pro_client_list);

            this.reportViewer1.RefreshReport();
        }


        public void loadReport(string clientname , string billno , string billdate , string totalamount ,List<bal.sales> s)
        {
            //ReportParameter rp = new ReportParameter("Rp_clientName", clientname);

            ReportParameter[] rp = new ReportParameter[4];
            rp[0] = new ReportParameter("Rp_clientName", clientname);
            rp[1] = new ReportParameter("rp_billno", billno);
            rp[2] = new ReportParameter("rp_billdate", billdate);
            rp[3] = new ReportParameter("rp_totalamount", totalamount);             
            this.reportViewer1.LocalReport.SetParameters(rp);


            ReportDataSource rds = new ReportDataSource("DataSet1", s);
            this.reportViewer1.LocalReport.DataSources.Add(rds);


        }
        private void reportViewer1_Load(object sender, EventArgs e)
        {

            
        }

       
    }
}
