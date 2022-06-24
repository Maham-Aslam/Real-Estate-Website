using System;
using System.Data;
using System.Data.SqlClient;



namespace databaseProject.Dal
{
    public class mydal
    {
        string connString = System.Configuration.ConfigurationManager.ConnectionStrings["db_Azure"].ConnectionString;
        public int Login(String Name,String Name1)
        {

            int Found = 0;
            SqlConnection con = new SqlConnection(connString);
            con.Open();
            SqlCommand cmd;
            try
            {
                cmd = new SqlCommand("ULogin", con); //name of your procedure
                cmd.CommandType = CommandType.StoredProcedure;

                cmd.Parameters.Add("@email", SqlDbType.VarChar, 50);
                cmd.Parameters.Add("@password", SqlDbType.VarChar, 20);
                cmd.Parameters.Add("@Found", SqlDbType.Int).Direction = ParameterDirection.Output;

                // set parameter values
                cmd.Parameters["@email"].Value = Name;
                cmd.Parameters["@password"].Value = Name1;

                cmd.ExecuteNonQuery();

                // read output value 
                Found = Convert.ToInt32(cmd.Parameters["@Found"].Value); //convert to output parameter to interger format

        


                con.Close();


            }
            catch (SqlException ex)
            {
                Console.WriteLine("SQL Error" + ex.Message.ToString());

            }
            finally
            {
                con.Close();
            }

            return Found;

        }
        public int fpassword(String Name,String Name1)
        {
            int Found = 0;
            SqlConnection con = new SqlConnection(connString);
            con.Open();
            SqlCommand cmd;
            try
            {
                cmd = new SqlCommand("forgotpassword", con); //name of your procedure
                cmd.CommandType = CommandType.StoredProcedure;

                cmd.Parameters.Add("@Uemail", SqlDbType.VarChar, 50);
                cmd.Parameters.Add("@Upass", SqlDbType.VarChar, 20);
                cmd.Parameters.Add("@Found", SqlDbType.Int).Direction = ParameterDirection.Output;

                // set parameter values
                cmd.Parameters["@Uemail"].Value = Name;
                cmd.Parameters["@Upass"].Value = Name1;

                cmd.ExecuteNonQuery();

                // read output value 
                Found = Convert.ToInt32(cmd.Parameters["@Found"].Value); //convert to output parameter to interger format




                con.Close();


            }
            catch (SqlException ex)
            {
                Console.WriteLine("SQL Error" + ex.Message.ToString());

            }
            finally
            {
                con.Close();
            }

            return Found;


        }

