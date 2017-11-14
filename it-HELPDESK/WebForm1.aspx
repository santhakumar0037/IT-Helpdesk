<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="it_HELPDESK.WebForm1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" lang ="en">
<head runat="server">
    <title>IpSoft</title>
    <!-- Internal CSS Starts -->
    <style type="text/css">
        body{background-image:url(bgip.jpg); 
             background-repeat:no-repeat;
             }
        .style2
        {
            width: 100%;
            height: 527px;
            margin-bottom: 0px;
        }
        .style6
        {
            color: #FF0000;
        }
        .style9
        {
            height: 104px;
        }
        .style10
        {
            width: 392px;
            }
        .style11
        {
            width: 392px;
            height: 104px;
            text-align: center;
        }
        .style12
        {
            width: 385px;
            }
        .style13
        {
            width: 385px;
            height: 104px;
            text-align: right;
        }
        .style14
        {
            width: 385px;
            text-align: right;
        }
        .style15
        {
            width: 392px;
            text-align: center;
        }
        .style20
        {
            width: 385px;
            text-align: right;
            height: 29px;
        }
        .style21
        {
            width: 392px;
            text-align: center;
            height: 29px;
        }
        .style22
        {
            height: 29px;
        }
    </style>
     <!-- Internal CSS Ends -->
</head>
<body style="height: 482px">
  &nbsp;&nbsp;<form id="form1" runat="server">
    <div style="height: 622px">
             <br/>
             <br/>
             <br/>
             <br/>
              <table class="style2" align="center">
            <tr>
                <td class="style14">
                    <asp:Label ID="lblEmployeeId" runat="server" Text="Employee ID"></asp:Label>
                </td>
             
                <td class="style15">
                    <asp:TextBox ID="txtEmployeeId" runat="server" Width="180px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ControlToValidate="txtEmployeeId" CssClass="style6" 
                        ErrorMessage="Please Fill The Text Box"></asp:RequiredFieldValidator>
                </td>
            </tr>

    
            <tr>
                <td class="style14">
                    <asp:Label ID="lblEmployeeName" runat="server" Text="Employee Name"></asp:Label>
                </td>
           
                <td class="style15">
                    <asp:TextBox ID="txtEmployeeName" runat="server" Width="180px"></asp:TextBox>
                </td>
                <td>
                    &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                        ControlToValidate="txtEmployeeName" CssClass="style6" 
                        ErrorMessage="Please Fill The Text Box"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style14">
                    <asp:Label ID="lblEmployeeEmailAddress" runat="server" 
                        Text="Employee Email Address"></asp:Label>
                </td>
           
                <td class="style15">
                    <asp:TextBox ID="txtEmployeeEmailAddress" runat="server" Width="180px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                        ControlToValidate="txtEmployeeEmailAddress" CssClass="style6" 
                        ErrorMessage="Please Fill The Text Box"></asp:RequiredFieldValidator>
                    <br />
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                        ControlToValidate="txtEmployeeEmailAddress" ErrorMessage="Enter Correct E-Mail" 
                        style="color: #FF0000" 
                        ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="style20">
                    <asp:Label ID="lblServiceRequestedTo" runat="server" 
                        Text="Service Request to IT"></asp:Label>
                </td>
             
                <td class="style21">
                    <asp:DropDownList ID="ddlservicerequestedto" runat="server" Width="180px">
                        <asp:ListItem></asp:ListItem>
                        <asp:ListItem>Brisbane</asp:ListItem>
                        <asp:ListItem>Sydney</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td class="style22">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                        ControlToValidate="ddlservicerequestedto" CssClass="style6" 
                        ErrorMessage="Please Select One"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style14">
                    <asp:Label ID="lblMobileNumber" runat="server" Text="Mobile Number"></asp:Label>
                </td>
             
                <td class="style15">
                    <asp:TextBox ID="txtMobileNumber" runat="server" MaxLength="10" Width="180px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                        ControlToValidate="txtMobileNumber" CssClass="style6" 
                        ErrorMessage="Please Fill The Text Box"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style14">
                    <asp:Label ID="lblHod" runat="server" Text="HOD"></asp:Label>
                </td>
             
                <td class="style15">
                    <asp:DropDownList ID="ddlHod" runat="server" Width="180px">
                        <asp:ListItem></asp:ListItem>
                        <asp:ListItem>James</asp:ListItem>
                        <asp:ListItem>David</asp:ListItem>
                        <asp:ListItem>Greg</asp:ListItem>
                        <asp:ListItem>Bobby</asp:ListItem>
                        <asp:ListItem>Kumar</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                        ControlToValidate="ddlHod" CssClass="style6" ErrorMessage="Please Select One"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style14">
                    <asp:Label ID="lblIssuesRelatedTo" runat="server" Text="Issues Related To"></asp:Label>
                </td>
             
                <td class="style15">
                    <asp:DropDownList ID="ddlIssuesRelatedTo" runat="server" Width="180px">
                        <asp:ListItem></asp:ListItem>
                        <asp:ListItem>System</asp:ListItem>
                        <asp:ListItem>Network</asp:ListItem>
                        <asp:ListItem>Navision</asp:ListItem>
                        <asp:ListItem>Email</asp:ListItem>
                        <asp:ListItem>Internet</asp:ListItem>
                        <asp:ListItem>FTP/SFTP</asp:ListItem>
                        <asp:ListItem>Request</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                        ControlToValidate="ddlIssuesRelatedTo" CssClass="style6" 
                        ErrorMessage="Please Select One"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style13">
                    <asp:Label ID="lblDescription" runat="server" Text="Description"></asp:Label>
                    (Not more than 200 words)
                </td>
             
                <td class="style11">
                    <asp:TextBox ID="txtDescription" runat="server" Height="100px" 
                        TextMode="MultiLine" Width="280px"></asp:TextBox>
                </td>
                <td class="style9">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                        ControlToValidate="txtDescription" CssClass="style6" 
                        ErrorMessage="Please Fill The Text Box"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style12">
                    </td>
                <td class="style10">
                    <asp:Button ID="btnSubmitt" runat="server" Text="Submitt" 
                        onclick="btnSubmitt_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <input id="Reset1" type="reset" value="Clear" onclick="return Reset1_onclick()" /></td>
                <td>
                    </td>
            </tr>
        </table>
           
    </div>
    </form>
</body>
</html>
