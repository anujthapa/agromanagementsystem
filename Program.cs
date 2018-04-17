using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace Trading_win
{
     static class Program
    {
         //<summary>
         //The main entry point for the application.
         //</summary>
        [STAThread]
        static void Main()
        {
            Application.EnableVisualStyles();
            Application.SetCompatibleTextRenderingDefault(false);
            Item_list obj = new Item_list();
            utils.obj = obj;
            Application.Run(new frm_login());
        }
    }

     public class utils
     {
         public static Item_list obj;
         public static frm_newpurchase objpurchase { get; set; }
         public static Sales_new objsale { get; set; }
         public static frm_newuser objfrm { get; set; }
         

         public static Supplier_Form objsuptlist { get; set; }


         public static client_list objclientlist { get; set; }
        

         public static Int32 flag { get; set; }  

         public static string itemslist_flag { get; set; }

         public static string usertype { get; set; }
     }
}