        public int SignUp(String Name, String Name1, String Name2, String Name3, String Name4, String Name5, String Name6, String Name7)
        {
            int Found = 0;
            SqlConnection con = new SqlConnection(connString);
            con.Open();
            SqlCommand cmd;
            try
            {
                cmd = new SqlCommand("AddData", con); //name of your procedure
                cmd.CommandType = CommandType.StoredProcedure;

                cmd.Parameters.Add("@UfName", SqlDbType.VarChar, 20);
                cmd.Parameters.Add("@UlName", SqlDbType.VarChar, 20);
                cmd.Parameters.Add("@Uemail", SqlDbType.VarChar, 50);
                cmd.Parameters.Add("@Upin", SqlDbType.VarChar, 20);
                cmd.Parameters.Add("@Udob", SqlDbType.VarChar, 20);
                cmd.Parameters.Add("@UphoneNum", SqlDbType.VarChar, 20);
                cmd.Parameters.Add("@Ucity", SqlDbType.VarChar, 20);
                cmd.Parameters.Add("@accountype", SqlDbType.Int);
                cmd.Parameters.Add("@Found", SqlDbType.Int).Direction = ParameterDirection.Output;

                // set parameter values
                cmd.Parameters["@UfName"].Value = Name;
                cmd.Parameters["@UlName"].Value = Name1;
                cmd.Parameters["@Uemail"].Value = Name2;
                cmd.Parameters["@Upin"].Value = Name3;
                cmd.Parameters["@Udob"].Value = Name4;
                cmd.Parameters["@UphoneNum"].Value = Name5;
                cmd.Parameters["@Ucity"].Value = Name6;
                cmd.Parameters["@accountype"].Value = Name7;


                cmd.ExecuteNonQuery();

                // read output value 
                Found = Convert.ToInt32(cmd.Parameters["@Found"].Value); //convert to output parameter to interger format




                con.Close();


            }
            catch (SqlException ex)
            {
                Console.WriteLine("SQL Error" + ex.Message.ToString());

            }
            finally
            {
                con.Close();
            }

            return Found;


        }
        public string[] displayInfo(string uemail)
        {
            DataSet ds = new DataSet();
            SqlConnection con = new SqlConnection(connString);
            con.Open();
            SqlCommand cmd;
            string[] info = new string[6];
            info[0] = null;
            try
            {
                string pass = "SELECT fname,lname,email,phoneNum,dob,city FROM Users WHERE [email] = " + "'" + uemail + "'";
                cmd = new SqlCommand(pass, con);
                cmd.CommandType = CommandType.Text;
                using (SqlDataAdapter da = new SqlDataAdapter(cmd))
                {
                    da.Fill(ds);
                }
                if (ds.Tables[0].Rows.Count != 0)
                {
                    for(int i = 0; i < 6; i++)
                    {
                        info[i] = Convert.ToString(ds.Tables[0].Rows[0][i]);
                    }
                }
            }
            catch (SqlException ex)
            {
                Console.WriteLine("SQL Error" + ex.Message.ToString());
            }
            finally
            {
                con.Close();
            }
            return info;
        }
        public DataSet Subscribe(string uname)
        { string name = "'" + uname + "'";
            DataSet ds = new DataSet();
            SqlConnection con = new SqlConnection(connString);
            con.Open();
            SqlCommand cmd;
            try
            {

                string pass = "SELECT userId,fName AS FirstName FROM Users Join Subscribe ON Users.userId=Subscribe.agentId WHERE Subscribe.usrId=(SELECT userId FROM Users  WHERE email= " + name + ")";
                cmd = new SqlCommand(pass, con);
                cmd.CommandType = CommandType.Text;
                using (SqlDataAdapter da = new SqlDataAdapter(cmd))
                {
                    da.Fill(ds);
                }
            }
            catch (SqlException ex)
            {
                Console.WriteLine("SQL Error" + ex.Message.ToString());
            }
            finally
            {
                con.Close();
            }
            return ds;
        }

        public DataSet Shortlist(string uname)
        {
            string name = "'" + uname + "'";
            DataSet ds = new DataSet();
            SqlConnection con = new SqlConnection(connString);
            con.Open();
            SqlCommand cmd;
            try
            {

                string pass = " SELECT propertyId,city FROM Properties Join Shortlist ON Properties.propertyId=Shortlist.sPropertyId WHERE Shortlist.sUsrId=(SELECT userId FROM Users  WHERE email= " + name + ")";
                cmd = new SqlCommand(pass, con);
                cmd.CommandType = CommandType.Text;
                using (SqlDataAdapter da = new SqlDataAdapter(cmd))
                {
                    da.Fill(ds);
                }
            }
            catch (SqlException ex)
            {
                Console.WriteLine("SQL Error" + ex.Message.ToString());
            }
            finally
            {
                con.Close();
            }
            return ds;
        }

        public DataSet MyPropertiesUP(string uname)
        {
            string name = "'" + uname + "'";
            DataSet ds = new DataSet();
            SqlConnection con = new SqlConnection(connString);
            con.Open();
            SqlCommand cmd;
            try
            {

                string pass = "SELECT propertyId,city FROM Properties where usrId=(SELECT userId FROM Users  WHERE email= " + name + ")";
                cmd = new SqlCommand(pass, con);
                cmd.CommandType = CommandType.Text;
                using (SqlDataAdapter da = new SqlDataAdapter(cmd))
                {
                    da.Fill(ds);
                }
            }
            catch (SqlException ex)
            {
                Console.WriteLine("SQL Error" + ex.Message.ToString());
            }
            finally
            {
                con.Close();
            }
            return ds;
        }

