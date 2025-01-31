﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Order.aspx.cs" Inherits="ShoeWebpage.WebForm4" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Kroma</title>
    <link rel="stylesheet" href="Order.css"/>
     <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.0/css/all.min.css" integrity="sha512-10/jx2EXwxxWqCLX/hHth/vu2KY3jCF70dCQB8TSgNjbCVAC/8vai53GfMDrO2Emgwccf2pJqxct9ehpzG+MTw==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <style>
        @import url('https://fonts.googleapis.com/css2?family=Montserrat:wght@300&family=Oswald&family=Poppins:wght@500&display=swap');
    </style>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css"/>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.1.0/css/bootstrap.min.css" integrity="sha512-F7WyTLiiiPqvu2pGumDR15med0MDkUIo5VTVyyfECR5DZmCnDhti9q5VID02ItWjq6fvDfMaBaDl2J3WdL1uxA==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.1.0/js/bootstrap.bundle.min.js" integrity="sha512-PqRelaJGXVuQ81N6wjUrRQelCDR7z8RvKGiR9SbSxKHPIt15eJDmIVv9EJgwq0XvgylszsjzvQ0+VyI2WtIshQ==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial=1"/>
</head>
<body>
    <form id="form1" runat="server">

    <div class="navbar">
            <div class="logo">
               <a href="Index.aspx"><img src="images/Klogo.png" alt="Klogo"/></a>
            </div>

            <div class="navbar-links">
                <a href="Index.aspx">Acasă</a>
                <a href="Catalog.aspx">Catalog</a>
                <a href="Order.aspx" class="selected">Comandă</a>
            </div>

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

    <div class="col-sm-9 col-md-7 col-lg-4 mx-auto">
        
        <div class="card border-0 shadow rounded-3">
            
            <div class="card-body p-4 p-sm-4">
                <h5 class="card-title text-center mb-5 fw-light fs-5 pt-3">Detalii Livrare</h5>
               
                
                    <label><h6>Nume</h6></label>
                    <div class="form-group mb-3">
                        <input type="text" class="form-control" id="numeInput" placeholder=""/>
                    </div>

                    <label><h6>Telefon</h6></label>
                    <div class="form-group mb-3">
                        <input type="text" class="form-control" id="telInput" placeholder="" runat ="server"/>
                        <asp:Label ID="lblTel" runat="server" Visible="False" ForeColor="#F24B0D">Numar de telefon invalid</asp:Label>
                        <br />
                    </div>

                    <label><h6>Adresă</h6></label>
                    <div class="form-group mb-3">
                        <textarea class="form-control" id="adresaInput" rows="3" placeholder=""></textarea>
                    </div>

                    <label><h6>Modalitate Plată</h6></label>
                    <div class="form-check mb-3 pb-2">
                        <div>
                        <input type="radio" class="form-check-input" id="plataRadio1" name="radioBtn"/>
                        <label class="form-check-label" for="plataRadio1">Card</label>
                        </div>

                        <div>
                        <input type="radio" class="form-check-input" id="plataRadio2" name="radioBtn" checked/>
                        <label class="form-check-label" for="plataRadio2">Ramburs</label>
                        </div>
                    </div>
              
                <div class="d-grid">
                    <asp:button class="btn btn-primary btn-login text-uppercase fw-bold" Text="Pasul urmator" runat="server" OnClick="Unnamed1_Click"></asp:button>
                </div>
                
            </div>
         
        </div>
     </div>

        <div class="footer">
            <ul>
                <li class="list-title">Suport</li>
                <li>Livrări</li>
                <li>Feedback</li>
            </ul>

            <ul>
                <li class="list-title">Politica de confidențialitate</li>
            </ul>

            <ul>
                <li class="list-title">Noutați</li>
            </ul>
            <ul>
                <li class="list-title">Contactează-ne</li>
            </ul>

            <ul>
                <li><i class="fa-brands fa-twitter-square"></i></li>
                <li><i class="fa-brands fa-instagram-square"></i></li>
                <li><i class="fa-brands fa-facebook-square"></i></li>
            </ul>

        </div>

    </form>
</body>
</html>
