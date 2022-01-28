using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.SqlClient;

namespace AddressBookDB
{
    public class AddressBookDBrepo
    {
        public static string ConnectionString = @"DataServer=DESKTOP-2G853OJ;Initial Catalog=AddressBook;Integrated Security=True";
        SqlConnection connection =new SqlConnection(ConnectionString);


     // retrive data from Database to our Program
        public void GetAllData()
        {
            try
            {
                AddressBookDataModel model = new AddressBookDataModel();
                using(this.connection)
                {
                    string query = @"select * from AddressBookTable";

                    SqlCommand cmd = new SqlCommand(query, this.connection);
                    this.connection.Open();
                    SqlDataReader data=cmd.ExecuteReader();
                    if(data.HasRows)
                    {
                        while(data.Read())
                        {
                            model.id = data.GetInt32(0);
                            model.firstname = data.GetString(1);
                            model.lastname= data.GetString(2);
                            model.address = data.GetString(3);
                            model.zipcode = data.GetString(4);
                            model.state = data.GetString(5);
                            model.country = data.GetString(6);
                            model.phonenum = data.GetString(7);
                            model.emailid = data.GetString(8);

                            Console.WriteLine("{0}{1}{2}{3}{4}{5}{6}{7}{8}", model.id, model.firstname, model.lastname, model.address, model.zipcode, model.state, model.country, model.phonenum, model.emailid);
                            Console.WriteLine("\n");
                        }
                    }
                    else
                    {
                        Console.WriteLine("No data available");
                    }
                    data.Close();
                    this.connection.Close();
                }
            }
            catch(Exception ex)
            {
                Console.WriteLine(ex.Message);
            }
            finally
            {
                this.connection.Close();
            }
        }


        //add data to database via Program

        public void Adddata(AddressBookDataModel emp)
        {
            string query = @"insert into AddressBookTable(firstname,Lastname,address,zipcode,stateCode,country,phonenum,emailid)" +
                            "values(emp.firstname,emp.lastname,emp.address,emp.zipcode,emp.state,emp.country,emp.phonenum,emp.emailid)";
            try
            {
                using(this.connection)
                {
                    this.connection.Open();
                    SqlCommand cmd = new SqlCommand(query, this.connection);
                   
                    int NumberofRecord = cmd.ExecuteNonQuery();
                    if(NumberofRecord > 1)
                    {
                        Console.WriteLine("data inserted successfully");
                    }
                    else
                    {
                        Console.WriteLine("some Problem Occur");
                    }



                }
            }
            catch(Exception ex)
            {
                Console.WriteLine(ex.Message);
            }
            finally
            {
                this.connection.Close();
            }

        }


    }
}