        public string[,] Search(string city,int price)
        {
            string[,] ret = new string[1, 1];
            DataSet ds = new DataSet();
            SqlConnection con = new SqlConnection(connString);
            con.Open();
            SqlCommand cmd;
            try
            {
                city = "'" + city + "'";
                string pass = "SELECT propertyId,city,propertyType FROM Properties WHERE city = " + city;

                cmd = new SqlCommand(pass, con);
                cmd.CommandType = CommandType.Text;
                using (SqlDataAdapter da = new SqlDataAdapter(cmd))
                {
                    da.Fill(ds);
                }
                int count = ds.Tables[0].Rows.Count;
                ret = new string[count + 1, 3];
                for(int i = 0; i < count; i++)
                {
                    ret[i, 0] = Convert.ToString(ds.Tables[0].Rows[i][0]);
                    ret[i, 1] = Convert.ToString(ds.Tables[0].Rows[i][1]);
                    ret[i, 2] = Convert.ToString(ds.Tables[0].Rows[i][2]);

                }
                ret[count, 0] = null;
            }
            catch (SqlException ex)
            {
                Console.WriteLine("SQL Error" + ex.Message.ToString());
            }
            finally
            {
                con.Close();
            }
            return ret;
        }

        public string[] displayPdescription(string id)
        {
            DataSet ds = new DataSet();
            SqlConnection con = new SqlConnection(connString);
            con.Open();
            SqlCommand cmd;
            string[] info = new string[7];
            info[0] = null;
            try
            {
                string pass = "SELECT * FROM  Properties WHERE [propertyId] = " + id;
                cmd = new SqlCommand(pass, con);
                cmd.CommandType = CommandType.Text;
                using (SqlDataAdapter da = new SqlDataAdapter(cmd))
                {
                    da.Fill(ds);
                }
                if (ds.Tables[0].Rows.Count != 0)
                {
                    for (int i = 0; i < 7; i++)
                    {
                        info[i] = Convert.ToString(ds.Tables[0].Rows[0][i]);
                    }
                }
            }
            catch (SqlException ex)
            {
                Console.WriteLine("SQL Error" + ex.Message.ToString());
            }
            finally
            {
                con.Close();
            }
            return info;
        }

        public string[] displayAgentInfo(string id)
        {
            DataSet ds = new DataSet();
            SqlConnection con = new SqlConnection(connString);
            con.Open();
            SqlCommand cmd;
            string[] info = new string[5];
            info[0] = null;
            try
            {
                string pass = "SELECT fName,lName,email,phoneNum,userId FROM Users where userId = (SELECT usrId FROM Properties where propertyId = " + id + " )";
                cmd = new SqlCommand(pass, con);
                cmd.CommandType = CommandType.Text;
                using (SqlDataAdapter da = new SqlDataAdapter(cmd))
                {
                    da.Fill(ds);
                }
                if (ds.Tables[0].Rows.Count != 0)
                {
                    for (int i = 0; i < 5; i++)
                    {
                        info[i] = Convert.ToString(ds.Tables[0].Rows[0][i]);
                    }
                }
            }
            catch (SqlException ex)
            {
                Console.WriteLine("SQL Error" + ex.Message.ToString());
            }
            finally
            {
                con.Close();
            }
            return info;
        }

        public int AddNewProperty(string Name, string Name1, int Name2, int Name3, string Name4, string uemail)
        {
            SqlConnection con = new SqlConnection(connString);
            con.Open();
            SqlCommand cmd;
            try
            {
                cmd = new SqlCommand("AddPropproc", con); //name of your procedure
                cmd.CommandType = CommandType.StoredProcedure;

                cmd.Parameters.Add("@locat", SqlDbType.VarChar, 50);
                cmd.Parameters.Add("@city", SqlDbType.VarChar, 50);
                cmd.Parameters.Add("@price", SqlDbType.Int);
                cmd.Parameters.Add("@area", SqlDbType.Int);
                cmd.Parameters.Add("@ptype", SqlDbType.VarChar, 50);
                cmd.Parameters.Add("@email", SqlDbType.VarChar, 50);

                // set parameter values
                cmd.Parameters["@locat"].Value = Name;
                cmd.Parameters["@city"].Value = Name1;
                cmd.Parameters["@price"].Value = Name2;
                cmd.Parameters["@area"].Value = Name3;
                cmd.Parameters["@ptype"].Value = Name4;
                cmd.Parameters["@email"].Value = uemail;

                cmd.ExecuteNonQuery();

                con.Close();


            }
            catch (SqlException ex)
            {
                Console.WriteLine("SQL Error" + ex.Message.ToString());

            }
            finally
            {
                con.Close();
            }
            return 1;
        }

