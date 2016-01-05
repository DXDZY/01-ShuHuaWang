using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using MySql.Data.MySqlClient;
using Model;

namespace DAL
{
    public class GetData
    {
        string connectionString = "Server=localhost;Database=sh_data;Uid=root;Pwd=xizhu211";
        /// <summary>
        /// 获取菜单表
        /// </summary>
        /// <returns></returns>
        public DataTable getMenu(string power)
        {
            MySqlConnection connection = new MySqlConnection(connectionString);
            connection.Open();
            try
            {
                MySqlCommand cmd = connection.CreateCommand();
                cmd.CommandText = "select * from menu where menu_power like ?power order by menu_id asc";
                cmd.Parameters.Add("?power", MySqlDbType.VarChar).Value ="%" + power + "%";
                MySqlDataAdapter adap = new MySqlDataAdapter(cmd);
                DataSet ds = new DataSet();
                adap.Fill(ds);
                return ds.Tables[0];
            }
            catch (Exception)
            {
                throw;
            }
            finally
            {
                if (connection.State == ConnectionState.Open)
                {
                    connection.Close();
                }
            }
        }
        /// <summary>
        /// 获取相同菜单行
        /// </summary>
        /// <param name="menuName"></param>
        /// <returns></returns>
        public DataTable getSameNameMenu(string menuName)
        {
            MySqlConnection connection = new MySqlConnection(connectionString);
            connection.Open();
            try
            {
                MySqlCommand cmd = connection.CreateCommand();
                cmd.CommandText = "select * from menu where menu_cn_name = ?menuName";
                cmd.Parameters.Add("?menuName", MySqlDbType.VarChar).Value = menuName;
                MySqlDataAdapter adap = new MySqlDataAdapter(cmd);
                DataSet ds = new DataSet();
                adap.Fill(ds);
                return ds.Tables[0];
            }
            catch (Exception)
            {
                throw;
            }
            finally
            {
                if (connection.State == ConnectionState.Open)
                {
                    connection.Close();
                }
            }
        }
        /// <summary>
        /// 生成新菜单id
        /// </summary>
        /// <returns></returns>
        public int GetNewMenuID()
        {
            MySqlConnection connection = new MySqlConnection(connectionString);
            connection.Open();
            try
            {
                MySqlCommand cmd = connection.CreateCommand();
                cmd.CommandText = "select max(menu_id) from menu";
                MySqlDataAdapter adap = new MySqlDataAdapter(cmd);
                DataSet ds = new DataSet();
                adap.Fill(ds);
                DataTable dt = ds.Tables[0];
                int maxMenuID = Convert.ToInt32(dt.Rows[0][0]);
                return (maxMenuID+1);
            }
            catch (Exception)
            {
                throw;
            }
            finally
            {
                if (connection.State == ConnectionState.Open)
                {
                    connection.Close();
                }
            }
        }
        /// <summary>
        /// 插入新的一级菜单
        /// </summary>
        /// <param name="newMenuID"></param>
        public void insertNewFirstMenu(int newMenuID,MenuFirst mf)
        {
            MySqlConnection connection = new MySqlConnection(connectionString);
            connection.Open();
            try
            {
                MySqlCommand cmd = connection.CreateCommand();
                cmd.CommandText = @"INSERT INTO `sh_data`.`menu` (`menu_id`, `menu_parent_id`, `menu_cn_name`, `menu_power`, `menu_url`) VALUES 
                                    (?newMenuID, '0', ?menuCnName, ?menuPower, ?menuUrl);";
                cmd.Parameters.Add("?newMenuID", MySqlDbType.Int32).Value = newMenuID;
                cmd.Parameters.Add("?menuCnName", MySqlDbType.VarChar).Value = mf.firstMenuName;
                cmd.Parameters.Add("?menuPower", MySqlDbType.VarChar).Value = mf.firstMenuPower;
                cmd.Parameters.Add("?menuUrl", MySqlDbType.VarChar).Value = mf.firstMenuNameUrl;
                cmd.ExecuteNonQuery();
            }
            catch (Exception)
            {
                throw;
            }
            finally
            {
                if (connection.State == ConnectionState.Open)
                {
                    connection.Close();
                }
            }
        }
        /// <summary>
        /// 更新一级菜单
        /// </summary>
        /// <param name="newMenuID"></param>
        public void UpdateFirstMenu(MenuFirst mf)
        {
            MySqlConnection connection = new MySqlConnection(connectionString);
            connection.Open();
            try
            {
                MySqlCommand cmd = connection.CreateCommand();
                cmd.CommandText = @"UPDATE `sh_data`.`menu` SET `menu_cn_name`=?menuCnName, `menu_power`=?menuPower, `menu_url`=?menuUrl WHERE `menu_cn_name`=?menuCnName;";
                cmd.Parameters.Add("?menuCnName", MySqlDbType.VarChar).Value = mf.firstMenuName;
                cmd.Parameters.Add("?menuPower", MySqlDbType.VarChar).Value = mf.firstMenuPower;
                cmd.Parameters.Add("?menuUrl", MySqlDbType.VarChar).Value = mf.firstMenuNameUrl;
                cmd.ExecuteNonQuery();
            }
            catch (Exception)
            {
                throw;
            }
            finally
            {
                if (connection.State == ConnectionState.Open)
                {
                    connection.Close();
                }
            }
        }
        public void insert(string id,string name)
        {
            MySqlConnection connection = new MySqlConnection(connectionString);
            connection.Open();
            try
            {
                MySqlCommand cmd = connection.CreateCommand();
                cmd.CommandText = "insert into a(id,name)values(@id,@name)";
                MySqlDataAdapter adap = new MySqlDataAdapter(cmd);
                cmd.Parameters.AddWithValue("@id", int.Parse(id));
                cmd.Parameters.AddWithValue("@name",name);
                cmd.ExecuteNonQuery();
            }
            catch (Exception)
            {
                throw;
            }
            finally
            {
                if (connection.State == ConnectionState.Open)
                {
                    connection.Close();
                }
            }
        }
    }
}
