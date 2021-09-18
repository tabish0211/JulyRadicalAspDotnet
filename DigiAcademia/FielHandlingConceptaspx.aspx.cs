using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DigiAcademia
{
    public partial class FielHandlingConceptaspx : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string dummyLines = "This is first line." + Environment.NewLine +
                    "This is second line." + Environment.NewLine +
                    "This is third line.";

            //Opens DummyFile.txt and write texts. If file is not exists then create and open.
            File.WriteAllText(@"D:\FileHandling\DummyFile.txt", dummyLines);
        }

        protected void Button2_Click(object sender, EventArgs e)
        { 
            //Create object of FileInfo for specified path            
            FileInfo fi = new FileInfo(@"D:\FileHandling\DummyFile.txt");
            FileStream fs = fi.Open(FileMode.OpenOrCreate, FileAccess.Read, FileShare.Read);

            //Create object of StreamReader by passing FileStream object on which it needs to operates on
            StreamReader sr = new StreamReader(fs);

            //Use ReadToEnd method to read all the content from file
            string fileContent = sr.ReadToEnd();

            //Close StreamReader object after operation
            sr.Close();
            fs.Close();
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            string dummyLines = "\n This is first line." + Environment.NewLine +
                       "This is second line." + Environment.NewLine +
                       "This is third line.";
            //Opens DummyFile.txt and append lines. If file is not exists then create and open.
            File.AppendAllLines(@"D:\FileHandling\DummyFile.txt", dummyLines.Split(Environment.NewLine.ToCharArray()).ToList<string>());
        }

        protected void Button4_Click(object sender, EventArgs e)
        {

            //Check whether file is exists or not at particular location
            bool isFileExists = File.Exists(@"D:\FileHandling\DummyFile.txt"); // returns false
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            //Copy DummyFile.txt as new file DummyFileNew.txt
            File.Copy(@"D:\FileHandling\DummyFile.txt", @"D:\FileHandling\NewDummyFile.txt");
        }

        protected void Button6_Click(object sender, EventArgs e)
        {

            //Move file to new location
            File.Move(@"D:\FileHandling\DummyFile.txt", @"F:\FileHandling\DummyFile.txt");
        }

        protected void Button7_Click(object sender, EventArgs e)
        {

            //Delete file
            File.Delete(@"D:\FileHandling\DummyFile.txt");
        }

        protected void Button8_Click(object sender, EventArgs e)
        {
            //Create object of FileInfo for specified path            
            FileInfo fi = new FileInfo(@"D:\FileHandling\DummyFile.txt");

            //Open file for Read\Write
            FileStream fs = fi.Open(FileMode.OpenOrCreate, FileAccess.Write, FileShare.Read);

            //Create StreamWriter object to write string to FileSream
            StreamWriter sw = new StreamWriter(fs);
            sw.WriteLine("Another line from streamwriter");
            sw.Close();
        }
    }
}