        public DataSet MyPropertiesAI(string id)
        {
           
            DataSet ds = new DataSet();
            SqlConnection con = new SqlConnection(connString);
            con.Open();
            SqlCommand cmd;
            try
            {

                string pass = "SELECT propertyId,city FROM Properties where usrId=(SELECT usrId FROM Properties where propertyId= " + id + ")";
                cmd = new SqlCommand(pass, con);
                cmd.CommandType = CommandType.Text;
                using (SqlDataAdapter da = new SqlDataAdapter(cmd))
                {
                    da.Fill(ds);
                }
            }
            catch (SqlException ex)
            {
                Console.WriteLine("SQL Error" + ex.Message.ToString());
            }
            finally
            {
                con.Close();
            }
            return ds;
        }

        public DataSet ShowProp()
        {
            DataSet ds = new DataSet();
            SqlConnection con = new SqlConnection(connString);
            con.Open();
            SqlCommand cmd;
            try
            {

                string pass = "SELECT propertyLocation,COUNT(*) AS Number FROM Properties GROUP BY propertyLocation";
                cmd = new SqlCommand(pass, con);
                cmd.CommandType = CommandType.Text;
                using (SqlDataAdapter da = new SqlDataAdapter(cmd))
                {
                    da.Fill(ds);
                }
            }
            catch (SqlException ex)
            {
                Console.WriteLine("SQL Error" + ex.Message.ToString());
            }
            finally
            {
                con.Close();
            }
            return ds;

        }

        public void Subscribetable(String email, String propid)
        {
            
            SqlConnection con = new SqlConnection(connString);
            con.Open();
            SqlCommand cmd;
            try
            {
                cmd = new SqlCommand("Subscribeproc", con); //name of your procedure
                cmd.CommandType = CommandType.StoredProcedure;

                cmd.Parameters.Add("@email", SqlDbType.VarChar, 50);
                cmd.Parameters.Add("@pid", SqlDbType.Int);
              

                // set parameter values
                cmd.Parameters["@email"].Value = email;
                cmd.Parameters["@pid"].Value = propid;

                cmd.ExecuteNonQuery();

           
               


                con.Close();


            }
            catch (SqlException ex)
            {
                Console.WriteLine("SQL Error" + ex.Message.ToString());

            }
            finally
            {
                con.Close();
            }

        }


        public void RateAgent(string uemail, int rate)
        {
            SqlConnection con = new SqlConnection(connString);
            con.Open();
            SqlCommand cmd;
            try
            {
                cmd = new SqlCommand("RateAgentProc", con); //name of your procedure
                cmd.CommandType = CommandType.StoredProcedure;

                cmd.Parameters.Add("@email", SqlDbType.VarChar, 50);
                cmd.Parameters.Add("@rate", SqlDbType.Int);

                // set parameter values
                cmd.Parameters["@email"].Value = uemail;
                cmd.Parameters["@rate"].Value = rate;

                cmd.ExecuteNonQuery();

                con.Close();


            }
            catch (SqlException ex)
            {
                Console.WriteLine("SQL Error" + ex.Message.ToString());

            }
            finally
            {
                con.Close();
            }
        }


