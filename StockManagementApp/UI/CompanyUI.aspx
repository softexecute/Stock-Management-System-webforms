﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CompanyUI.aspx.cs" Inherits="StockManagementApp.UI.CompanyUI" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="../css/maincss.css" rel="stylesheet" />
    <link href="../css/menucss3.css" rel="stylesheet" />
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.5.0/css/all.css" integrity="sha384-B4dIYHKNBt8Bc12p+WXckhzcICo0wtJAoU8YZTY5qE0Id1GSseTk6S+L3BlXeVIU" crossorigin="anonymous">


<%--    <script type="text/javascript">
        window.onload = function () {
            var seconds = 5;
            setTimeout(function () {
                document.getElementById("<%=outputlabel.ClientID %>").style.display = "none";
            }, seconds * 1000);
        }
    </script>--%>


</head>
<body>
    <form id="form1" runat="server">
        <nav class="nav">
            <ul>
                <li><a href="IndexUI.aspx" runat="server"><i class="fas fa-home"></i>Home</a></li>
                <li><a href="CatagoryUI.aspx" runat="server" >Catagory</a></li>
                <li><a href="CompanyUI.aspx" runat="server">Company</a></li>
                <li><a href="ItemUI.aspx" runat="server"><i class="fas fa-sitemap"></i> Items</a></li>
                <li><a href="StockInUI.aspx" runat="server">Stock In</a></li>
                <li><a href="SearchAndView.aspx" runat="server"><i class="fab fa-superpowers"></i> Search</a></li>
                <li><a href="StockOutUI.aspx" runat="server">Stock Out</a></li>
                <li><a href="SaleSummaryUI.aspx" runat="server">Summary</a></li>
                <li><a href="#"><i class="fas fa-users" title="Who Done This Project"></i> Team</a>
                    <ul>
                        <li><a>Mohammad Ismail</a></li>
                        <li><a>Akash Shusil</a></li>
                        <li><a>Nipa Akter</a> </li>
                    </ul>
                </li>
              
            </ul>
        </nav>

        <div class="main_area">
            <div>
                <h2 class="sub_header">Company Setup</h2>

                <table class="usertable">
                    <tr>
                        <td>Company Name :</td>
                        <td class="right_clumn">
                            <asp:TextBox ID="companyTextBox" runat="server" Width="304px" align="right" />
                        </td>
                        <td>
                            <asp:Button ID="catagroySavebutton" runat="server" OnClick="companySavebutton_Click" Text="Save" Width="50px" />

                        </td>
                    </tr>
                    <tr>
                        <td></td>
                        <td colspan="2">
                            <asp:RegularExpressionValidator class="error" runat="server" ValidationExpression="[A-Z a-z]+" ErrorMessage="* Letters only Allowed" ControlToValidate="companyTextBox" />

                        </td>
                    </tr>
                    <tr>
                        <td></td>
                        <td colspan="2">
                            
                <h4 class="error" id="outputlabel" runat="server"></h4>
                        </td>
                    </tr>
                </table>
            </div>
            <!--input end-->

            <asp:GridView class="CompanyListGridVew" ID="CompanyListGridVew" runat="server" CaptionAlign="Top" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None">

                <AlternatingRowStyle BackColor="White" />

                <Columns>
                    <asp:TemplateField>
                        <HeaderTemplate>
                            SL
                        </HeaderTemplate>
                        <ItemTemplate>
                            <asp:Label ID="LabelSerial" runat="server" Text='<%#Container.DataItemIndex+1 %>'>'</asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Company">
                        <ItemTemplate>
                            <asp:Label runat="server" Text='<% #Eval("Company")%>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
                <EditRowStyle BackColor="#7C6F57" />
                <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#E3EAEB" />
                <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#F8FAFA" />
                <SortedAscendingHeaderStyle BackColor="#246B61" />
                <SortedDescendingCellStyle BackColor="#D4DFE1" />
                <SortedDescendingHeaderStyle BackColor="#15524A" />
            </asp:GridView>

        </div>
        <div class="footer_area">
            <p>Developed By: <a href="http://www.facebook.com/coxismail.bd">Mohammad Ismail</a> </p>

        </div>

    </form>
</body>
</html>
