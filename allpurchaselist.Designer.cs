﻿namespace Trading_win
{
    partial class allpurchaselist
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.components = new System.ComponentModel.Container();
            Microsoft.Reporting.WinForms.ReportDataSource reportDataSource1 = new Microsoft.Reporting.WinForms.ReportDataSource();
            this.reportViewer1 = new Microsoft.Reporting.WinForms.ReportViewer();
            this.tradingdbDataSet = new Trading_win.tradingdbDataSet();
            this.trading_pro_purchasemaster_listBindingSource = new System.Windows.Forms.BindingSource(this.components);
            this.trading_pro_purchasemaster_listTableAdapter = new Trading_win.tradingdbDataSetTableAdapters.trading_pro_purchasemaster_listTableAdapter();
            ((System.ComponentModel.ISupportInitialize)(this.tradingdbDataSet)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.trading_pro_purchasemaster_listBindingSource)).BeginInit();
            this.SuspendLayout();
            // 
            // reportViewer1
            // 
            this.reportViewer1.Dock = System.Windows.Forms.DockStyle.Fill;
            reportDataSource1.Name = "DataSet1";
            reportDataSource1.Value = this.trading_pro_purchasemaster_listBindingSource;
            this.reportViewer1.LocalReport.DataSources.Add(reportDataSource1);
            this.reportViewer1.LocalReport.ReportEmbeddedResource = "Trading_win.Report3.rdlc";
            this.reportViewer1.Location = new System.Drawing.Point(0, 0);
            this.reportViewer1.Name = "reportViewer1";
            this.reportViewer1.Size = new System.Drawing.Size(693, 351);
            this.reportViewer1.TabIndex = 0;
            // 
            // tradingdbDataSet
            // 
            this.tradingdbDataSet.DataSetName = "tradingdbDataSet";
            this.tradingdbDataSet.SchemaSerializationMode = System.Data.SchemaSerializationMode.IncludeSchema;
            // 
            // trading_pro_purchasemaster_listBindingSource
            // 
            this.trading_pro_purchasemaster_listBindingSource.DataMember = "trading_pro_purchasemaster_list";
            this.trading_pro_purchasemaster_listBindingSource.DataSource = this.tradingdbDataSet;
            // 
            // trading_pro_purchasemaster_listTableAdapter
            // 
            this.trading_pro_purchasemaster_listTableAdapter.ClearBeforeFill = true;
            // 
            // allpurchaselist
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(693, 351);
            this.Controls.Add(this.reportViewer1);
            this.Name = "allpurchaselist";
            this.Text = "allpurchaselist";
            this.Load += new System.EventHandler(this.allpurchaselist_Load);
            ((System.ComponentModel.ISupportInitialize)(this.tradingdbDataSet)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.trading_pro_purchasemaster_listBindingSource)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private Microsoft.Reporting.WinForms.ReportViewer reportViewer1;
        private System.Windows.Forms.BindingSource trading_pro_purchasemaster_listBindingSource;
        private tradingdbDataSet tradingdbDataSet;
        private tradingdbDataSetTableAdapters.trading_pro_purchasemaster_listTableAdapter trading_pro_purchasemaster_listTableAdapter;
    }
}