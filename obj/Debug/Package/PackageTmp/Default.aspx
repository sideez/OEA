<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeBehind="Default.aspx.cs" Inherits="OEA._Default" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style2
        {
            width: 160px;
        }
        .style3
        {
            width: 590px;
        }
    </style>
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <h2>
        Operation Earth Action<table class="style1">
            <tr>
                <td class="style2">
                    <asp:Label ID="Label1" runat="server" Text="iMIS Number:"></asp:Label>
                </td>
                <td class="style3">
                    <asp:TextBox ID="txtIMIS" runat="server" Width="142px"></asp:TextBox>
                </td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
               
            </tr>
             <tr>
                <td class="style2">
                    &nbsp;</td>
                <td class="style3">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
              
            </tr>
            <tr>
                <td class="style2">
                    Report</td>
                <td class="style3">
                    <asp:TextBox ID="txtRpt1" runat="server" Width="141px"></asp:TextBox>
                </td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
             
            </tr>
            <tr>
                <td class="style2">
                    &nbsp;</td>
                <td class="style3">
                    <asp:TextBox ID="txtNumTreesPlanted" runat="server" Width="138px"></asp:TextBox>
                    <asp:Label ID="Label2" runat="server" Text="Number of trees planted"></asp:Label>
                </td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
               
            </tr>
            <tr>
                <td class="style2">
                    &nbsp;</td>
                <td class="style3">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
              
            </tr>
            <tr>
                <td class="style2">
                    Report</td>
                <td class="style3">
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
               
            </tr>
            <tr>
                <td class="style2">
                    &nbsp;</td>
                <td class="style3">
                    <asp:CheckBox ID="CheckBoxWaterBottles" runat="server" 
                        Text="Using a reusable water bottle whenever possible" />
                </td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
              
            </tr>
            <tr>
                <td class="style2">
                    &nbsp;</td>
                <td class="style3">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
               
            </tr>
            <tr>
                <td class="style2">
                    <asp:Label ID="Label3" runat="server" Text="REPORT"></asp:Label>
                </td>
                <td class="style3">
                    <asp:TextBox ID="txtShoppingBagsPledge" runat="server"></asp:TextBox>
                </td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
               
            </tr>
            <tr>
                <td class="style2">
                    &nbsp;</td>
                <td class="style3">
                    <asp:CheckBox ID="CheckBoxShoppingBags" runat="server" 
                        Text="Using reusable shopping bags whenever possible" />
                </td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
               
            </tr>
             <tr>
                <td class="style2">
                    &nbsp;</td>
                <td class="style3">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
               
            </tr>

          <tr>
                <td class="style2">
                    Report</td>
                <td class="style3">
                   &nbsp;<asp:TextBox ID="txtEnergyDetective" runat="server" Width="141px"></asp:TextBox>
                </td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
               
            </tr>

             <tr>
                <td class="style2">
                    &nbsp;</td>
                <td class="style3">
                    <asp:CheckBox ID="CheckBoxEnergyHome" runat="server" Text="Home" />
                </td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
               
            </tr>
             <tr>
                <td class="style2">
                    &nbsp;</td>
                <td class="style3">
                    <asp:CheckBox ID="CheckBoxEnergyBusiness" runat="server" Text="Business" />
                </td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
               
            </tr>
             <tr>
                <td class="style2">
                    &nbsp;</td>
                <td class="style3">
                    <asp:CheckBox ID="CheckBoxCommunity" runat="server" Text="Community building" />
                </td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
               
            </tr>
            <tr>
            <td>&nbsp;</td>
            <td class="style3">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            </tr>
             <tr>
            <td>REPORT</td>
            <td class="style3">
                <asp:TextBox ID="txtHomeCleaning" runat="server"></asp:TextBox>
                 </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            </tr>
             <tr>
            <td>&nbsp;</td>
            <td class="style3">
                <asp:TextBox ID="TextBoxLaundry" runat="server"></asp:TextBox>
                Laundry Detergent</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            </tr>
             <tr>
            <td>&nbsp;</td>
            <td class="style3">
                <asp:TextBox ID="txtCleaner" runat="server"></asp:TextBox>
                All-purpose cleaner</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            </tr>
             <tr>
            <td>&nbsp;</td>
            <td class="style3">
                <asp:TextBox ID="txtShampoo" runat="server"></asp:TextBox>
                Shampoo</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            </tr>
             <tr>
            <td>&nbsp;</td>
            <td class="style3">
                <asp:TextBox ID="txtMask" runat="server"></asp:TextBox>
                Face mask</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            </tr>
             <tr>
            <td>&nbsp;</td>
            <td class="style3">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            </tr>
             <tr>
            <td>Report</td>
            <td class="style3">
                <asp:TextBox ID="txtMapMeal" runat="server"></asp:TextBox>
                 </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
 <tr>
            <td>&nbsp;</td>
            <td class="style3">
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                Meal #1 Total Kilometer</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            </tr>
             <tr>
            <td>&nbsp;</td>
            <td class="style3">
                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                Meal #2 Total kilometer</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            </tr>
            </tr>
        </table>
        <asp:Button ID="Button1" runat="server" Text="Submit" />
        <br />
    </h2>
</asp:Content>
