using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using BLL;

namespace shuhuawang.handler
{
    /// <summary>
    /// GetDataHandler 的摘要说明
    /// </summary>
    public class GetDataHandler : IHttpHandler
    {

        public void ProcessRequest(HttpContext context)
        {
            GetData gd = new GetData();           
            string cmd = context.Request["cmd"].ToString();
            if (cmd == "getMenu")
            {
                string userPower = context.Request["userPower"].ToString();
                string power = string.Empty;
                switch(userPower)
                {
                    case "0":
                        power = "游客";
                        break;
                    case "1":
                        power = "管理员";
                        break;
                    default:
                        power = "游客";
                        break;
                }
                string menu = gd.getMenuJSON(power);
                context.Response.Write(menu);
            }
            context.Response.ContentType = "text/plain";
            context.Response.Write("");
        }

        public bool IsReusable
        {
            get
            {
                return false;
            }
        }
    }
}