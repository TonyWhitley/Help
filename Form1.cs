using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Diagnostics;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.IO;
using System.Reflection;

namespace Help
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
            //webBrowser1.DocumentText = "<b>Hello</b> World";
            /*
            Assembly assembly = Assembly.GetExecutingAssembly();
            StreamReader reader = new StreamReader(assembly.GetManifestResourceStream("README.HTML"));
            webBrowser1.DocumentText = reader.ReadToEnd();
            */
            //Uri uri = new Uri(@"c:\Users\tony_\source\repos\Help\README.html");
            //Uri uri = new Uri(@"D:\temp\Help\SeaMonkey_.html");
            //Uri uri = new Uri(@"d:\temp\Help\Site\c# - Injecting CSS in WebBrowser Control - Stack Overflow.html");
            //Uri uri = new Uri(@"d:\temp\Help\Site2\The SeaMonkey® Project.html");
            //Uri uri = new Uri(@"d:\temp\Help\Beaufort Gardens Management Company - Home.html");
            //Uri uri = new Uri(@"D:\Users\Tony\Documents\HelpNDoc\Output\html\Crew Chief.html");
            //Uri uri = new Uri(@"file:///D:/Temp/TBS/index.htm");
            //Uri uri = new Uri(@"d:\temp\Help\CC.html");
            //Uri uri = new Uri(@"c:\Users\tony_\source\repos\Help\GoogleNexusWebsiteMenu\index.html");
            //Uri uri = new Uri(@"d:\temp\Help\Google Nexus Website Menu.html");
            string p = System.IO.Path.GetDirectoryName(Application.ExecutablePath);
            this.Text = p;
            Uri uri = new Uri(p+@"\..\..\HelpFiles\About_blurb.html");
            //Uri uri = new Uri(p + @"HelpFiles\About_blurb.html");
            webBrowser1.Navigate(uri);
            //webBrowser1.DocumentText = "<html>hello <script>alert('hi');</script></html>";
            //webBrowser1.DocumentCompleted += WebBrowser1_DocumentCompleted;
            webBrowser1.Navigating += webBrowser1_Navigating;
        }

        public void webBrowser1_Navigating(object sender, WebBrowserNavigatingEventArgs e)
        {
            if (e.Url.Scheme != "file")
            {
                //cancel the current event
                e.Cancel = true;

                //this opens the URL in the user's default browser
                Process.Start(e.Url.ToString());
            }
        }
        private void WebBrowser1_DocumentCompleted(object sender, WebBrowserDocumentCompletedEventArgs e)
        {
            //var FeelingLucky = webBrowser1.Document.GetElementById("gbqfbb");
            //FeelingLucky.Style = "font-size: 40px;";

            var path = @"D:\temp\Help\content.css";
            //System.IO.Path.Combine(System.Environment.CurrentDirectory, "Stylesheet1.css");
            var StylesheetContent = System.IO.File.ReadAllText(path);
            var style = webBrowser1.Document.GetElementsByTagName("style")[0];
            style.InnerText = style.InnerText + " " + StylesheetContent;
        }

        private void Form1_Load(object sender, EventArgs e)
        {

        }

        private void webBrowser1_DocumentCompleted_1(object sender, WebBrowserDocumentCompletedEventArgs e)
        {

        }

        /*private void Form1_Load(object sender, EventArgs e)
        {
            Assembly assembly = Assembly.GetExecutingAssembly();
            StreamReader reader = new StreamReader(assembly.GetManifestResourceStream("README.HTML"));
            webBrowser1.DocumentText = reader.ReadToEnd();
        }*/
    }
}
