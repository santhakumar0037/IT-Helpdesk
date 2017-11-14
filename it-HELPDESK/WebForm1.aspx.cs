using System;
using System.Web;
using System.Configuration;
using System.Data.SqlClient;
using System.Net.Mail; // Used to add mailing function  
namespace it_HELPDESK
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        string connectionString;
        public WebForm1()
        {

            connectionString = ConfigurationManager.ConnectionStrings["sqlconnection"].ToString(); // SQL connection string
        }
         protected void btnSubmitt_Click(object sender, EventArgs e)
        {
                     
            // Initiating SQL connection and storring values from text box to string 
            SqlConnection con = new SqlConnection(connectionString);
            string id = txtEmployeeId.Text;
            string name = txtEmployeeName.Text;
            string email = txtEmployeeEmailAddress.Text;
            string service = ddlservicerequestedto.SelectedItem.Value;
            string mobilenumber = txtMobileNumber.Text;
            string hod = ddlHod.SelectedItem.Value;
            string issues = ddlIssuesRelatedTo.SelectedItem.Value;
            string description = txtDescription.Text;

            // SQL Command to insert data to SQL Database called ipsoft
            string sqlQuery =  "INSERT into ipsoft( id, name, email, service, mobilenumber, hod, issues, description) VALUES ('"+id+"','"+name+"','"+email+"','"+service+"','"+mobilenumber+"','"+hod+"','"+issues+"','"+description+"')";
      
            SqlCommand cmd = new SqlCommand(sqlQuery, con);
          
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();

            // SQL Data Stored and code ends for SQL 

            // Mail code starts    
           string from = "fromgmail.com"; // From address  
           string to = "to@gmail.com"; // To adress Example: admin 
           string textBody = " <table border=" + 1 + " cellpadding=" + 0 + " cellspacing=" + 0 + " width = " + 400 + "><tr bgcolor='#4da6ff'><td><b>"+id+"</b></td> <td> <b> "+name+"</b></td> <td><b> "+email+"</b></td> <td><b> "+service+"</b></td> <td><b> "+mobilenumber+"</b></td><td><b> "+hod+"</b></td><td><b> "+issues+"</b></td><td><b>"+ description+"</b> </td></tr>";
           textBody += "</table>"; // values are stored in a table format 
           System.Net.Mail.MailMessage mail = new System.Net.Mail.MailMessage();  
           mail.To.Add(to);  
           mail.From = new MailAddress(from, "IT HELPDESK", System.Text.Encoding.UTF8);  
           mail.Subject = "New IT Service request has been register";  
           mail.SubjectEncoding = System.Text.Encoding.UTF8;
           mail.Body = textBody;  
           mail.BodyEncoding = System.Text.Encoding.UTF8;  
           mail.IsBodyHtml = true;  
           mail.Priority = MailPriority.High;  

           SmtpClient client = new SmtpClient();  

           client.Credentials = new System.Net.NetworkCredential(from, "from password"); // From address password   
           client.Port = 587;   
           client.Host = "smtp.gmail.com";  
           client.EnableSsl = true;
            // Mail code ends
            //Try starts
            try
            {  
             client.Send(mail);
               Response.Redirect("Thankyou.aspx");
            }  
            //Try ends
            // Error messages are catched 
           catch (Exception ex)  
           {  
            Exception ex2 = ex;  
            string errorMessage = string.Empty;  
            while (ex2 != null)  
            {  
               errorMessage += ex2.ToString();  
               ex2 = ex2.InnerException;  
            }  
            HttpContext.Current.Response.Write(errorMessage);
            //Error message ends

            } 
    }   
     
    
        }

    }
