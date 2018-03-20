<%@ Page Language="C#" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>CS NPE B2B</title>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />

    <link rel="stylesheet" href="Content/bootstrap.css" />
    <link rel="stylesheet" href="Content/font-awesome.min.css" />
    <link rel="stylesheet" href="Content/style.css" />
    <link rel="stylesheet" href="Content/custom.css" />

    <script type="text/javascript" src="https://code.jquery.com/jquery-3.0.0.js"></script>
    <script type="text/javascript" src="/Scripts/bootstrap.js"></script>
</head>
<body>
    <form id="form1" runat="server">
        <section class="padding-100px-top">
        <div class="container">
            <div class="row text-center">
                <div style="height:100px;width:auto">
                <img src="Content/img/npe-partner.png" style="height:100%;width:auto" />
                    </div>
            </div>
            <div class="row">
                <div class="col-lg-6 col-md-6 col-sm-8 col-xs-12 center-col margin-eight-bottom sm-margin-40px-bottom xs-margin-30px-bottom text-center last-paragraph-no-margin">
                    <h5 class="alt-font font-weight-700 text-extra-dark-gray text-uppercase">Log in</h5>
                </div>
            </div>
            <div class="row">
                <div class="col-md-offset-3 col-md-6 col-sm-12 col-xs-12">
                    <asp:Label runat="server" ID="statusMessage" CssClass="alert alert-danger" text="We could find that combination of username and password. Please try again." Visible="false"></asp:Label>
                </div>
            </div>
            <div class="row">
                <div class="col-md-offset-3 col-md-6 col-xs-12 col-sm-12">
                    <asp:TextBox runat="server" ID="tbxUserName" placeholder="Name"></asp:TextBox>
                </div>
                <div class="col-md-offset-3 col-md-6 col-xs-12 col-sm-12">
                    <asp:TextBox runat="server" ID="tbxPassword" placeholder="Password" TextMode="Password"></asp:TextBox>
                </div>
                <div class="col-md-12 col-xs-12 col-sm-12 text-center">
                    <asp:Button ID="btnSubmit" runat="server" Text="Log In" CssClass="btn btn-transparent-dark-gray btn-large margin-20px-top" OnClick="btnSubmit_Click" />
                </div>
            </div>
        </div>
            </section>
    </form>
</body>
</html>
