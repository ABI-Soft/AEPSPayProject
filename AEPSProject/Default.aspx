<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="AEPSProject.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <title>AEPS Login User</title>
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
                                                <p class="text-muted">Sign in to continue to Paynims Technology.</p>
                                                <asp:Label ID="lblMessage" runat="server" Visible="false"></asp:Label>
                                            </div>

                                            <div class="mt-4">
                                                <div class="mb-3">
                                                    <label for="username" class="form-label">Mobile No</label>
                                                    <asp:TextBox ID="txtmobile" runat="server" class="form-control" placeholder="Enter Mobile No" MaxLength="10" onkeypress="return NumberOnly()" autocomplete="off"></asp:TextBox>
                                                     <asp:RequiredFieldValidator ID="RFVtxtmob" runat="server" ControlToValidate="txtmobile" ValidationGroup="ENTRYS" Display="Dynamic" ToolTip="Enter  Mobile NO" Text="&lt;img src=&quot;../../images/error.png&quot; /&gt;"></asp:RequiredFieldValidator>

                                                </div>

                                                <div class="mb-3">
                                                    <div class="float-end">
                                                        <a href="auth-pass-reset-cover.html" class="text-muted">Forgot password?</a>
                                                    </div>
                                                    <label class="form-label" for="password-input">Password</label>
                                                    <div class="position-relative auth-pass-inputgroup mb-3">
                                                        <asp:TextBox ID="txtpassword" runat="server" class="form-control pe-5" placeholder="Enter password" TextMode="Password" autocomplete="off"></asp:TextBox>
                                                         <asp:RequiredFieldValidator ID="RFVtxtpassword" runat="server" ControlToValidate="txtpassword" ValidationGroup="ENTRYS" Display="Dynamic" ToolTip="Enter Password" Text="&lt;img src=&quot;../../images/error.png&quot; /&gt;"></asp:RequiredFieldValidator>

                                                        <button class="btn btn-link position-absolute end-0 top-0 text-decoration-none text-muted" type="button" id="password-addon"><i class="ri-eye-fill align-middle"></i></button>
                                                    </div>
                                                </div>

                                                <div class="form-check">
                                                    <input class="form-check-input" type="checkbox" value="" id="auth-remember-check">
                                                    <label class="form-check-label" for="auth-remember-check">Remember me</label>
                                                </div>

                                                <div class="mt-4">
                                                    <asp:Button ID="btnLogin" runat="server" class="btn btn-success w-100" Text="Login" OnClick="btnLogin_Click" ValidationGroup="ENTRYS" />
                                                  
                                                </div>
                                                <div class="mt-5 text-center">
                                                    <p class="mb-0">Don't have an account ? <a href="Frm_RtRegs.aspx" class="fw-semibold text-primary text-decoration-underline">Sign up</a> </p>
                                                </div>
                                                <div class="mt-4 text-center">
                                                    <div class="signin-other-title">
                                                        <h5 class="fs-13 mb-4 title">Sign In with</h5>
                                                    </div>


                                                    <div>
                                                        <button type="button" class="btn btn-primary btn-icon waves-effect waves-light"><i class="ri-facebook-fill fs-16"></i></button>
                                                        <button type="button" class="btn btn-danger btn-icon waves-effect waves-light"><i class="ri-google-fill fs-16"></i></button>
                                                        <button type="button" class="btn btn-dark btn-icon waves-effect waves-light"><i class="ri-github-fill fs-16"></i></button>
                                                        <button type="button" class="btn btn-info btn-icon waves-effect waves-light"><i class="ri-twitter-fill fs-16"></i></button>
                                                    </div>
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
                                    Paynims Technology <i class="mdi mdi-heart text-danger"></i>
                           
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