        public int[] UpdateData(String Name, String Name1, String Name3, String Name4, String Name5, String Name6, String Name7)
        {
            int Found = 0;
            int atype = 0;
            int[] ret = new int[2];

            SqlConnection con = new SqlConnection(connString);
            con.Open();
            SqlCommand cmd;
            try
            {
                cmd = new SqlCommand("UpdateData", con); //name of your procedure
                cmd.CommandType = CommandType.StoredProcedure;

                cmd.Parameters.Add("@UfName", SqlDbType.VarChar, 20);
                cmd.Parameters.Add("@UlName", SqlDbType.VarChar, 20);
                cmd.Parameters.Add("@Upin", SqlDbType.VarChar, 20);
                cmd.Parameters.Add("@Udob", SqlDbType.VarChar, 20);
                cmd.Parameters.Add("@UphoneNum", SqlDbType.VarChar, 20);
                cmd.Parameters.Add("@Ucity", SqlDbType.VarChar, 20);
                cmd.Parameters.Add("@email", SqlDbType.VarChar,50);
                cmd.Parameters.Add("@Found", SqlDbType.Int).Direction = ParameterDirection.Output;
                cmd.Parameters.Add("@accountType", SqlDbType.Int).Direction = ParameterDirection.Output;

                // set parameter values
                cmd.Parameters["@UfName"].Value = Name;
                cmd.Parameters["@UlName"].Value = Name1;
                cmd.Parameters["@Upin"].Value = Name3;
                cmd.Parameters["@Udob"].Value = Name4;
                cmd.Parameters["@UphoneNum"].Value = Name5;
                cmd.Parameters["@Ucity"].Value = Name6;
                cmd.Parameters["@email"].Value = Name7;


                cmd.ExecuteNonQuery();

                // read output value 
                Found = Convert.ToInt32(cmd.Parameters["@Found"].Value); //convert to output parameter to interger format
                atype= Convert.ToInt32(cmd.Parameters["@accountType"].Value);
                
                ret[0] = Found;
                ret[1] = atype;



                con.Close();


            }
            catch (SqlException ex)
            {
                Console.WriteLine("SQL Error" + ex.Message.ToString());

            }
            finally
            {
                con.Close();
            }

            return ret;


        }

        public void Shortlisttable(String email, String propid)
        {

            SqlConnection con = new SqlConnection(connString);
            con.Open();
            SqlCommand cmd;
            try
            {
                cmd = new SqlCommand("Shortlistproc", con); //name of your procedure
                cmd.CommandType = CommandType.StoredProcedure;

                cmd.Parameters.Add("@email", SqlDbType.VarChar, 50);
                cmd.Parameters.Add("@pid", SqlDbType.Int);


                // set parameter values
                cmd.Parameters["@email"].Value = email;
                cmd.Parameters["@pid"].Value = propid;

                cmd.ExecuteNonQuery();





                con.Close();


            }
            catch (SqlException ex)
            {
                Console.WriteLine("SQL Error" + ex.Message.ToString());

            }
            finally
            {
                con.Close();
            }




        }

        public void RemoveFromShortlisttable(string email, string propid)
        {

            SqlConnection con = new SqlConnection(connString);
            con.Open();
            SqlCommand cmd;
            try
            {
                cmd = new SqlCommand("DeleteFromShortlistTable", con); //name of your procedure
                cmd.CommandType = CommandType.StoredProcedure;

                cmd.Parameters.Add("@email", SqlDbType.VarChar, 50);
                cmd.Parameters.Add("@pid", SqlDbType.Int);


                // set parameter values
                cmd.Parameters["@email"].Value = email;
                cmd.Parameters["@pid"].Value = propid;

                cmd.ExecuteNonQuery();





                con.Close();


            }
            catch (SqlException ex)
            {
                Console.WriteLine("SQL Error" + ex.Message.ToString());

            }
            finally
            {
                con.Close();
            }




        }

        public void UnSubscribe(String email, String propid)
        {

            SqlConnection con = new SqlConnection(connString);
            con.Open();
            SqlCommand cmd;
            try
            {
                cmd = new SqlCommand("Unsubscribeproc", con); //name of your procedure
                cmd.CommandType = CommandType.StoredProcedure;

                cmd.Parameters.Add("@email", SqlDbType.VarChar, 50);
                cmd.Parameters.Add("@pid", SqlDbType.Int);


                // set parameter values
                cmd.Parameters["@email"].Value = email;
                cmd.Parameters["@pid"].Value = propid;

                cmd.ExecuteNonQuery();





                con.Close();


            }
            catch (SqlException ex)
            {
                Console.WriteLine("SQL Error" + ex.Message.ToString());

            }
            finally
            {
                con.Close();
            }




        }

