using System;
using System.Collections.Generic;
using System.Linq;
using System.Reflection.Emit;
using System.Web;
using System.Web.Hosting;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TryIt
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Unnamed1_TextChanged(object sender, EventArgs e)
        {

        }

        //this button will be used for the word filter service
        protected void Button1_Click(object sender, EventArgs e)
        {
            //creates an object of WordFilter
            WordFilter.Service1Client filter = new WordFilter.Service1Client();

            //performs the service on the user given string and stores it into a string called value
            string value = filter.WordFilter(TextBox1.Text.ToString());

            //displays the filtered string into a label
            Label3.Text = value.ToString();
        }

        protected void ListBox1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        
        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }

        protected void TextBox2_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            //uploads the selected file into a file called UploadedFiles
            FileUpload1.SaveAs(Server.MapPath("~/UploadedFiles/" + FileUpload1.FileName));

            //Creates an object of the WordCount service
            WordCount.Service1Client count = new WordCount.Service1Client();

            //stores the correct path of the file into a string
            string get = "\\UploadedFiles\\" + FileUpload1.FileName;

            //makes sure the path is correct and stores it into path
            string path = Server.MapPath(get);

            //calls the WordCount service and store the output into value
            string value = count.WordCount(path.ToString());

            //displays the output in a label
            TextBox2.Text = value.ToString();
        }
        

        protected void TextBox2_TextChanged1(object sender, EventArgs e)
        {

        }
    }
}