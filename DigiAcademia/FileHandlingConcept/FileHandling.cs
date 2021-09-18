//using System;
//using System.Collections.Generic;
//using System.IO;
//using System.Linq;
//using System.Web;

//namespace DigiAcademia.FileHandlingConcept
//{
//    public class FileHandling
//    {

//        public static void WriteFile()
//        {

            
//            string dummyLines = "This is first line." + Environment.NewLine +
//                    "This is second line." + Environment.NewLine +
//                    "This is third line.";

//            //Opens DummyFile.txt and append lines. If file is not exists then create and open.
//            File.AppendAllLines(@"C:\DummyFile.txt", dummyLines.Split(Environment.NewLine.ToCharArray()).ToList<string>());

//            //Opens DummyFile.txt and write texts. If file is not exists then create and open.
//            File.WriteAllText(@"C:\DummyFile.txt", "This is dummy text");

//            //Check whether file is exists or not at particular location
//            bool isFileExists = File.Exists(@"C:\ DummyFile.txt"); // returns false

//            //Copy DummyFile.txt as new file DummyFileNew.txt
//            File.Copy(@"C:\DummyFile.txt", @"D:\NewDummyFile.txt");

//            //Get when the file was accessed last time 
//            DateTime lastAccessTime = File.GetLastAccessTime(@"C:\DummyFile.txt");

//            //get when the file was written last time
//            DateTime lastWriteTime = File.GetLastWriteTime(@"C:\DummyFile.txt");

//            // Move file to new location
//            File.Move(@"C:\DummyFile.txt", @"D:\DummyFile.txt");

//            //Open file and returns FileStream for reading bytes from the file
//            FileStream fs = File.Open(@"D:\DummyFile.txt", FileMode.OpenOrCreate);

//            //Open file and return StreamReader for reading string from the file
//            StreamReader sr = File.OpenText(@"D:\DummyFile.txt");

//            //Delete file
//            File.Delete(@"C:\DummyFile.txt");


//            //Create object of FileInfo for specified path            
//            FileInfo fi = new FileInfo(@"D:\DummyFile.txt");

//            //Open file for Read\Write
//            FileStream fs = fi.Open(FileMode.OpenOrCreate, FileAccess.Read, FileShare.Read);

//            //Create object of StreamReader by passing FileStream object on which it needs to operates on
//            StreamReader sr = new StreamReader(fs);

//            //Use ReadToEnd method to read all the content from file
//            string fileContent = sr.ReadToEnd();

//            //Close StreamReader object after operation
//            sr.Close();
//            fs.Close();

//            //Create object of FileInfo for specified path            
//            FileInfo fi = new FileInfo(@"D:\DummyFile.txt");

//            //Open file for Read\Write
//            FileStream fs = fi.Open(FileMode.OpenOrCreate, FileAccess.Write, FileShare.Read);

//            //Create StreamWriter object to write string to FileSream
//            StreamWriter sw = new StreamWriter(fs);
//            sw.WriteLine("Another line from streamwriter");
//            sw.Close();

//            //Create FileInfo object for DummyFile.txt
//            FileInfo fi = new FileInfo(@"D:\DummyFile.txt");

//            //open DummyFile.txt for read operation
//            FileStream fsToRead = fi.Open(FileMode.OpenOrCreate, FileAccess.ReadWrite, FileShare.ReadWrite);

//            //open DummyFile.txt for write operation
//            FileStream fsToWrite = fi.Open(FileMode.OpenOrCreate, FileAccess.ReadWrite, FileShare.ReadWrite);

//            //get the StreamReader

//            StreamReader sr = new StreamReader(fsToRead);
//            //read all texts using StreamReader object
//            string fileContent = sr.ReadToEnd();
//            sr.Close();

//            //get the StreamWriter
//            StreamWriter sw = new StreamWriter(fsToWrite);
//            //write some text using StreamWriter
//            sw.WriteLine("Another line from streamwriter");
//            sw.Close();

//            //close all Stream objects
//            fsToRead.Close();
//            fsToWrite.Close();




//            <configuration>  
//    <appSettings>  
//        <add key="ValidationSettings:UnobtrusiveValidationMode" value="None" />  
//    </appSettings>  
//    <system.web>  
//        <compilation debug="true" targetFramework="4.5" />  
        //<authentication mode="Forms">  
        //    <forms loginUrl="login.aspx" defaultUrl="welcome.aspx">  
        //        <credentials passwordFormat="Clear">  
        //            <user name="abhishek" password="abhi@123"/>  
        //            <user name="Kantesh" password="sinha@123" />  
        //        </credentials>  
        //    </forms>  
        //</authentication>  
        //<authorization>  
        //    <deny users="?"/>  
        //</authorization>  
//        <httpRuntime targetFramework="4.5" />  
//    </system.web>  
//</configuration> 


//    protected void Login_Click(object sender, EventArgs e) {  
//            if (FormsAuthentication.Authenticate(UserName.Text, UserPass.Text)) {  
//                FormsAuthentication.RedirectFromLoginPage(UserName.Text, chkboxPersist.Checked);  
//            } else {  
//                Msg.Text = "Invalid User Name and/or Password";  
//            }  
//        } 


//        %@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="FormAuth.Login" %>  
//<!DOCTYPE html>  
//<html  
//    xmlns="http://www.w3.org/1999/xhtml">  
//    <head runat="server">  
//        <title></title>  
//    </head>  
//    <body>  
//        <form id="form1" runat="server">  
//            <h3>  
//      Login Page</h3>  
//            <table>  
//                <tr>  
//                    <td>  
//          UserName:</td>  
//                    <td>  
//                        <asp:TextBox ID="UserName" runat="server" />  
//                    </td>  
//                    <td>  
//                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1"   
//            ControlToValidate="UserName"  
//            Display="Dynamic"   
//            ErrorMessage="Cannot be empty."   
//            runat="server" />  
//                    </td>  
//                </tr>  
//                <tr>  
//                    <td>  
//          Password:</td>  
//                    <td>  
//                        <asp:TextBox ID="UserPass" TextMode="Password"   
//             runat="server" />  
//                    </td>  
//                    <td>  
//                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2"   
//            ControlToValidate="UserPass"  
//            ErrorMessage="Cannot be empty."   
//            runat="server" />  
//                    </td>  
//                </tr>  
//                <tr>  
//                    <td>  
//          Remember me?</td>  
//                    <td>  
//                        <asp:CheckBox ID="chkboxPersist" runat="server" />  
//                    </td>  
//                </tr>  
//            </table>  
//            <asp:Button ID="Submit1" OnClick="Login_Click" Text="Log In"   
//       runat="server" />  
//            <p>  
//                <asp:Label ID="Msg" ForeColor="red" runat="server" />  
//            </p>  
//        </form>  
//    </body>  
//</html>  

//        }
//    }
//}



//<authorization>

//  <deny users="?" /> <!-- Allow all users -->
//    <!--  <allow users="[comma separated list of users]"
//                 roles="[comma separated list of roles]"/>
//        <deny users="[comma separated list of users]"
//              roles="[comma separated list of roles]"/>
//    -->
//</authorization>