        public int PlaceOffer(string email,string pid, string price)
        {
            int Found = 0;
            SqlConnection con = new SqlConnection(connString);
            con.Open();
            SqlCommand cmd;
            try
            {
                cmd = new SqlCommand("placeOfferProc", con); //name of your procedure
                cmd.CommandType = CommandType.StoredProcedure;

                cmd.Parameters.Add("@uemail", SqlDbType.VarChar, 50);
                cmd.Parameters.Add("@pid", SqlDbType.Int);
                cmd.Parameters.Add("@price", SqlDbType.Int);
                cmd.Parameters.Add("@found", SqlDbType.Int).Direction = ParameterDirection.Output;


                // set parameter values
                cmd.Parameters["@uemail"].Value = email;
                cmd.Parameters["@pid"].Value = pid;
                cmd.Parameters["@price"].Value = price;

                cmd.ExecuteNonQuery();
                Found = Convert.ToInt32(cmd.Parameters["@found"].Value);




                con.Close();


            }
            catch (SqlException ex)
            {
                Console.WriteLine("SQL Error" + ex.Message.ToString());

            }
            finally
            {
                con.Close();
            }
            return Found;

        }

        public DataSet DisplayOffers(string uname)
        {
            string name = "'" + uname + "'";
            DataSet ds = new DataSet();
            SqlConnection con = new SqlConnection(connString);
            con.Open();
            SqlCommand cmd;
            try
            {

              
                string pass = " SELECT * FROM Offer WHERE propId IN ( SELECT propertyId FROM Properties WHERE usrId=( SELECT userId FROM Users where email=" + name + ") " +
                    ")";
                cmd = new SqlCommand(pass, con);
                cmd.CommandType = CommandType.Text;
                using (SqlDataAdapter da = new SqlDataAdapter(cmd))
                {
                    da.Fill(ds);
                }
            }
            catch (SqlException ex)
            {
                Console.WriteLine("SQL Error" + ex.Message.ToString());
            }
            finally
            {
                con.Close();
            }
            return ds;
        }

        public void AcceptOffer(string uid, string pid, string price)
        {
           
            SqlConnection con = new SqlConnection(connString);
            con.Open();
            SqlCommand cmd;
            try
            {
                cmd = new SqlCommand("AcceptOfferProc", con); //name of your procedure
                cmd.CommandType = CommandType.StoredProcedure;

                cmd.Parameters.Add("@propId", SqlDbType.VarChar, 50);
                cmd.Parameters.Add("@usrid", SqlDbType.Int);
                cmd.Parameters.Add("@Oprice", SqlDbType.Int);


                // set parameter values
                cmd.Parameters["@propId"].Value = uid;
                cmd.Parameters["@Oprice"].Value = price;
                cmd.Parameters["@usrid"].Value = pid;

                cmd.ExecuteNonQuery();
               




                con.Close();


            }
            catch (SqlException ex)
            {
                Console.WriteLine("SQL Error" + ex.Message.ToString());

            }
            finally
            {
                con.Close();
            }
           

        }

        public void RejectOffer(string uid, string pid, string price)
        {
           
            SqlConnection con = new SqlConnection(connString);
            con.Open();
            SqlCommand cmd;
            try
            {
                cmd = new SqlCommand("RejectOfferProc", con); //name of your procedure
                cmd.CommandType = CommandType.StoredProcedure;

                cmd.Parameters.Add("@propId", SqlDbType.VarChar, 50);
                cmd.Parameters.Add("@Oprice", SqlDbType.Int);
                cmd.Parameters.Add("@usrid", SqlDbType.Int);


                // set parameter values
                cmd.Parameters["@propId"].Value = uid;
               
                cmd.Parameters["@usrid"].Value = pid;
                cmd.Parameters["@Oprice"].Value = price;

                cmd.ExecuteNonQuery();





                con.Close();


            }
            catch (SqlException ex)
            {
                Console.WriteLine("SQL Error" + ex.Message.ToString());

            }
            finally
            {
                con.Close();
            }


        }
    }
}