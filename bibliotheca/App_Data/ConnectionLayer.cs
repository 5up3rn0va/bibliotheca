using System.Data.SqlClient;


namespace bibliotheca
{
    public partial class ConnectionLayer
    {
       public SqlConnection Setconnection()
        {
            SqlConnection con = new SqlConnection("Data Source=DESKTOP-1328RNG;Initial Catalog=aspproj;Integrated Security=True");
            con.Open();
            return con;
        }
    }
}
