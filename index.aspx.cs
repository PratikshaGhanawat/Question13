using System;

using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;

namespace Validation
{
    public partial class index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            try {
                // Server-side validation
                if (IsValid)
                {
                    // Process the form submission
                    string name = txtName1.Text;
                    string email = txtEmail1.Text;
                    string password = txtPassword1.Text;

                    // Perform further processing or database operations
                    // ...

                    // Display success message or redirect to another page
                    Response.Write("Form submitted successfully!");
                }
            }
            catch(Exception ex)
            {

            }
            }

            }

}