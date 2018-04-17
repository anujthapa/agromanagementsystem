using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace Trading_win
{
    public partial class allpurchaselist : Form
    {
        public allpurchaselist()
        {
            InitializeComponent();
        }

        private void allpurchaselist_Load(object sender, EventArgs e)
        {
            // TODO: This line of code loads data into the 'tradingdbDataSet.trading_pro_purchasemaster_list' table. You can move, or remove it, as needed.
            this.trading_pro_purchasemaster_listTableAdapter.Fill(this.tradingdbDataSet.trading_pro_purchasemaster_list);

            this.reportViewer1.RefreshReport();
        }
    }
}
