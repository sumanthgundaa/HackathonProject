using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.Text;

// NOTE: You can use the "Rename" command on the "Refactor" menu to change the class name "HackathonService" in code, svc and config file together.
public class HackathonService : IHackathonService
{
    public int Login(string UserName, string Password)
    {
        SqlConnection con;
        con = new SqlConnection(ConfigurationManager.ConnectionStrings["HackathonDataBase"].ConnectionString);
        int returnValue = -99;
        SqlCommand cmd = new SqlCommand("usp_Login", con);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@UserName", UserName);
        cmd.Parameters.AddWithValue("@Password", Password);


        SqlParameter RetValue = new SqlParameter();
        RetValue.Direction = ParameterDirection.ReturnValue;
        RetValue.SqlDbType = SqlDbType.Int;
        cmd.Parameters.Add(RetValue);
        try
        {
            con.Open();
            cmd.ExecuteNonQuery();
            returnValue = Convert.ToInt32(RetValue.Value);
        }
        catch (SqlException)
        {
            returnValue = -99;
        }
        finally
        {
            con.Close();
        }
        return returnValue;
    }

    public int AddElement(string ElementName, string ElementDisplayName,string Tool,string TimeZone,string UpdatedBy)
    {
        SqlConnection con;
        con = new SqlConnection(ConfigurationManager.ConnectionStrings["HackathonDataBase"].ConnectionString);
        int returnValue = -99;
        SqlCommand cmd = new SqlCommand("usp_AddElement", con);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@ElementName", ElementName);
        cmd.Parameters.AddWithValue("@ElementDisplayName", ElementDisplayName);
        cmd.Parameters.AddWithValue("@Tool", Tool);
        cmd.Parameters.AddWithValue("@TimeZone", TimeZone);
        cmd.Parameters.AddWithValue("@UpdatedBy", UpdatedBy);

        SqlParameter RetValue = new SqlParameter();
        RetValue.Direction = ParameterDirection.ReturnValue;
        RetValue.SqlDbType = SqlDbType.Int;
        cmd.Parameters.Add(RetValue);
        try
        {
            con.Open();
            cmd.ExecuteNonQuery();
            returnValue = Convert.ToInt32(RetValue.Value);
        }
        catch (SqlException)
        {
            returnValue = -99;
        }
        finally
        {
            con.Close();
        }
        return returnValue;
    }

    public int DisableElement(int ElementId)
    {
        SqlConnection con;
        con = new SqlConnection(ConfigurationManager.ConnectionStrings["HackathonDataBase"].ConnectionString);
        int returnValue = -99;
        SqlCommand cmd = new SqlCommand("usp_DisableElement", con);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@ElementId", ElementId);

        SqlParameter RetValue = new SqlParameter();
        RetValue.Direction = ParameterDirection.ReturnValue;
        RetValue.SqlDbType = SqlDbType.Int;
        cmd.Parameters.Add(RetValue);
        try
        {
            con.Open();
            cmd.ExecuteNonQuery();
            returnValue = Convert.ToInt32(RetValue.Value);
        }
        catch (SqlException)
        {
            returnValue = -99;
        }
        finally
        {
            con.Close();
        }
        return returnValue;
    }

    public int UpdateElement(int ElementId, string ElementName, string ElementDisplayName,string TimeZone, string UpdatedBy)
    {
        SqlConnection con;
        con = new SqlConnection(ConfigurationManager.ConnectionStrings["HackathonDataBase"].ConnectionString);
        int returnValue = -99;
        SqlCommand cmd = new SqlCommand("usp_UpdateElement", con);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@ElementId", ElementId);
        cmd.Parameters.AddWithValue("@ElementName", ElementName);
        cmd.Parameters.AddWithValue("@ElementDisplayName", ElementDisplayName);
        cmd.Parameters.AddWithValue("@TimeZone", TimeZone);
        cmd.Parameters.AddWithValue("@UpdatedBy", UpdatedBy);

        SqlParameter RetValue = new SqlParameter();
        RetValue.Direction = ParameterDirection.ReturnValue;
        RetValue.SqlDbType = SqlDbType.Int;
        cmd.Parameters.Add(RetValue);
        try
        {
            con.Open();
            cmd.ExecuteNonQuery();
            returnValue = Convert.ToInt32(RetValue.Value);
        }
        catch (SqlException)
        {
            returnValue = -99;
        }
        finally
        {
            con.Close();
        }
        return returnValue;
    }
}
