using System;

namespace AddressBookDB
{
    public class Program
    {
        static void Main(string[] args)
        {
            Console.WriteLine("Welcome to AddressBook DB Program ");

            AddressBookDBrepo repo = new AddressBookDBrepo();
            repo.GetAllData();

            //insert data into Model class

            AddressBookDataModel emp = new AddressBookDataModel();

            emp.firstname = "Johnsuku";
            emp.lastname = "cenama";
            emp.state = "rajasthan";
            emp.phonenum = "15782527";
            emp.zipcode = "123412";
            emp.country = "afghan";
            emp.emailid = "afghanichaap@com";
            emp.address = "rehnum gali";

            repo.Adddata(emp);

            repo.Verifyuccases(emp);

            
        }
    }
}