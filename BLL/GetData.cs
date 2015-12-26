using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using DAL;

namespace BLL
{
    public class GetData
    {
        DAL.GetData gd = new DAL.GetData();
        //获取菜单json字符串
        public string getMenuJSON(string userPower)
        {
            string menu = string.Empty;
            DataTable dt = gd.getMenu(userPower);
            menu += "[";
            foreach (DataRow dr in dt.Rows)
            {
                DataRow[] drCheck = dt.Select("menu_id=" + dr["menu_parent_id"]);
                if (drCheck.Length == 0)
                {
                    menu += "{";
                    menu += "\"menu_id\":\"" + dr["menu_id"] + "\",";
                    menu += "\"menu_parent_id\":\"" + dr["menu_parent_id"] + "\",";
                    menu += "\"menu_cn_name\":\"" + dr["menu_cn_name"] + "\",";
                    menu += "\"menu_url\":\"" + dr["menu_url"] + "\",";
                    DataRow[] drs = dt.Select("menu_parent_id =" + dr["menu_id"]);
                    if (drs.Length > 0)
                    {
                        menu += "\"child\":[";
                        foreach (DataRow drChild in drs)
                        {
                            menu += "{";
                            menu += "\"menu_id\":\"" + drChild["menu_id"] + "\",";
                            menu += "\"menu_parent_id\":\"" + drChild["menu_parent_id"] + "\",";
                            menu += "\"menu_cn_name\":\"" + drChild["menu_cn_name"] + "\",";
                            menu += "\"menu_url\":\"" + drChild["menu_url"] + "\",";
                            menu += "\"child\":\"\"";
                            menu += "},";
                        }
                        menu = menu.Substring(0, menu.Length - 1);
                        menu += "]";
                    }
                    else
                    {
                        menu += "\"child\":\"\"";
                    }
                    menu += "},";
                }
            }
            menu = menu.Substring(0,menu.Length-1);
            menu += "]";
            return menu;
        }
    }
}
