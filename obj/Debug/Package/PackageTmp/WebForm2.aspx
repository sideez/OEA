<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm2.aspx.cs" Inherits="OEA.WebForm2" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <asp:textbox runat="server" ID="txtTest"></asp:textbox>
<asp:requiredfieldvalidator ID="Requiredfieldvalidator1" runat="server" 
    errormessage="Value must be a whole number" ControlToValidate="txtTest" 
            Display="Dynamic" ForeColor="Red"></asp:requiredfieldvalidator>
<asp:comparevalidator ID="Comparevalidator1" runat="server" errormessage="Value must be a whole number" 
    ControlToValidate="txtTest" Operator="DataTypeCheck" Type="Double" 
            Display="Dynamic"></asp:comparevalidator>

    </div>
    </form>
</body>
</html>
