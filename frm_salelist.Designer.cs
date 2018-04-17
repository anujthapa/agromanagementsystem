namespace Trading_win
{
    partial class frm_salelist
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
            this.splitContainer1 = new System.Windows.Forms.SplitContainer();
            this.dataGridView1 = new System.Windows.Forms.DataGridView();
            this.id = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.clientname = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.saledate = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.billno = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.totalamount = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.btn_detail = new System.Windows.Forms.DataGridViewButtonColumn();
            this.btn_edit = new System.Windows.Forms.DataGridViewButtonColumn();
            this.btn_delete = new System.Windows.Forms.DataGridViewButtonColumn();
            this.clientid = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.panel1 = new System.Windows.Forms.Panel();
            this.button1 = new System.Windows.Forms.Button();
            this.textBox1 = new System.Windows.Forms.TextBox();
            this.label1 = new System.Windows.Forms.Label();
            this.statusStrip1 = new System.Windows.Forms.StatusStrip();
            this.dataGridView2 = new System.Windows.Forms.DataGridView();
            this.sdid = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.itemname = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.qty = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.price = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.amount = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.btns_delete = new System.Windows.Forms.DataGridViewButtonColumn();
            ((System.ComponentModel.ISupportInitialize)(this.splitContainer1)).BeginInit();
            this.splitContainer1.Panel1.SuspendLayout();
            this.splitContainer1.Panel2.SuspendLayout();
            this.splitContainer1.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dataGridView1)).BeginInit();
            this.panel1.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dataGridView2)).BeginInit();
            this.SuspendLayout();
            // 
            // splitContainer1
            // 
            this.splitContainer1.Dock = System.Windows.Forms.DockStyle.Fill;
            this.splitContainer1.Location = new System.Drawing.Point(0, 0);
            this.splitContainer1.Name = "splitContainer1";
            this.splitContainer1.Orientation = System.Windows.Forms.Orientation.Horizontal;
            // 
            // splitContainer1.Panel1
            // 
            this.splitContainer1.Panel1.Controls.Add(this.dataGridView1);
            this.splitContainer1.Panel1.Controls.Add(this.panel1);
            // 
            // splitContainer1.Panel2
            // 
            this.splitContainer1.Panel2.Controls.Add(this.statusStrip1);
            this.splitContainer1.Panel2.Controls.Add(this.dataGridView2);
            this.splitContainer1.Size = new System.Drawing.Size(797, 501);
            this.splitContainer1.SplitterDistance = 309;
            this.splitContainer1.TabIndex = 0;
            // 
            // dataGridView1
            // 
            this.dataGridView1.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dataGridView1.Columns.AddRange(new System.Windows.Forms.DataGridViewColumn[] {
            this.id,
            this.clientname,
            this.saledate,
            this.billno,
            this.totalamount,
            this.btn_detail,
            this.btn_edit,
            this.btn_delete,
            this.clientid});
            this.dataGridView1.Dock = System.Windows.Forms.DockStyle.Fill;
            this.dataGridView1.Location = new System.Drawing.Point(0, 50);
            this.dataGridView1.Name = "dataGridView1";
            this.dataGridView1.Size = new System.Drawing.Size(797, 259);
            this.dataGridView1.TabIndex = 1;
            this.dataGridView1.CellClick += new System.Windows.Forms.DataGridViewCellEventHandler(this.dataGridView1_CellClick);
            this.dataGridView1.CellContentClick += new System.Windows.Forms.DataGridViewCellEventHandler(this.dataGridView1_CellContentClick);
            // 
            // id
            // 
            this.id.DataPropertyName = "id";
            this.id.HeaderText = "ID";
            this.id.Name = "id";
            this.id.ReadOnly = true;
            this.id.Width = 25;
            // 
            // clientname
            // 
            this.clientname.DataPropertyName = "clientname";
            this.clientname.HeaderText = "Client";
            this.clientname.Name = "clientname";
            this.clientname.ReadOnly = true;
            this.clientname.Width = 200;
            // 
            // saledate
            // 
            this.saledate.DataPropertyName = "saledate";
            this.saledate.HeaderText = "Sale Date";
            this.saledate.Name = "saledate";
            this.saledate.ReadOnly = true;
            // 
            // billno
            // 
            this.billno.DataPropertyName = "billno";
            this.billno.HeaderText = "Bill No";
            this.billno.Name = "billno";
            this.billno.ReadOnly = true;
            // 
            // totalamount
            // 
            this.totalamount.DataPropertyName = "totalamount";
            this.totalamount.HeaderText = "Total Amount";
            this.totalamount.Name = "totalamount";
            this.totalamount.ReadOnly = true;
            // 
            // btn_detail
            // 
            this.btn_detail.HeaderText = "";
            this.btn_detail.Name = "btn_detail";
            this.btn_detail.Text = "Detail";
            this.btn_detail.UseColumnTextForButtonValue = true;
            this.btn_detail.Width = 75;
            // 
            // btn_edit
            // 
            this.btn_edit.HeaderText = "";
            this.btn_edit.Name = "btn_edit";
            this.btn_edit.Text = "Edit";
            this.btn_edit.UseColumnTextForButtonValue = true;
            this.btn_edit.Width = 75;
            // 
            // btn_delete
            // 
            this.btn_delete.HeaderText = "";
            this.btn_delete.Name = "btn_delete";
            this.btn_delete.Text = "Delete";
            this.btn_delete.UseColumnTextForButtonValue = true;
            this.btn_delete.Width = 75;
            // 
            // clientid
            // 
            this.clientid.DataPropertyName = "clientid";
            this.clientid.HeaderText = "Clientid";
            this.clientid.Name = "clientid";
            this.clientid.ReadOnly = true;
            this.clientid.Visible = false;
            // 
            // panel1
            // 
            this.panel1.Controls.Add(this.button1);
            this.panel1.Controls.Add(this.textBox1);
            this.panel1.Controls.Add(this.label1);
            this.panel1.Dock = System.Windows.Forms.DockStyle.Top;
            this.panel1.Location = new System.Drawing.Point(0, 0);
            this.panel1.Name = "panel1";
            this.panel1.Size = new System.Drawing.Size(797, 50);
            this.panel1.TabIndex = 0;
            // 
            // button1
            // 
            this.button1.Location = new System.Drawing.Point(710, 12);
            this.button1.Name = "button1";
            this.button1.Size = new System.Drawing.Size(75, 23);
            this.button1.TabIndex = 2;
            this.button1.Text = "Close";
            this.button1.UseVisualStyleBackColor = true;
            this.button1.Click += new System.EventHandler(this.button1_Click);
            // 
            // textBox1
            // 
            this.textBox1.Location = new System.Drawing.Point(87, 24);
            this.textBox1.Name = "textBox1";
            this.textBox1.Size = new System.Drawing.Size(100, 20);
            this.textBox1.TabIndex = 1;
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(26, 23);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(41, 13);
            this.label1.TabIndex = 0;
            this.label1.Text = "Search";
            // 
            // statusStrip1
            // 
            this.statusStrip1.Location = new System.Drawing.Point(0, 166);
            this.statusStrip1.Name = "statusStrip1";
            this.statusStrip1.Size = new System.Drawing.Size(797, 22);
            this.statusStrip1.TabIndex = 1;
            this.statusStrip1.Text = "statusStrip1";
            // 
            // dataGridView2
            // 
            this.dataGridView2.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dataGridView2.Columns.AddRange(new System.Windows.Forms.DataGridViewColumn[] {
            this.sdid,
            this.itemname,
            this.qty,
            this.price,
            this.amount,
            this.btns_delete});
            this.dataGridView2.Dock = System.Windows.Forms.DockStyle.Fill;
            this.dataGridView2.Location = new System.Drawing.Point(0, 0);
            this.dataGridView2.Name = "dataGridView2";
            this.dataGridView2.Size = new System.Drawing.Size(797, 188);
            this.dataGridView2.TabIndex = 0;
            // 
            // sdid
            // 
            this.sdid.DataPropertyName = "id";
            this.sdid.HeaderText = "ID";
            this.sdid.Name = "sdid";
            this.sdid.ReadOnly = true;
            this.sdid.Width = 25;
            // 
            // itemname
            // 
            this.itemname.DataPropertyName = "itemsname";
            this.itemname.HeaderText = "Item Name";
            this.itemname.Name = "itemname";
            this.itemname.ReadOnly = true;
            this.itemname.Width = 200;
            // 
            // qty
            // 
            this.qty.DataPropertyName = "qty";
            this.qty.HeaderText = "Quantity";
            this.qty.Name = "qty";
            this.qty.ReadOnly = true;
            // 
            // price
            // 
            this.price.DataPropertyName = "price";
            this.price.HeaderText = "Price";
            this.price.Name = "price";
            this.price.ReadOnly = true;
            // 
            // amount
            // 
            this.amount.DataPropertyName = "totalamount";
            this.amount.HeaderText = "Amount";
            this.amount.Name = "amount";
            this.amount.ReadOnly = true;
            // 
            // btns_delete
            // 
            this.btns_delete.HeaderText = "";
            this.btns_delete.Name = "btns_delete";
            this.btns_delete.Text = "Delete";
            this.btns_delete.UseColumnTextForButtonValue = true;
            this.btns_delete.Width = 75;
            // 
            // frm_salelist
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(797, 501);
            this.ControlBox = false;
            this.Controls.Add(this.splitContainer1);
            this.MaximizeBox = false;
            this.MinimizeBox = false;
            this.Name = "frm_salelist";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "Sale Detail";
            this.Load += new System.EventHandler(this.frm_salelist_Load);
            this.splitContainer1.Panel1.ResumeLayout(false);
            this.splitContainer1.Panel2.ResumeLayout(false);
            this.splitContainer1.Panel2.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.splitContainer1)).EndInit();
            this.splitContainer1.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.dataGridView1)).EndInit();
            this.panel1.ResumeLayout(false);
            this.panel1.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dataGridView2)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.SplitContainer splitContainer1;
        private System.Windows.Forms.DataGridView dataGridView1;
        private System.Windows.Forms.Panel panel1;
        private System.Windows.Forms.DataGridView dataGridView2;
        private System.Windows.Forms.StatusStrip statusStrip1;
        private System.Windows.Forms.DataGridViewTextBoxColumn sdid;
        private System.Windows.Forms.DataGridViewTextBoxColumn itemname;
        private System.Windows.Forms.DataGridViewTextBoxColumn qty;
        private System.Windows.Forms.DataGridViewTextBoxColumn price;
        private System.Windows.Forms.DataGridViewTextBoxColumn amount;
        private System.Windows.Forms.DataGridViewButtonColumn btns_delete;
        private System.Windows.Forms.DataGridViewTextBoxColumn id;
        private System.Windows.Forms.DataGridViewTextBoxColumn clientname;
        private System.Windows.Forms.DataGridViewTextBoxColumn saledate;
        private System.Windows.Forms.DataGridViewTextBoxColumn billno;
        private System.Windows.Forms.DataGridViewTextBoxColumn totalamount;
        private System.Windows.Forms.DataGridViewButtonColumn btn_detail;
        private System.Windows.Forms.DataGridViewButtonColumn btn_edit;
        private System.Windows.Forms.DataGridViewButtonColumn btn_delete;
        private System.Windows.Forms.DataGridViewTextBoxColumn clientid;
        private System.Windows.Forms.Button button1;
        private System.Windows.Forms.TextBox textBox1;
        private System.Windows.Forms.Label label1;
    }
}