﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Catalog.aspx.cs" Inherits="ShoeWebpage.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Kroma</title>
    <link rel="stylesheet" href="Catalog.css"/>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.0/css/all.min.css" integrity="sha512-10/jx2EXwxxWqCLX/hHth/vu2KY3jCF70dCQB8TSgNjbCVAC/8vai53GfMDrO2Emgwccf2pJqxct9ehpzG+MTw==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <style>
        @import url('https://fonts.googleapis.com/css2?family=Montserrat:wght@300&family=Oswald&family=Poppins:wght@500&display=swap');
    </style>

    <meta charset="utf-8"/>
 <!--paginile web sa fie fie afisate corect pentru orice rezolutie -->
 <meta name="viewport" content="width=device-width, initial=1"/>

</head>
<body>
    
    <form id="form1" runat="server">
    
    <div class="navbar">
            <a href="Index.aspx" class="logo"><img src="images/Klogo.png" alt="Klogo"/></a>

            <div class="navbar-links">
                <a href="Index.aspx">Acasă</a>
                <a href="Catalog.aspx" class="selected">Catalog</a>
                <a href="Order.aspx">Comandă</a>
            </div >

            <div class="dropdown" id="dropdownD" runat="server">
                <asp:LinkButton class="dropdownBtn" ID="Dropdown" runat="server">
                    <i class="fa-solid fa-circle-user"></i>
                    <i class="fa fa-caret-down arrow"></i>
                </asp:LinkButton>

                <div class="dropdown-content">
                    <a href="Register.aspx">Inregistrare</a>
                    <a href="Login.aspx">Autentificare</a>
                </div>
            </div>

        <div class="dropdown logged" id="dropdownDivLogged" runat="server">
                <asp:LinkButton class="dropdownBtn logged" ID="dropdownLogged" runat="server">
                    <div><img src="images/loggedUser.jpg" alt="loggedUser"/></div>
                    <i class="fa fa-caret-down arrow"></i>
                </asp:LinkButton>

                <div class="dropdown-content logged">
                   <asp:Button id="logOutBtn" runat="server"  onclick="LogOut_Click" Text="Delogare"/>
                </div>
            </div>

     </div>

    <div class="filter" id="filterDiv" runat="server">
        <h5>Filtru</h5>
            <asp:Button class="button" ID="Button1" runat="server" Text="Toate" OnClick="FilterAll_Click" />
            <asp:Button class="button" ID="Button2" runat="server" Text="Adidas" OnClick="FilterAdidas_Click" />
            <asp:Button class="button" ID="Button3" runat="server" Text="Rebook" OnClick="FilterRebook_Click" />
    </div>

        <asp:Panel CssClass="panel" ID="panel" runat="server" ></asp:Panel>
  
        <asp:Label ID="lblError" runat="server" ForeColor="Red"></asp:Label>

    <div class="footer">
            <ul>
                <li>Suport</li>
                <li>Livrări</li>
                <li>Feedback</li>
            </ul>

            <ul>
                <li>Politica de confidențialitate</li>
            </ul>

            <ul>
                <li>Noutați</li>
            </ul>
            <ul>
                <li>Contactează-ne</li>
            </ul>

            <ul>
                <li><i class="fa-brands fa-twitter-square"></i></li>
                <li><i class="fa-brands fa-instagram-square"></i></li>
                <li><i class="fa-brands fa-facebook-square"></i></li>
            </ul>

        </div>
        <%--<asp:SqlDataSource ID="Sample" runat="server" ConnectionString="<%$ ConnectionStrings:UsersConnectionString %>" SelectCommand="SELECT * FROM [Shoes]"></asp:SqlDataSource>--%>
    </form>

</body>
</html>
