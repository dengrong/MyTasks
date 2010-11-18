namespace EggStudio.MyTasks.WinForm {
    partial class FrmMain {
        /// <summary>
        /// 必需的设计器变量。
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// 清理所有正在使用的资源。
        /// </summary>
        /// <param name="disposing">如果应释放托管资源，为 true；否则为 false。</param>
        protected override void Dispose(bool disposing) {
            if (disposing && (components != null)) {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows 窗体设计器生成的代码

        /// <summary>
        /// 设计器支持所需的方法 - 不要
        /// 使用代码编辑器修改此方法的内容。
        /// </summary>
        private void InitializeComponent() {
            this.tabPages = new System.Windows.Forms.TabControl();
            this.tabUndoTasks = new System.Windows.Forms.TabPage();
            this.lbUndoTasks = new System.Windows.Forms.ListBox();
            this.tabCommonTasks = new System.Windows.Forms.TabPage();
            this.tabSpecifyTimeTasks = new System.Windows.Forms.TabPage();
            this.tabRepeatTasks = new System.Windows.Forms.TabPage();
            this.tabPages.SuspendLayout();
            this.tabUndoTasks.SuspendLayout();
            this.SuspendLayout();
            // 
            // tabPages
            // 
            this.tabPages.Controls.Add(this.tabUndoTasks);
            this.tabPages.Controls.Add(this.tabCommonTasks);
            this.tabPages.Controls.Add(this.tabSpecifyTimeTasks);
            this.tabPages.Controls.Add(this.tabRepeatTasks);
            this.tabPages.Dock = System.Windows.Forms.DockStyle.Fill;
            this.tabPages.Location = new System.Drawing.Point(0, 0);
            this.tabPages.Name = "tabPages";
            this.tabPages.SelectedIndex = 0;
            this.tabPages.Size = new System.Drawing.Size(432, 476);
            this.tabPages.TabIndex = 0;
            // 
            // tabUndoTasks
            // 
            this.tabUndoTasks.Controls.Add(this.lbUndoTasks);
            this.tabUndoTasks.Location = new System.Drawing.Point(4, 22);
            this.tabUndoTasks.Name = "tabUndoTasks";
            this.tabUndoTasks.Padding = new System.Windows.Forms.Padding(3);
            this.tabUndoTasks.Size = new System.Drawing.Size(424, 450);
            this.tabUndoTasks.TabIndex = 0;
            this.tabUndoTasks.Text = "待完成";
            this.tabUndoTasks.UseVisualStyleBackColor = true;
            // 
            // lbUndoTasks
            // 
            this.lbUndoTasks.Dock = System.Windows.Forms.DockStyle.Fill;
            this.lbUndoTasks.Font = new System.Drawing.Font("宋体", 26.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(134)));
            this.lbUndoTasks.ItemHeight = 35;
            this.lbUndoTasks.Items.AddRange(new object[] {
            "A",
            "B",
            "C",
            "D",
            "E"});
            this.lbUndoTasks.Location = new System.Drawing.Point(3, 3);
            this.lbUndoTasks.Name = "lbUndoTasks";
            this.lbUndoTasks.Size = new System.Drawing.Size(418, 424);
            this.lbUndoTasks.TabIndex = 0;
            // 
            // tabCommonTasks
            // 
            this.tabCommonTasks.Location = new System.Drawing.Point(4, 22);
            this.tabCommonTasks.Name = "tabCommonTasks";
            this.tabCommonTasks.Padding = new System.Windows.Forms.Padding(3);
            this.tabCommonTasks.Size = new System.Drawing.Size(424, 450);
            this.tabCommonTasks.TabIndex = 1;
            this.tabCommonTasks.Text = "无指定时间";
            this.tabCommonTasks.UseVisualStyleBackColor = true;
            // 
            // tabSpecifyTimeTasks
            // 
            this.tabSpecifyTimeTasks.Location = new System.Drawing.Point(4, 22);
            this.tabSpecifyTimeTasks.Name = "tabSpecifyTimeTasks";
            this.tabSpecifyTimeTasks.Size = new System.Drawing.Size(424, 450);
            this.tabSpecifyTimeTasks.TabIndex = 2;
            this.tabSpecifyTimeTasks.Text = "指定时间";
            this.tabSpecifyTimeTasks.UseVisualStyleBackColor = true;
            // 
            // tabRepeatTasks
            // 
            this.tabRepeatTasks.Location = new System.Drawing.Point(4, 22);
            this.tabRepeatTasks.Name = "tabRepeatTasks";
            this.tabRepeatTasks.Size = new System.Drawing.Size(424, 450);
            this.tabRepeatTasks.TabIndex = 3;
            this.tabRepeatTasks.Text = "重复周期";
            this.tabRepeatTasks.UseVisualStyleBackColor = true;
            // 
            // FrmMain
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(432, 476);
            this.Controls.Add(this.tabPages);
            this.Name = "FrmMain";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "My Tasks";
            this.tabPages.ResumeLayout(false);
            this.tabUndoTasks.ResumeLayout(false);
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.TabControl tabPages;
        private System.Windows.Forms.TabPage tabUndoTasks;
        private System.Windows.Forms.TabPage tabCommonTasks;
        private System.Windows.Forms.TabPage tabSpecifyTimeTasks;
        private System.Windows.Forms.TabPage tabRepeatTasks;
        private System.Windows.Forms.ListBox lbUndoTasks;

    }
}

