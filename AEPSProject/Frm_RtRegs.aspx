<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Frm_RtRegs.aspx.cs" Inherits="AEPSProject.Frm_RtRegs" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <title>AEPS Retailer Registration </title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta content="Premium Multipurpose Admin & Dashboard Template" name="description" />
    <meta content="Themesbrand" name="author" />
    <!-- App favicon -->
    <link rel="shortcut icon" href="Css/images/favicon.ico" />
    <script src="Css/js/layout.js"></script>
    <!-- Bootstrap Css -->
    <link href="Css/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <!-- Icons Css -->
    <link href="Css/css/icons.min.css" rel="stylesheet" type="text/css" />
    <!-- App Css-->
    <link href="Css/css/app.min.css" rel="stylesheet" type="text/css" />
    <!-- custom Css-->
    <link href="Css/css/custom.min.css" rel="stylesheet" type="text/css" />


    <script language="Javascript">

        function isNumberKey(evt) {
            var charCode = (evt.which) ? evt.which : event.keyCode
            if (charCode > 31 && (charCode < 48 || charCode > 57))
                return true;

            return false;
        }
        function NumberOnly() {
            var AsciiValue = event.keyCode
            if ((AsciiValue >= 48 && AsciiValue <= 57) || (AsciiValue == 8 || AsciiValue == 127))
                event.returnValue = true;
            else
                event.returnValue = false;
        }

    </script>
    <style>
        .logo {
            height: 200px;
            width: 100%;
            /* background-color: RED; */
        }

        .logoIcon {
            height: 100px;
            /* background-color: yellow; */
            display: flex;
            margin-top: 20px;
            align-items: center;
            justify-content: space-between;
            margin-left: 15px;
        }


        .slide {
            width: 100%;
            height: 500px;
            background-size: cover;
            animation: slide 20s infinite;
        }


        .fot {
            min-height: 90px;
        }



        .foot {
            min-height: 90px;
            /* background-color: red; */
            margin: 20px auto;
            display: flex;
            align-items: center;
            justify-content: center;
        }

        .title {
            height: 475px;
            /* background-color: white;  */
            padding: 70px;
        }

        .inputBox {
            background-color: red;
            padding-left: 20px;
            margin-top: 30px;
        }

        body {
            background: linear-gradient(45deg, #292d68, #299cdb59);
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auth-page-wrapper auth-bg-cover py-5 d-flex justify-content-center align-items-center min-vh-100">
            <div class="bg-overlay"></div>
            <!-- auth-page content -->
            <div class="auth-page-content overflow-hidden pt-lg-5">
                <div class="container">
                    <div class="row" style="height: 600px;">
                        <div class="col-lg-12">
                            <div class="card overflow-hidden">
                                <div class="row g-0">
                                    <div class="col-lg-6">
                                        <div class="p-lg-5 p-4 auth-one-bg h-100">
                                            <div class="bg-overlay"></div>
                                            <div class="position-relative h-100 d-flex flex-column">
                                                <div class="mb-4">
                                                    <a href="index.html" class="d-block">
                                                        <img src="Css/images/logo-light.png" alt="" height="78" />
                                                    </a>
                                                </div>
                                                <div class="mt-auto">
                                                    <div class="mb-3">
                                                        <i class="ri-double-quotes-l display-4 text-success"></i>
                                                    </div>

                                                    <div id="qoutescarouselIndicators" class="carousel slide" data-bs-ride="carousel">
                                                        <div class="carousel-indicators">
                                                            <button type="button" data-bs-target="#qoutescarouselIndicators" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
                                                            <button type="button" data-bs-target="#qoutescarouselIndicators" data-bs-slide-to="1" aria-label="Slide 2"></button>
                                                            <button type="button" data-bs-target="#qoutescarouselIndicators" data-bs-slide-to="2" aria-label="Slide 3"></button>
                                                        </div>
                                                        <div class="carousel-inner text-center text-white-50 pb-5">
                                                            <div class="carousel-item active">
                                                                <p class="fs-15 fst-italic">" Great! Clean code, clean design, easy for customization. Thanks very much! "</p>
                                                            </div>
                                                            <div class="carousel-item">
                                                                <p class="fs-15 fst-italic">" The theme is really great with an amazing customer support."</p>
                                                            </div>
                                                            <div class="carousel-item">
                                                                <p class="fs-15 fst-italic">" Great! Clean code, clean design, easy for customization. Thanks very much! "</p>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <!-- end carousel -->
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <!-- end col -->

                                    <div class="col-lg-6">
                                        <div class="p-lg-5 p-4">
                                            <div>
                                                <h5 class="text-primary">Welcome Back !</h5>
                                                <p class="text-muted">Registration in to continue to Paynims Technology.</p>
                                                <asp:Label ID="lblMessage" runat="server" Visible="false"></asp:Label>
                                            </div>

                                            <div class="mt-4">
                                                <div class="mb-3">
                                                    <label for="username" class="form-label">First Name</label>
                                                    <asp:TextBox ID="txtFName" runat="server" class="form-control" placeholder="Enter First Name" autocomplete="off"></asp:TextBox>
                                                <asp:RequiredFieldValidator ID="RFVtxtFName" runat="server" ControlToValidate="txtFName" ValidationGroup="ENTRYS" Display="Dynamic" ToolTip="Enter First Name" Text="&lt;img src=&quot;../Css/images/error.png&quot; /&gt;"  Width="20px"></asp:RequiredFieldValidator>

                                                </div>
                                                 <div class="mb-3">
                                                    <label for="username" class="form-label">Last Name</label>
                                                    <asp:TextBox ID="txtLname" runat="server" class="form-control" placeholder="Enter Last Name" autocomplete="off" ></asp:TextBox>
                                                <asp:RequiredFieldValidator ID="RFVtxtLname" runat="server" ControlToValidate="txtLname" ValidationGroup="ENTRYS" Display="Dynamic" ToolTip="Enter Last Name" Text="&lt;img src=&quot;../Css/images/error.png&quot; /&gt;"></asp:RequiredFieldValidator>

                                                 </div>
                                                <div class="mb-3">
                                                    <label for="username" class="form-label">Mobile No</label>
                                                    <asp:TextBox ID="txtmobile" runat="server" class="form-control" placeholder="Enter Mobile No" MaxLength="10" onkeypress="return NumberOnly()" autocomplete="off"></asp:TextBox>
                                                <asp:RequiredFieldValidator ID="RFVtxtmobile" runat="server" ControlToValidate="txtmobile" ValidationGroup="ENTRYS" Display="Dynamic" ToolTip="Enter Mobile No" Text="&lt;img src=&quot;../Css/images/error.png&quot; /&gt;"></asp:RequiredFieldValidator>

                                                    </div>
                                                  <div class="mb-3">
                                                    <label for="username" class="form-label">Adhar No</label>
                                                    <asp:TextBox ID="txtAdhar" runat="server" class="form-control" placeholder="Enter Adhar No" MaxLength="12" onkeypress="return NumberOnly()" autocomplete="off"></asp:TextBox>
                                                <asp:RequiredFieldValidator ID="RFVtxtAdhar" runat="server" ControlToValidate="txtAdhar" ValidationGroup="ENTRYS" Display="Dynamic" ToolTip="Enter Adhar No" Text="&lt;img src=&quot;../Css/images/error.png&quot; /&gt;"></asp:RequiredFieldValidator>

                                                      </div>
                                               <div class="mb-3">
                                                    <label for="username" class="form-label">Address</label>
                                                    <asp:TextBox ID="txtaddress" runat="server" class="form-control" placeholder="Enter Your Address"  autocomplete="off"></asp:TextBox>
                                                    <asp:RequiredFieldValidator ID="RFVtxtaddress" runat="server" ControlToValidate="txtaddress" ValidationGroup="ENTRYS" Display="Dynamic" ToolTip="Enter Address" Text="&lt;img src=&quot;../Css/images/error.png&quot; /&gt;"></asp:RequiredFieldValidator>

                                                </div>


                                                <div class="mt-4">
                                                    <asp:Button ID="btnRegistered" runat="server" class="btn btn-success w-100" Text="Registered" OnClick="btnRegistered_Click" ValidationGroup="ENTRYS"/>
                                                    
                                                </div>
                                                <div class="mt-5 text-center">
                                                    <p class="mb-0">You have an account ? <a href="Default.aspx" class="fw-semibold text-primary text-decoration-underline">Login</a> </p>
                                                </div>
                                             

                                            </div>

                                        </div>
                                    </div>
                                    <!-- end col -->
                                </div>
                                <!-- end row -->
                            </div>
                            <!-- end card -->
                        </div>
                        <!-- end col -->

                    </div>
                    <!-- end row -->
                </div>
                <!-- end container -->
            </div>
            <!-- end auth page content -->

            <!-- footer -->
            <footer class="footer">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-12">
                            <div class="text-center">
                                <p class="mb-0">
                                    &copy;
                               
                                    <script>document.write(new Date().getFullYear())</script>
                                    Paynims Technology<i class="mdi mdi-heart text-danger"></i>
                           
                                </p>
                            </div>
                        </div>
                    </div>
                </div>
            </footer>
            <!-- end Footer -->
        </div>


        <!-- JAVASCRIPT -->

    </form>
    <script src="Css/libs/bootstrap/js/bootstrap.bundle.min.js"></script>
    <script src="Css/libs/simplebar/simplebar.min.js"></script>
    <script src="Css/libs/node-waves/waves.min.js"></script>
    <script src="Css/libs/feather-icons/feather.min.js"></script>
    <script src="Css/js/pages/plugins/lord-icon-2.1.0.js"></script>
    <script src="Css/js/plugins.js"></script>

    <!-- particles js -->
    <script src="Css/libs/particles.js/particles.js"></script>

    <!-- particles app js -->
    <script src="Css/js/pages/particles.app.js"></script>
</body>
</html>
