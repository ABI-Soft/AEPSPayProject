<%@ Page Title="" Language="C#" MasterPageFile="~/Master/Retailer.Master" AutoEventWireup="true" CodeBehind="RTHme.aspx.cs" Inherits="AEPSProject.RTPanel.RTHme" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row">
        <div class="col-xxl-12">

            <div class="card">
                <div class="card-body">

                    <ul class="nav nav-pills nav-justified mb-3 " role="tablist">
                        <li class="nav-item waves-effect waves-light">
                            <a class="nav-link active" data-bs-toggle="tab" href="#pill-justified-home-1"
                                role="tab" style="font-size: 17px;">Cash Withdrawal
                            </a>
                        </li>
                        <li class="nav-item waves-effect waves-light">
                            <a class="nav-link" data-bs-toggle="tab" href="#pill-justified-profile-1"
                                role="tab" style="font-size: 17px;">Cash Deposit
                            </a>
                        </li>
                        <li class="nav-item waves-effect waves-light">
                            <a class="nav-link" data-bs-toggle="tab" href="#pill-justified-messages-1"
                                role="tab" style="font-size: 17px;">Balance Enquiry
                            </a>
                        </li>
                        <li class="nav-item waves-effect waves-light">
                            <a class="nav-link" data-bs-toggle="tab" href="#pill-justified-settings-1"
                                role="tab" style="font-size: 17px;">Mini Statement

                            </a>
                        </li>
                    </ul>
                    <!-- Tab panes -->
                    <br>
                    <br>
                    <div class="tab-content text-muted">
                        <div class="tab-pane active" id="pill-justified-home-1" role="tabpanel">
                            <div class="row">
                                <div class="col-6 col-md-4">
                                    <div class="flex-grow-1 overflow-hidden">
                                        <div class="mb-3">
                                            <label for="lastNameinput" class="form-label"
                                                style="font-size: 18px; color: black;">
                                                <i
                                                    class="bx bx-mobile"
                                                    style="font-size: 18px;"></i>&nbsp;Customer Mobile :
                                            </label>
                                            <input type="number" class="form-control"
                                                placeholder="Enter your Mobile Number ..."
                                                id="lastNameinput">
                                            <p style="margin-top: 10px; font-size: 15px; color: black;">
                                                Please
                                                            fill any mobile number
                                                            except the mobile number mapped with the bank account.
                                            </p>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-6 col-md-4">

                                    <div class="flex-grow-1 overflow-hidden">
                                        <div class="mb-3">
                                            <label for="lastNameinput" class="form-label"
                                                style="font-size: 18px; color: black;">
                                                <i
                                                    class="bx bx-credit-card"
                                                    style="font-size: 20px;"></i>&nbsp; Aadhar Number :
                                            </label>
                                            <input type="number" class="form-control"
                                                placeholder="Enter your Aadhar Number ... "
                                                id="lastNameinput">
                                        </div>
                                    </div>
                                </div>
                                <div class="col-6 col-md-4">

                                    <div class="flex-grow-1 overflow-hidden">
                                        <div class="mb-3">
                                            <label for="lastNameinput" class="form-label"
                                                style="font-size: 18px; color: black;">
                                                <i class="bx bx-rupee"
                                                    style="font-size: 18px;"></i>&nbsp; Amount :
                                            </label>
                                            <input type="text" class="form-control"
                                                placeholder="Enter your Amount ..." id="lastNameinput">
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <br>
                            <br>

                            <br>
                            <br>

                            <div class="row">

                                <div class="col-xl-3 col-sm-6">
                                    <div class="box" onclick="highlightCard(this)">
                                        <img src="https://th.bing.com/th/id/OIP.WIf9k0ImkEo1MiHxtDt61AHaG-?w=184&h=180&c=7&r=0&o=5&pid=1.7"
                                            width="30px" style="mix-blend-mode: darken; display: none;"
                                            id="show">
                                        <img src="https://logos-download.com/wp-content/uploads/2016/10/icici_bank_logo_symbol.png"
                                            width="180px">
                                    </div>
                                </div>

                                <div class="col-xl-3 col-sm-6">
                                    <div class="box" onclick="highlightCard(this)">
                                        <img src="https://th.bing.com/th/id/OIP.WIf9k0ImkEo1MiHxtDt61AHaG-?w=184&h=180&c=7&r=0&o=5&pid=1.7"
                                            width="30px" style="mix-blend-mode: darken; display: none;"
                                            id="show">&nbsp;&nbsp;&nbsp;
                                                    <img src="https://ijariie.com/images/state-bank-of-india-logo.jpg"
                                                        width="180px">
                                    </div>
                                    <!--end card-->
                                </div>

                                <!--end col-->
                                <div class="col-xl-3 col-sm-6">
                                    <div class="box" onclick="highlightCard(this)">
                                        <img src="https://th.bing.com/th/id/OIP.WIf9k0ImkEo1MiHxtDt61AHaG-?w=184&h=180&c=7&r=0&o=5&pid=1.7"
                                            width="30px" style="mix-blend-mode: darken; display: none;"
                                            id="show">&nbsp;&nbsp;&nbsp;
                                                    <img src="https://seeklogo.com/images/P/punjab-national-bank-logo-C89A37A387-seeklogo.com.png"
                                                        width="170px">
                                    </div>
                                    <!--end card-->
                                </div>
                                <!--end col-->
                                <div class="col-xl-3 col-sm-6">

                                    <div class="box" onclick="highlightCard(this)">
                                        <img src="https://th.bing.com/th/id/OIP.WIf9k0ImkEo1MiHxtDt61AHaG-?w=184&h=180&c=7&r=0&o=5&pid=1.7"
                                            width="30px" style="mix-blend-mode: darken; display: none;"
                                            id="show">
                                        &nbsp;&nbsp;&nbsp;
                                                    <img src="https://allgovtjobsindia.in/wp-content/uploads/2016/06/Central-Bank-of-India.logo_.png"
                                                        width="150px">
                                    </div>
                                    <!--end card-->
                                </div>
                                <!--end col-->
                            </div>
                            <br>
                            <br>
                            <div class="row">
                                <div class="col-xl-3 col-sm-6">


                                    <div class="box" onclick="highlightCard(this)">
                                        <img src="https://th.bing.com/th/id/OIP.WIf9k0ImkEo1MiHxtDt61AHaG-?w=184&h=180&c=7&r=0&o=5&pid=1.7"
                                            width="30px" style="mix-blend-mode: darken; display: none;"
                                            id="show">&nbsp;&nbsp;&nbsp;
                                                    <img src="https://th.bing.com/th/id/R.cbecb773359c88fb3c231431bf04ab7f?rik=Bac93s2zvM4yIQ&riu=http%3a%2f%2flogos-download.com%2fwp-content%2fuploads%2f2016%2f06%2fBank_of_Baroda_logo_orange_background.png&ehk=EhcjlnpLzIOAaCARZwsXXZD6cvb4OryiMSqy4T7%2fc1k%3d&risl=&pid=ImgRaw&r=0"
                                                        width="160px">
                                    </div>
                                    <!--end card-->
                                </div>
                                <!--end col-->
                                <div class="col-xl-3 col-sm-6">

                                    <div class="box" onclick="highlightCard(this)">
                                        <img src="https://th.bing.com/th/id/OIP.WIf9k0ImkEo1MiHxtDt61AHaG-?w=184&h=180&c=7&r=0&o=5&pid=1.7"
                                            width="30px" style="mix-blend-mode: darken; display: none;"
                                            id="show">
                                        <img src="https://th.bing.com/th/id/R.0e9b509bb821314b997cc8cce5c97bca?rik=LHGsOqvpNijTVg&riu=http%3a%2f%2fsynergyindia.net%2fimg%2flogos%2faxis-bank.png&ehk=hK8smoAoUHSTX6es3p3DTYvbuTNYGO4sJDKCR0yy0U4%3d&risl=&pid=ImgRaw&r=0"
                                            width="180px" height="42Qpx">
                                    </div>
                                    <!--end card-->
                                </div>
                                <!--end col-->
                                <div class="col-xl-3 col-sm-6">

                                    <div class="box" onclick="highlightCard(this)">
                                        <img src="https://th.bing.com/th/id/OIP.WIf9k0ImkEo1MiHxtDt61AHaG-?w=184&h=180&c=7&r=0&o=5&pid=1.7"
                                            width="30px" style="mix-blend-mode: darken; display: none;"
                                            id="show">&nbsp;&nbsp;&nbsp;
                                                    <img src="data:image/png;base64,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"
                                                        width="180px" height="42px">
                                    </div>
                                    <!--end card-->
                                </div>
                                <!--end col-->
                                <div class="col-xl-3 col-sm-6">

                                    <div class="box" onclick="highlightCard(this)">
                                        <img src="https://th.bing.com/th/id/OIP.WIf9k0ImkEo1MiHxtDt61AHaG-?w=184&h=180&c=7&r=0&o=5&pid=1.7"
                                            width="30px" style="mix-blend-mode: darken; display: none;"
                                            id="show">&nbsp;&nbsp;&nbsp;
                                                    <img src="https://i.pinimg.com/736x/3a/db/17/3adb17ad584e31a26d7f1119beb26c86.jpg"
                                                        width="140px">
                                    </div>
                                    <!--end card-->
                                </div>
                                <!--end col-->
                            </div>
                            <div class="col-6 col-md-6">
                                <div class="d-flex mt-4">

                                    <div class="flex-grow-1 overflow-hidden">
                                        <div class="mb-3">
                                            <label for="lastNameinput" class="form-label"
                                                style="font-size: 18px; color: black;">
                                                <i class="bx bxs-bank"
                                                    style="font-size: 18px;"></i>&nbsp;BANK Name:
                                            </label>
                                            <select class="form-select sl"
                                                aria-label=".form-select-lg example" style="width: 100%;">
                                                <option value="">Select Bank </option>



                                            </select>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <br>
                            <br>
                            <div class="row">
                                <div class="col-xl-3 col-sm-6">
                                    <div class="box">
                                        <div class="form-check mb-2">
                                            <input type="radio" id="html" class="form-check-input"
                                                name="fav_language">
                                            <label for="html" style="font-size: 20px;">MANTRA</label>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-xl-3 col-sm-6">
                                    <div class="box">
                                        <div class="form-check">
                                            <input type="radio" id="a1" class="form-check-input"
                                                name="fav_language">
                                            <label for="a1" style="font-size: 20px;">STARTEK</label>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-xl-3 col-sm-6">
                                    <div class="box">
                                        <div class="form-check">
                                            <input type="radio" id="aa1" class="form-check-input"
                                                name="fav_language">
                                            <label for="aa1" style="font-size: 20px;">MORPHO</label>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-xl-3 col-sm-6">
                                    <div class="box">
                                        <div class="form-check">
                                            <input type="radio" id="aa2" class="form-check-input"
                                                name="fav_language">
                                            <label for="aa2" style="font-size: 20px;">SECUGEN</label>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <br>

                            <div class="row">
                                <div class="col-xl-3 col-sm-6">
                                    <div class="box">
                                        <div class="form-check mb-2">
                                            <input type="radio" id="html1" class="form-check-input"
                                                name="fav_language" style="transform: translateX(-9px)">
                                            <label for="html1"
                                                style="font-size: 20px; transform: translateX(-9px)">
                                                TATVIK</label>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-xl-3 col-sm-6">
                                    <div class="box">
                                        <div class="form-check">
                                            <input type="radio" id="a11" class="form-check-input"
                                                name="fav_language" style="transform: translateX(33px)">
                                            <label for="a11"
                                                style="font-size: 20px; transform: translateX(33px)">
                                                NEXTBIOMERTIC</label>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-xl-3 col-sm-6">
                                    <div class="box">
                                        <div class="form-check">
                                            <input type="radio" id="aa11" class="form-check-input"
                                                name="fav_language" style="transform: translateX(-25px)">
                                            <label for="aa11"
                                                style="font-size: 20px; transform: translateX(-25px)">
                                                IRIS</label>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-xl-3 col-sm-6">
                                    <div class="box">
                                        <div class="form-check">
                                            <input type="radio" id="aa22" class="form-check-input"
                                                name="fav_language" style="transform: translateX(7px)">
                                            <label for="aa22"
                                                style="font-size: 20px; transform: translateX(7px)">
                                                MANTRA
                                                            LI</label>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <br>
                            <div id="captureError">
                                <b style="color: red;"></b>
                            </div>
                            <div class="col-6 col-md-6">
                                <div class="d-flex mt-4">

                                    <img src="https://www.bing.com/th/id/OGC.b7389e994602e365e9b5bec84ee610e7?pid=1.7&rurl=https%3a%2f%2fwww.fingertec.com%2fbiometric_data_security%2fimages%2fICN_scan_fp.gif&ehk=m05AiEvRV0PpMrfDiHIV1pt%2bujJnnyDO79183Kv7gzk%3d"
                                        alt="" width="100px" style="cursor: pointer;" onclick="capture()">



                                    <div class="flex-grow-1 overflow-hidden">
                                        <div class="mb-3">

                                            <button type="button" class="btn" data-bs-toggle="modal"
                                                data-bs-target=".bs-example-modal-lg"
                                                style="background-color: #405189; color: white; float: left; margin-left: 20px; width: 110px; height: 50px; font-size: 16px; margin-top: 10px;">
                                                Submit</button>

                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div class="form-check mb-3" style="margin-top: 20px; color: red;">
                                <input class="form-check-input" type="checkbox" id="formCheck6" checked
                                    disabled>
                                <label for="formCheck6">
                                    <b style="font-size: 16px;">I hereby provide my consent to CSP to use
                                                    my Aadhaar number/ VID
                                                    to complete AEPS transaction authorisation.</b>

                                </label>
                            </div>
                        </div>
                        <div class="tab-pane" id="pill-justified-profile-1" role="tabpanel">
                            <div class="row">
                                <div class="col-6 col-md-4">
                                    <div class="flex-grow-1 overflow-hidden">
                                        <div class="mb-3">
                                            <label for="lastNameinput" class="form-label"
                                                style="font-size: 18px; color: black;">
                                                <i
                                                    class="bx bx-mobile"
                                                    style="font-size: 18px;"></i>&nbsp;Customer Mobile :
                                            </label>
                                            <input type="number" class="form-control"
                                                placeholder="Enter your Mobile Number ..."
                                                id="lastNameinput">
                                            <p style="margin-top: 10px; font-size: 15px; color: black;">
                                                Please
                                                            fill any mobile number
                                                            except the mobile number mapped with the bank account.
                                            </p>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-6 col-md-4">

                                    <div class="flex-grow-1 overflow-hidden">
                                        <div class="mb-3">
                                            <label for="lastNameinput" class="form-label"
                                                style="font-size: 18px; color: black;">
                                                <i
                                                    class="bx bx-credit-card"
                                                    style="font-size: 20px;"></i>&nbsp; Aadhar Number :
                                            </label>
                                            <input type="number" class="form-control"
                                                placeholder="Enter your Aadhar Number ... "
                                                id="lastNameinput">
                                        </div>
                                    </div>
                                </div>
                                <div class="col-6 col-md-4">

                                    <div class="flex-grow-1 overflow-hidden">
                                        <div class="mb-3">
                                            <label for="lastNameinput" class="form-label"
                                                style="font-size: 18px; color: black;">
                                                <i class="bx bx-rupee"
                                                    style="font-size: 18px;"></i>&nbsp; Amount :
                                            </label>
                                            <input type="text" class="form-control"
                                                placeholder="Enter your Amount ..." id="lastNameinput">
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <br>
                            <br>

                            <br>
                            <br>

                            <div class="row">
                                <div class="col-xl-3 col-sm-6">
                                    <div class="box" onclick="highlightCard(this)">
                                        <img src="https://logos-download.com/wp-content/uploads/2016/10/icici_bank_logo_symbol.png"
                                            width="180px">
                                    </div>

                                </div>

                                <div class="col-xl-3 col-sm-6">

                                    <div class="box" onclick="highlightCard(this)">
                                        <img src="https://ijariie.com/images/state-bank-of-india-logo.jpg"
                                            width="180px">
                                    </div>
                                    <!--end card-->
                                </div>
                                <!--end col-->
                                <div class="col-xl-3 col-sm-6">

                                    <div class="box" onclick="highlightCard(this)">
                                        <img src="https://seeklogo.com/images/P/punjab-national-bank-logo-C89A37A387-seeklogo.com.png"
                                            width="170px">
                                    </div>
                                    <!--end card-->
                                </div>
                                <!--end col-->
                                <div class="col-xl-3 col-sm-6">

                                    <div class="box" onclick="highlightCard(this)">
                                        <img src="https://allgovtjobsindia.in/wp-content/uploads/2016/06/Central-Bank-of-India.logo_.png"
                                            width="150px">
                                    </div>
                                    <!--end card-->
                                </div>
                                <!--end col-->
                            </div>
                            <br>
                            <br>
                            <div class="row">
                                <div class="col-xl-3 col-sm-6">

                                    <div class="box" onclick="highlightCard(this)">
                                        <img src="https://th.bing.com/th/id/R.cbecb773359c88fb3c231431bf04ab7f?rik=Bac93s2zvM4yIQ&riu=http%3a%2f%2flogos-download.com%2fwp-content%2fuploads%2f2016%2f06%2fBank_of_Baroda_logo_orange_background.png&ehk=EhcjlnpLzIOAaCARZwsXXZD6cvb4OryiMSqy4T7%2fc1k%3d&risl=&pid=ImgRaw&r=0"
                                            width="160px">
                                    </div>
                                    <!--end card-->
                                </div>
                                <!--end col-->
                                <div class="col-xl-3 col-sm-6">

                                    <div class="box" onclick="highlightCard(this)">
                                        <img src="https://th.bing.com/th/id/R.0e9b509bb821314b997cc8cce5c97bca?rik=LHGsOqvpNijTVg&riu=http%3a%2f%2fsynergyindia.net%2fimg%2flogos%2faxis-bank.png&ehk=hK8smoAoUHSTX6es3p3DTYvbuTNYGO4sJDKCR0yy0U4%3d&risl=&pid=ImgRaw&r=0"
                                            width="180px" height="42Qpx">
                                    </div>
                                    <!--end card-->
                                </div>
                                <!--end col-->
                                <div class="col-xl-3 col-sm-6">

                                    <div class="box" onclick="highlightCard(this)">
                                        <img src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAfcAAABkCAMAAACsLolMAAAAw1BMVEUATI/////tISEASY4ARYwpW5d7k7cAOofsAAA7Z56Em70APIjn6vEAR43tHBztERHpOz3tgoT1oKDsCQn1HhVaQ3sAQIkAN4b0iIn4vLzwWlqfsMn4+ftWeKfP2OQANYWrutD71tbvSUorXZi5xdjG0N+Jn7/i5+9rf6nX3+lefqtqh7A1ZJwNUJGktMxIb6KSpsMALYLzp6joLzHwOTZlVIX1l5j4uLj97+/ycnL3SkZcSn8AIn4AKYD85OXtenyYj6uo1dPXAAAKhUlEQVR4nO2d69raNhaF7drggHHSaRvTDAeTcBowBL42baedTtP7v6oBH/BeOruTp2Ck9RNv2ZJeSdbekoznO9ko794ZcLqLHHc75bjbKcfdTjnudspxt1OOu51y3O1Uwf2HH7/W6sf3/vQq/xsD408/9ZweUd6Icv/m1WutXr2vUvxsYPzd28DpETVG7t9+pdWNu4nxd289p0dU5LhbKcfdTjnudspxt1OOu51y3O2U426nHHc75bjbKcfdTqm4v34lVM39Z/Flx70LUnB//eGdSL/8u0rx/hfh9W8d9w5Ixf2f/l/RK8e9A3Lc7ZTjbqccdzvluHtekIRXJcG9M/I36n7cy8quRC/Q3xORcX1NDCoQmPI3bKzj7LjvDzfD/qyXxakBe8kDNM0GbDXX4QIteiCyJs9lssYWluhu3JN82GhDchhsyO95eSHZkx8r9fPZ8QKKAznjTYlysA9ibzMned+dl2MRFEizFD2gn++X44jLTSNIlHKXQ1obNAtJ3qTczAKB9ekGPujBUza5PDt34x7vaCJSESH9fRcXv6UrycN2H2cZVmL6UZm76oZVHg5r3iDP1B03mUlvvl3sM3GzCYdgeOIeMaaXFySTMW2Xi6qsEbUe1o8Mwinmpycvyf240/L4pKDAfa7hftF0AgNjOlHmbt48KQnFdx0d+O5IpOB+zU0+FlYztPIbv0ZjQDZoOmq8FqQD7v26+PGI/uxPj484zn8x7hcNsya5Mfd0MJUZDYXsKqm5+/464tMER7SZcg9A7qPmujn3DNuWEvtzcKd1bco93SusJgrwOu7+jk+cnhmbPcsEufuT24BgzD3Dd9a0p8L+JNz93Q28IXcl9kuPlw/1Wu7weq6ojhiTNWvCcPcP9avZlHu2wBuosT8Ld39dD/Vm3IOD5n4DabXpuXPzqWDAmbDtiuW+rctjyD1iRpSlxi1pwX2+FgtfK3fi7m/SNty5DshqJB3pDbh/ZKimC86kz3Bhud/KY8Y97WPqg84bbcE9iIXKmEfeibt/DMy5a4yu2shGegPuW2YU56Be8hHpTKryGHFn31oDHfY23CXeYPgg3FeVqRpp4b8H7KHvVX+fn5npsGBaXgi554X6E8DGTNcT0VziiLXJc9+VI70J9/CESU9a7F3kPj2cTqdZvmHbglfkD7kvWRWFYGI78yQOkyTNEA87Et8oAnfvkjIJw3QMrQbbTCxqtWe8vWBI6BeQDbinPUxogL2T3LMgCC6VHafouZQ1idw97gBw8WxIt3qpCpbC9IubcldC7nW3BQ+d6e/4uEpbtBFwLxuySX/HtCdl2KnSg3DPmsUEqCUh91uNvQD40pdjuOtzPGqCPjEdB/jYSikxdy8jM0UIBsPjyKhwgOoUcZ9fc2DAHeeoMxPsj8K9T1Y4oOhK7kECTy4KzPZ30aNh3M2bURHDapLyyriTH89Q9VFT0mneGOGkX8S9yJqeO6bcG2FnudNPWLz5i9zxexeyByN3mdTcGYKzq89twB3rmHZrcO+4mFopIfdgvCE/4pofmUSuyPLLNKNWQu5TI+4gQ+wM9x++/kD0K97SkPsneovf/iN78BfhnuTUuFi/RO5pRF3OihH0aniNJ/thv9ZwYNLf02x81YB66BjsC0lEpU9j6DPaPITcL+2kJfcRNCaFkLtShtxR/5LFvb4Id0RY1Apyn1PtSpLoVuGYLNzkgELu5SeeQCtmxrZtLoU0dyva4sTcL22jZX/nY8RidZs7vFXLilT57+WyN66F5wZOD0gXt/mIXY5GhHcRRGwNuE/jltz9kzouX6vj3CP6Ql6bccfFsZlZPTXScO//jtVEYwWT1MsIX9rkJNz9xX9bcpcHmEE2cp/wv7WQrr/vBtKJ+uVZtCR0agHcaWkPLbn7E6OR3nruktmbXPr4/DAWW19n8DATJXUD3Pekbka06CbcmcCARB3nDtX1GP3dryOsZTFJzsv5B7EjGyihIH0ZDCPuW5M5fce501oUzedRonmdxEuXy4A7qSpKqIj403KTnTnIPaLRALaEnoY746KI1W3uyODM+++okjs6/bj8kkaNJLWHzwyLAEG43MMS+6pOG3LDOnXnSZUi9zAjzh+RGXfVPtpayB2PtH8wuhsXrwMZxutORPR3DXdcWNvz8TpUyT2A5SsIl6arUSN290QlcbwuiSAqUL/hqRe2jbinN9voGO7BUlgAGfcjhuh3+pH+QeLzUVKvlyUwdGu4o/dTMEDuC6pVNeOBvepbaZz2LPbsJfF53M5aH3CgCwjnl2IY+Z08owmvMdz5nZhlcYTcp72UefcotgdWehDurdZhb6RiqJySIHIPU6qqABAK8ZdNsXAkaBOf95jNVNXbA6YSo20pSvg2q2S5w/reTeJ1mV7iRcwBkKNupO8ydxxaqxHbYF0GczxvBsUxLPNIZiYy7lD11Ux9zOw95HQ7QMFxF+zFlO67uFgHaDjXjfRd5P4SXrtxxJ6IOgi8NHG7h1eJv7ltXYUJ31ay0UrCPYSlgvLsUsBshOF1a8Mcd9wMUEm+nzZlPADZbqFaXeQ+3JzPkxXblSqnyGDfBbvxaRXGl3YUj/GVKvOGmPl8udIXZTOYapTvCIPtm/XLhOcuCt2q9s8z7wXN8dwOcpeoqkGDcZ47tuTPF5MJe0QyMFqPK7eSz1m3qxwGhO9oVB2rFXBPTpy1gjtrvVbH6VtwD8ulZlYvj8G99l1MuJt0RP7oopC7WOXiSMCD45VKuXsxt+1edU4qYupIvdDYgvtUJjS7E/d6NDLirj83MZWubphwr7Z48scleFXURNy9mB3pVdyZTWf+VOnLPcs5qVtI3Iy7dsZ1+H/OSVWNRra2CqoOUAi5h+yjlOdhUzxj769kJwCeiPtZci5S6seyRw0YKbapGXAv1/RhX8/II3/iBX5DmUUhd8ax1J1/Z4O7qq0Fz8GdHFg36+8a8KrdiXrueZma2SlD9vADttJvEHP3mK3xau6syy9/Vz0H9y3d6WDK/eJwi9c+LvWlPHmg435LDVEC6HvQIso5oIw7DA0a7tzBHMVmu+5zn+/hgzTG3L0gG4o3sSq+TuRpv3OyGVep0b8FrwpXgot4k4S7Nwb3UsOdCUipNtt15LtG/PeHrppuV/0wxrJhFE8dpw6jIdfnV0vNPiXhKcdS28Ws+a5RTG89h5ti/KBYtIW1IkISA7Dq7xrxsRT5nP5u3IPDgIh+g43+Xi2aBMsBp8MxGscp56QGPWokx1dV1Li3Wd98utG1GWnXro98Xq7Z6aUZfMcMysHEvBJIGbDWR1l56ttIrVPM1IleA93vu4XcaUXVBeF/nLa8r8Q8TKPseDidDscsio02VUv+crVNRvhrUmPhbcysFeV33ym9yrSRPI8cdzvluNspx91OOe52SsX90/ciff6jSvFOePn7N457B6T8H7E3IpH/ERNe/8px74Dc/wbaKcfdTjnudspxt1OOu51y3O2U426nHHc75bjbKcfdTjnudor9LrEw5N4qPo/Gb5X/1up0L2XA/d3nf2j1+Y/qVJyR8Z99p0dUbv49K6dnlONupxx3O+W42ynH3U457nbKcbdTjrudctzt1P8AZSSl0gf9xyoAAAAASUVORK5CYII="
                                            width="180px" height="42px">
                                    </div>
                                    <!--end card-->
                                </div>
                                <!--end col-->
                                <div class="col-xl-3 col-sm-6">

                                    <div class="box" onclick="highlightCard(this)">
                                        <img src="https://i.pinimg.com/736x/3a/db/17/3adb17ad584e31a26d7f1119beb26c86.jpg"
                                            width="140px">
                                    </div>
                                    <!--end card-->
                                </div>
                                <!--end col-->
                            </div>
                            <div class="col-6 col-md-6">
                                <div class="d-flex mt-4">

                                    <div class="flex-grow-1 overflow-hidden">
                                        <div class="mb-3">
                                            <label for="lastNameinput" class="form-label"
                                                style="font-size: 18px; color: black;">
                                                <i class="bx bxs-bank"
                                                    style="font-size: 18px;"></i>&nbsp;BANK Name:
                                            </label>
                                            <select class="form-select sl"
                                                aria-label=".form-select-lg example" style="width: 100%;">
                                                <option value="">Select Bank </option>



                                            </select>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <br>
                            <br>
                            <div class="row">
                                <div class="col-xl-3 col-sm-6">
                                    <div class="box">
                                        <div class="form-check mb-2">
                                            <input type="radio" id="html" class="form-check-input"
                                                name="fav_language">
                                            <label for="html" style="font-size: 20px;">MANTRA</label>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-xl-3 col-sm-6">
                                    <div class="box">
                                        <div class="form-check">
                                            <input type="radio" id="a1" class="form-check-input"
                                                name="fav_language">
                                            <label for="a1" style="font-size: 20px;">STARTEK</label>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-xl-3 col-sm-6">
                                    <div class="box">
                                        <div class="form-check">
                                            <input type="radio" id="aa1" class="form-check-input"
                                                name="fav_language">
                                            <label for="aa1" style="font-size: 20px;">MORPHO</label>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-xl-3 col-sm-6">
                                    <div class="box">
                                        <div class="form-check">
                                            <input type="radio" id="aa2" class="form-check-input"
                                                name="fav_language">
                                            <label for="aa2" style="font-size: 20px;">SECUGEN</label>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <br>

                            <div class="row">
                                <div class="col-xl-3 col-sm-6">
                                    <div class="box">
                                        <div class="form-check mb-2">
                                            <input type="radio" id="html1" class="form-check-input"
                                                name="fav_language" style="transform: translateX(-9px)">
                                            <label for="html1"
                                                style="font-size: 20px; transform: translateX(-9px)">
                                                TATVIK</label>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-xl-3 col-sm-6">
                                    <div class="box">
                                        <div class="form-check">
                                            <input type="radio" id="a11" class="form-check-input"
                                                name="fav_language" style="transform: translateX(33px)">
                                            <label for="a11"
                                                style="font-size: 20px; transform: translateX(33px)">
                                                NEXTBIOMERTIC</label>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-xl-3 col-sm-6">
                                    <div class="box">
                                        <div class="form-check">
                                            <input type="radio" id="aa11" class="form-check-input"
                                                name="fav_language" style="transform: translateX(-25px)">
                                            <label for="aa11"
                                                style="font-size: 20px; transform: translateX(-25px)">
                                                IRIS</label>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-xl-3 col-sm-6">
                                    <div class="box">
                                        <div class="form-check">
                                            <input type="radio" id="aa22" class="form-check-input"
                                                name="fav_language" style="transform: translateX(7px)">
                                            <label for="aa22"
                                                style="font-size: 20px; transform: translateX(7px)">
                                                MANTRA
                                                            LI</label>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <br>

                            <br>
                            <div id="captureError1">
                                <b style="color: red;"></b>
                            </div>
                            <div class="col-6 col-md-6">
                                <div class="d-flex mt-4">


                                    <img src="https://www.bing.com/th/id/OGC.b7389e994602e365e9b5bec84ee610e7?pid=1.7&rurl=https%3a%2f%2fwww.fingertec.com%2fbiometric_data_security%2fimages%2fICN_scan_fp.gif&ehk=m05AiEvRV0PpMrfDiHIV1pt%2bujJnnyDO79183Kv7gzk%3d"
                                        alt="" width="100px" style="cursor: pointer;" onclick="capture1()">


                                    <div class="flex-grow-1 overflow-hidden">
                                        <div class="mb-3">

                                            <button type="button" class="btn" data-bs-toggle="modal"
                                                data-bs-target=".bs-example-modal-lg"
                                                style="background-color: #405189; color: white; float: left; margin-left: 20px; width: 110px; height: 50px; font-size: 16px; margin-top: 10px;">
                                                Submit</button>

                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="form-check mb-3" style="margin-top: 20px; color: red;">
                                <input class="form-check-input" type="checkbox" id="formCheck6" checked
                                    disabled>
                                <label class="form-check-label" for="formCheck6">
                                </label>
                                <b style="font-size: 16px;">I hereby provide my consent to CSP to use my
                                                Aadhaar number/ VID to
                                                complete AEPS transaction authorisation.</b>


                            </div>
                        </div>
                        <div class="tab-pane" id="pill-justified-messages-1" role="tabpanel">
                            <div class="row">
                                <div class="col-6 col-md-6">
                                    <div class="flex-grow-1 overflow-hidden">
                                        <div class="mb-3">
                                            <label for="lastNameinput" class="form-label"
                                                style="font-size: 18px; color: black;">
                                                <i
                                                    class="bx bx-mobile"
                                                    style="font-size: 18px;"></i>&nbsp;Customer Mobile :
                                            </label>
                                            <input type="number" class="form-control"
                                                placeholder="Enter your Mobile Number ..."
                                                id="lastNameinput">
                                            <p style="margin-top: 10px; font-size: 15px; color: black;">
                                                Please
                                                            fill any mobile number
                                                            except the mobile number mapped with the bank account.
                                            </p>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-6 col-md-6">

                                    <div class="flex-grow-1 overflow-hidden">
                                        <div class="mb-3">
                                            <label for="lastNameinput" class="form-label"
                                                style="font-size: 18px; color: black;">
                                                <i
                                                    class="bx bx-credit-card"
                                                    style="font-size: 20px;"></i>&nbsp; Aadhar Number :
                                            </label>
                                            <input type="number" class="form-control"
                                                placeholder="Enter your Aadhar Number ... "
                                                id="lastNameinput">
                                        </div>
                                    </div>
                                </div>
                                <!-- <div class="col-6 col-md-4">

                                                    <div class="flex-grow-1 overflow-hidden">
                                                        <div class="mb-3">
                                                            <label for="lastNameinput" class="form-label"><i
                                                                    class="bx bx-rupee"
                                                                    style="font-size: 18px;"></i>&nbsp; Amount :
                                                            </label>
                                                            <input type="text" class="form-control"
                                                                placeholder="Enter your Amount ..." id="lastNameinput">
                                                        </div>
                                                    </div>
                                                </div> -->
                            </div>
                            <br>
                            <br>

                            <br>
                            <br>

                            <div class="row">
                                <div class="col-xl-3 col-sm-6">
                                    <div class="box" onclick="highlightCard(this)">
                                        <img src="https://logos-download.com/wp-content/uploads/2016/10/icici_bank_logo_symbol.png"
                                            width="180px">
                                    </div>

                                </div>

                                <div class="col-xl-3 col-sm-6">

                                    <div class="box" onclick="highlightCard(this)">
                                        <img src="https://ijariie.com/images/state-bank-of-india-logo.jpg"
                                            width="180px">
                                    </div>
                                    <!--end card-->
                                </div>
                                <!--end col-->
                                <div class="col-xl-3 col-sm-6">

                                    <div class="box" onclick="highlightCard(this)">
                                        <img src="https://seeklogo.com/images/P/punjab-national-bank-logo-C89A37A387-seeklogo.com.png"
                                            width="170px">
                                    </div>
                                    <!--end card-->
                                </div>
                                <!--end col-->
                                <div class="col-xl-3 col-sm-6">

                                    <div class="box" onclick="highlightCard(this)">
                                        <img src="https://allgovtjobsindia.in/wp-content/uploads/2016/06/Central-Bank-of-India.logo_.png"
                                            width="150px">
                                    </div>
                                    <!--end card-->
                                </div>
                                <!--end col-->
                            </div>
                            <br>
                            <br>
                            <div class="row">
                                <div class="col-xl-3 col-sm-6">

                                    <div class="box" onclick="highlightCard(this)">
                                        <img src="https://th.bing.com/th/id/R.cbecb773359c88fb3c231431bf04ab7f?rik=Bac93s2zvM4yIQ&riu=http%3a%2f%2flogos-download.com%2fwp-content%2fuploads%2f2016%2f06%2fBank_of_Baroda_logo_orange_background.png&ehk=EhcjlnpLzIOAaCARZwsXXZD6cvb4OryiMSqy4T7%2fc1k%3d&risl=&pid=ImgRaw&r=0"
                                            width="160px">
                                    </div>
                                    <!--end card-->
                                </div>
                                <!--end col-->
                                <div class="col-xl-3 col-sm-6">

                                    <div class="box" onclick="highlightCard(this)">
                                        <img src="https://th.bing.com/th/id/R.0e9b509bb821314b997cc8cce5c97bca?rik=LHGsOqvpNijTVg&riu=http%3a%2f%2fsynergyindia.net%2fimg%2flogos%2faxis-bank.png&ehk=hK8smoAoUHSTX6es3p3DTYvbuTNYGO4sJDKCR0yy0U4%3d&risl=&pid=ImgRaw&r=0"
                                            width="180px" height="42Qpx">
                                    </div>
                                    <!--end card-->
                                </div>
                                <!--end col-->
                                <div class="col-xl-3 col-sm-6">
                                    <div class="box" onclick="highlightCard(this)">
                                        <img src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAfcAAABkCAMAAACsLolMAAAAw1BMVEUATI/////tISEASY4ARYwpW5d7k7cAOofsAAA7Z56Em70APIjn6vEAR43tHBztERHpOz3tgoT1oKDsCQn1HhVaQ3sAQIkAN4b0iIn4vLzwWlqfsMn4+ftWeKfP2OQANYWrutD71tbvSUorXZi5xdjG0N+Jn7/i5+9rf6nX3+lefqtqh7A1ZJwNUJGktMxIb6KSpsMALYLzp6joLzHwOTZlVIX1l5j4uLj97+/ycnL3SkZcSn8AIn4AKYD85OXtenyYj6uo1dPXAAAKhUlEQVR4nO2d69raNhaF7drggHHSaRvTDAeTcBowBL42baedTtP7v6oBH/BeOruTp2Ck9RNv2ZJeSdbekoznO9ko794ZcLqLHHc75bjbKcfdTjnudspxt1OOu51y3O1Uwf2HH7/W6sf3/vQq/xsD408/9ZweUd6Icv/m1WutXr2vUvxsYPzd28DpETVG7t9+pdWNu4nxd289p0dU5LhbKcfdTjnudspxt1OOu51y3O2U426nHHc75bjbKcfdTqm4v34lVM39Z/Flx70LUnB//eGdSL/8u0rx/hfh9W8d9w5Ixf2f/l/RK8e9A3Lc7ZTjbqccdzvluHtekIRXJcG9M/I36n7cy8quRC/Q3xORcX1NDCoQmPI3bKzj7LjvDzfD/qyXxakBe8kDNM0GbDXX4QIteiCyJs9lssYWluhu3JN82GhDchhsyO95eSHZkx8r9fPZ8QKKAznjTYlysA9ibzMned+dl2MRFEizFD2gn++X44jLTSNIlHKXQ1obNAtJ3qTczAKB9ekGPujBUza5PDt34x7vaCJSESH9fRcXv6UrycN2H2cZVmL6UZm76oZVHg5r3iDP1B03mUlvvl3sM3GzCYdgeOIeMaaXFySTMW2Xi6qsEbUe1o8Mwinmpycvyf240/L4pKDAfa7hftF0AgNjOlHmbt48KQnFdx0d+O5IpOB+zU0+FlYztPIbv0ZjQDZoOmq8FqQD7v26+PGI/uxPj484zn8x7hcNsya5Mfd0MJUZDYXsKqm5+/464tMER7SZcg9A7qPmujn3DNuWEvtzcKd1bco93SusJgrwOu7+jk+cnhmbPcsEufuT24BgzD3Dd9a0p8L+JNz93Q28IXcl9kuPlw/1Wu7weq6ojhiTNWvCcPcP9avZlHu2wBuosT8Ld39dD/Vm3IOD5n4DabXpuXPzqWDAmbDtiuW+rctjyD1iRpSlxi1pwX2+FgtfK3fi7m/SNty5DshqJB3pDbh/ZKimC86kz3Bhud/KY8Y97WPqg84bbcE9iIXKmEfeibt/DMy5a4yu2shGegPuW2YU56Be8hHpTKryGHFn31oDHfY23CXeYPgg3FeVqRpp4b8H7KHvVX+fn5npsGBaXgi554X6E8DGTNcT0VziiLXJc9+VI70J9/CESU9a7F3kPj2cTqdZvmHbglfkD7kvWRWFYGI78yQOkyTNEA87Et8oAnfvkjIJw3QMrQbbTCxqtWe8vWBI6BeQDbinPUxogL2T3LMgCC6VHafouZQ1idw97gBw8WxIt3qpCpbC9IubcldC7nW3BQ+d6e/4uEpbtBFwLxuySX/HtCdl2KnSg3DPmsUEqCUh91uNvQD40pdjuOtzPGqCPjEdB/jYSikxdy8jM0UIBsPjyKhwgOoUcZ9fc2DAHeeoMxPsj8K9T1Y4oOhK7kECTy4KzPZ30aNh3M2bURHDapLyyriTH89Q9VFT0mneGOGkX8S9yJqeO6bcG2FnudNPWLz5i9zxexeyByN3mdTcGYKzq89twB3rmHZrcO+4mFopIfdgvCE/4pofmUSuyPLLNKNWQu5TI+4gQ+wM9x++/kD0K97SkPsneovf/iN78BfhnuTUuFi/RO5pRF3OihH0aniNJ/thv9ZwYNLf02x81YB66BjsC0lEpU9j6DPaPITcL+2kJfcRNCaFkLtShtxR/5LFvb4Id0RY1Apyn1PtSpLoVuGYLNzkgELu5SeeQCtmxrZtLoU0dyva4sTcL22jZX/nY8RidZs7vFXLilT57+WyN66F5wZOD0gXt/mIXY5GhHcRRGwNuE/jltz9kzouX6vj3CP6Ql6bccfFsZlZPTXScO//jtVEYwWT1MsIX9rkJNz9xX9bcpcHmEE2cp/wv7WQrr/vBtKJ+uVZtCR0agHcaWkPLbn7E6OR3nruktmbXPr4/DAWW19n8DATJXUD3Pekbka06CbcmcCARB3nDtX1GP3dryOsZTFJzsv5B7EjGyihIH0ZDCPuW5M5fce501oUzedRonmdxEuXy4A7qSpKqIj403KTnTnIPaLRALaEnoY746KI1W3uyODM+++okjs6/bj8kkaNJLWHzwyLAEG43MMS+6pOG3LDOnXnSZUi9zAjzh+RGXfVPtpayB2PtH8wuhsXrwMZxutORPR3DXdcWNvz8TpUyT2A5SsIl6arUSN290QlcbwuiSAqUL/hqRe2jbinN9voGO7BUlgAGfcjhuh3+pH+QeLzUVKvlyUwdGu4o/dTMEDuC6pVNeOBvepbaZz2LPbsJfF53M5aH3CgCwjnl2IY+Z08owmvMdz5nZhlcYTcp72UefcotgdWehDurdZhb6RiqJySIHIPU6qqABAK8ZdNsXAkaBOf95jNVNXbA6YSo20pSvg2q2S5w/reTeJ1mV7iRcwBkKNupO8ydxxaqxHbYF0GczxvBsUxLPNIZiYy7lD11Ux9zOw95HQ7QMFxF+zFlO67uFgHaDjXjfRd5P4SXrtxxJ6IOgi8NHG7h1eJv7ltXYUJ31ay0UrCPYSlgvLsUsBshOF1a8Mcd9wMUEm+nzZlPADZbqFaXeQ+3JzPkxXblSqnyGDfBbvxaRXGl3YUj/GVKvOGmPl8udIXZTOYapTvCIPtm/XLhOcuCt2q9s8z7wXN8dwOcpeoqkGDcZ47tuTPF5MJe0QyMFqPK7eSz1m3qxwGhO9oVB2rFXBPTpy1gjtrvVbH6VtwD8ulZlYvj8G99l1MuJt0RP7oopC7WOXiSMCD45VKuXsxt+1edU4qYupIvdDYgvtUJjS7E/d6NDLirj83MZWubphwr7Z48scleFXURNy9mB3pVdyZTWf+VOnLPcs5qVtI3Iy7dsZ1+H/OSVWNRra2CqoOUAi5h+yjlOdhUzxj769kJwCeiPtZci5S6seyRw0YKbapGXAv1/RhX8/II3/iBX5DmUUhd8ax1J1/Z4O7qq0Fz8GdHFg36+8a8KrdiXrueZma2SlD9vADttJvEHP3mK3xau6syy9/Vz0H9y3d6WDK/eJwi9c+LvWlPHmg435LDVEC6HvQIso5oIw7DA0a7tzBHMVmu+5zn+/hgzTG3L0gG4o3sSq+TuRpv3OyGVep0b8FrwpXgot4k4S7Nwb3UsOdCUipNtt15LtG/PeHrppuV/0wxrJhFE8dpw6jIdfnV0vNPiXhKcdS28Ws+a5RTG89h5ti/KBYtIW1IkISA7Dq7xrxsRT5nP5u3IPDgIh+g43+Xi2aBMsBp8MxGscp56QGPWokx1dV1Li3Wd98utG1GWnXro98Xq7Z6aUZfMcMysHEvBJIGbDWR1l56ttIrVPM1IleA93vu4XcaUXVBeF/nLa8r8Q8TKPseDidDscsio02VUv+crVNRvhrUmPhbcysFeV33ym9yrSRPI8cdzvluNspx91OOe52SsX90/ciff6jSvFOePn7N457B6T8H7E3IpH/ERNe/8px74Dc/wbaKcfdTjnudspxt1OOu51y3O2U426nHHc75bjbKcfdTjnudor9LrEw5N4qPo/Gb5X/1up0L2XA/d3nf2j1+Y/qVJyR8Z99p0dUbv49K6dnlONupxx3O+W42ynH3U457nbKcbdTjrudctzt1P8AZSSl0gf9xyoAAAAASUVORK5CYII="
                                            width="180px" height="42px">
                                    </div>
                                    <!--end card-->
                                </div>
                                <!--end col-->
                                <div class="col-xl-3 col-sm-6">
                                    <!-- <div class="card card-animate"  onclick="highlightCard(this)">
                                                        <div class="card-body">
                                                            <div class="d-flex justify-content-center align-items-center">
                                                                <img src="https://i.pinimg.com/736x/3a/db/17/3adb17ad584e31a26d7f1119beb26c86.jpg" width="140px">

                                                            </div>
                                                        </div>
                                                    </div> -->
                                    <div class="box" onclick="highlightCard(this)">
                                        <img src="https://i.pinimg.com/736x/3a/db/17/3adb17ad584e31a26d7f1119beb26c86.jpg"
                                            width="140px">
                                    </div>
                                    <!--end card-->
                                </div>
                                <!--end col-->
                            </div>
                            <div class="col-6 col-md-6">
                                <div class="d-flex mt-4">

                                    <div class="flex-grow-1 overflow-hidden">
                                        <div class="mb-3">
                                            <label for="lastNameinput" class="form-label"
                                                style="font-size: 18px; color: black;">
                                                <i class="bx bxs-bank"
                                                    style="font-size: 18px;"></i>&nbsp;BANK Name:
                                            </label>
                                            <select class="form-select sl"
                                                aria-label=".form-select-lg example" style="width: 100%;">
                                                <option value="">Select Bank </option>



                                            </select>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <br>
                            <br>
                            <div class="row">
                                <div class="col-xl-3 col-sm-6">
                                    <div class="box">
                                        <div class="form-check mb-2">
                                            <input type="radio" id="html" class="form-check-input"
                                                name="fav_language">
                                            <label for="html" style="font-size: 20px;">MANTRA</label>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-xl-3 col-sm-6">
                                    <div class="box">
                                        <div class="form-check">
                                            <input type="radio" id="a1" class="form-check-input"
                                                name="fav_language">
                                            <label for="a1" style="font-size: 20px;">STARTEK</label>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-xl-3 col-sm-6">
                                    <div class="box">
                                        <div class="form-check">
                                            <input type="radio" id="aa1" class="form-check-input"
                                                name="fav_language">
                                            <label for="aa1" style="font-size: 20px;">MORPHO</label>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-xl-3 col-sm-6">
                                    <div class="box">
                                        <div class="form-check">
                                            <input type="radio" id="aa2" class="form-check-input"
                                                name="fav_language">
                                            <label for="aa2" style="font-size: 20px;">SECUGEN</label>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <br>

                            <div class="row">
                                <div class="col-xl-3 col-sm-6">
                                    <div class="box">
                                        <div class="form-check mb-2">
                                            <input type="radio" id="html1" class="form-check-input"
                                                name="fav_language" style="transform: translateX(-9px)">
                                            <label for="html1"
                                                style="font-size: 20px; transform: translateX(-9px)">
                                                TATVIK</label>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-xl-3 col-sm-6">
                                    <div class="box">
                                        <div class="form-check">
                                            <input type="radio" id="a11" class="form-check-input"
                                                name="fav_language" style="transform: translateX(33px)">
                                            <label for="a11"
                                                style="font-size: 20px; transform: translateX(33px)">
                                                NEXTBIOMERTIC</label>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-xl-3 col-sm-6">
                                    <div class="box">
                                        <div class="form-check">
                                            <input type="radio" id="aa11" class="form-check-input"
                                                name="fav_language" style="transform: translateX(-25px)">
                                            <label for="aa11"
                                                style="font-size: 20px; transform: translateX(-25px)">
                                                IRIS</label>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-xl-3 col-sm-6">
                                    <div class="box">
                                        <div class="form-check">
                                            <input type="radio" id="aa22" class="form-check-input"
                                                name="fav_language" style="transform: translateX(7px)">
                                            <label for="aa22"
                                                style="font-size: 20px; transform: translateX(7px)">
                                                MANTRA
                                                            LI</label>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <br>

                            <br>
                            <div id="captureError2">
                                <b style="color: red;"></b>
                            </div>
                            <div class="col-6 col-md-6">
                                <div class="d-flex mt-4">
                                    <!-- <img src="https://images.techhive.com/images/article/2015/05/android-m-fingerprint-support-100587673-carousel.idge.jpg"
                                                        width="120px" height="50px" style="border-radius: 10px;" /> -->
                                    <img src="https://www.bing.com/th/id/OGC.b7389e994602e365e9b5bec84ee610e7?pid=1.7&rurl=https%3a%2f%2fwww.fingertec.com%2fbiometric_data_security%2fimages%2fICN_scan_fp.gif&ehk=m05AiEvRV0PpMrfDiHIV1pt%2bujJnnyDO79183Kv7gzk%3d"
                                        alt="" width="100px" style="cursor: pointer;" onclick="capture2()">


                                    <div class="flex-grow-1 overflow-hidden">
                                        <div class="mb-3">

                                            <button type="button" class="btn" data-bs-toggle="modal"
                                                data-bs-target=".bs-example-modal-lg"
                                                style="background-color: #405189; color: white; float: left; margin-left: 20px; width: 110px; height: 50px; font-size: 16px; margin-top: 10px;">
                                                Submit</button>

                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="form-check mb-3" style="margin-top: 20px; color: red;">
                                <input class="form-check-input" type="checkbox" id="formCheck6" checked
                                    disabled>
                                <label class="form-check-label" for="formCheck6">
                                    <b style="font-size: 16px;">I hereby provide my consent to CSP to use
                                                    my Aadhaar number/ VID
                                                    to complete AEPS transaction authorisation.</b>

                                </label>
                            </div>
                        </div>
                        <div class="tab-pane" id="pill-justified-settings-1" role="tabpanel">
                            <div class="row">
                                <div class="col-6 col-md-6">
                                    <div class="flex-grow-1 overflow-hidden">
                                        <div class="mb-3">
                                            <label for="lastNameinput" class="form-label"
                                                style="font-size: 18px; color: black;">
                                                <i
                                                    class="bx bx-mobile"
                                                    style="font-size: 18px;"></i>&nbsp;Customer Mobile :
                                            </label>
                                            <input type="number" class="form-control"
                                                placeholder="Enter your Mobile Number ..."
                                                id="lastNameinput">
                                            <p style="margin-top: 10px; font-size: 15px; color: black;">
                                                Please
                                                            fill any mobile number
                                                            except the mobile number mapped with the bank account.
                                            </p>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-6 col-md-6">

                                    <div class="flex-grow-1 overflow-hidden">
                                        <div class="mb-3">
                                            <label for="lastNameinput" class="form-label"
                                                style="font-size: 18px; color: black;">
                                                <i
                                                    class="bx bx-credit-card"
                                                    style="font-size: 20px;"></i>&nbsp; Aadhar Number :
                                            </label>
                                            <input type="number" class="form-control"
                                                placeholder="Enter your Aadhar Number ... "
                                                id="lastNameinput">
                                        </div>
                                    </div>
                                </div>
                                <!-- <div class="col-6 col-md-4">

                                                    <div class="flex-grow-1 overflow-hidden">
                                                        <div class="mb-3">
                                                            <label for="lastNameinput" class="form-label"><i
                                                                    class="bx bx-rupee"
                                                                    style="font-size: 18px;"></i>&nbsp; Amount :
                                                            </label>
                                                            <input type="text" class="form-control"
                                                                placeholder="Enter your Amount ..." id="lastNameinput">
                                                        </div>
                                                    </div>
                                                </div> -->
                            </div>
                            <br>
                            <br>

                            <br>
                            <br>

                            <div class="row">
                                <div class="col-xl-3 col-sm-6">
                                    <div class="box" onclick="highlightCard(this)">
                                        <img src="https://logos-download.com/wp-content/uploads/2016/10/icici_bank_logo_symbol.png"
                                            width="180px">
                                    </div>
                                    <!-- <div class="card card-animate" id="cards" onclick="highlightCard(this)">
                                                        <div class="card-body">
                                                            <div class="d-flex justify-content-center align-items-center">
                                                                <img src="https://logos-download.com/wp-content/uploads/2016/10/icici_bank_logo_symbol.png" width="180px">
                                                            </div>
                                                        </div>
                                                    </div> -->
                                </div>

                                <div class="col-xl-3 col-sm-6">
                                    <!-- <div class="card card-animate"  onclick="highlightCard(this)">
                                                        <div class="card-body">
                                                            <div
                                                                class="d-flex justify-content-center align-items-center">
                                                                <img src="https://ijariie.com/images/state-bank-of-india-logo.jpg"
                                                                    width="180px">

                                                            </div>
                                                        </div>
                                                    </div> -->
                                    <div class="box" onclick="highlightCard(this)">
                                        <img src="https://ijariie.com/images/state-bank-of-india-logo.jpg"
                                            width="180px">
                                    </div>
                                    <!--end card-->
                                </div>
                                <!--end col-->
                                <div class="col-xl-3 col-sm-6">
                                    <!-- <div class="card card-animate"  onclick="highlightCard(this)">
                                                        <div class="card-body">
                                                            <div
                                                                class="d-flex justify-content-center align-items-center">
                                                                <img src="https://seeklogo.com/images/P/punjab-national-bank-logo-C89A37A387-seeklogo.com.png"
                                                                    width="170px">

                                                            </div>
                                                        </div>
                                                    </div> -->
                                    <div class="box" onclick="highlightCard(this)">
                                        <img src="https://seeklogo.com/images/P/punjab-national-bank-logo-C89A37A387-seeklogo.com.png"
                                            width="170px">
                                    </div>
                                    <!--end card-->
                                </div>
                                <!--end col-->
                                <div class="col-xl-3 col-sm-6">
                                    <!-- <div class="card card-animate"  onclick="highlightCard(this)">
                                                        <div class="card-body">
                                                            <div
                                                                class="d-flex justify-content-center align-items-center">
                                                                <img src="https://allgovtjobsindia.in/wp-content/uploads/2016/06/Central-Bank-of-India.logo_.png"
                                                                    width="150px">

                                                            </div>
                                                        </div>
                                                    </div> -->
                                    <div class="box" onclick="highlightCard(this)">
                                        <img src="https://allgovtjobsindia.in/wp-content/uploads/2016/06/Central-Bank-of-India.logo_.png"
                                            width="150px">
                                    </div>
                                    <!--end card-->
                                </div>
                                <!--end col-->
                            </div>
                            <br>
                            <br>
                            <div class="row">
                                <div class="col-xl-3 col-sm-6">
                                    <!-- <div class="card card-animate"  onclick="highlightCard(this)">
                                                        <div class="card-body">
                                                            <div class="d-flex  justify-content-center align-items-center">
                                                                <img src="https://th.bing.com/th/id/R.cbecb773359c88fb3c231431bf04ab7f?rik=Bac93s2zvM4yIQ&riu=http%3a%2f%2flogos-download.com%2fwp-content%2fuploads%2f2016%2f06%2fBank_of_Baroda_logo_orange_background.png&ehk=EhcjlnpLzIOAaCARZwsXXZD6cvb4OryiMSqy4T7%2fc1k%3d&risl=&pid=ImgRaw&r=0" width="160px">

                                                            </div>
                                                        </div>
                                                    </div> -->
                                    <div class="box" onclick="highlightCard(this)">
                                        <img src="https://th.bing.com/th/id/R.cbecb773359c88fb3c231431bf04ab7f?rik=Bac93s2zvM4yIQ&riu=http%3a%2f%2flogos-download.com%2fwp-content%2fuploads%2f2016%2f06%2fBank_of_Baroda_logo_orange_background.png&ehk=EhcjlnpLzIOAaCARZwsXXZD6cvb4OryiMSqy4T7%2fc1k%3d&risl=&pid=ImgRaw&r=0"
                                            width="160px">
                                    </div>
                                    <!--end card-->
                                </div>
                                <!--end col-->
                                <div class="col-xl-3 col-sm-6">

                                    <div class="box" onclick="highlightCard(this)">
                                        <img src="https://th.bing.com/th/id/R.0e9b509bb821314b997cc8cce5c97bca?rik=LHGsOqvpNijTVg&riu=http%3a%2f%2fsynergyindia.net%2fimg%2flogos%2faxis-bank.png&ehk=hK8smoAoUHSTX6es3p3DTYvbuTNYGO4sJDKCR0yy0U4%3d&risl=&pid=ImgRaw&r=0"
                                            width="180px" height="42Qpx">
                                    </div>

                                </div>
                                <!--end col-->
                                <div class="col-xl-3 col-sm-6">
                                    <div class="box" onclick="highlightCard(this)">
                                        <img src="data:image/png;base64,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"
                                            width="180px" height="42px">
                                    </div>
                                    <!--end card-->
                                </div>
                                <!--end col-->
                                <div class="col-xl-3 col-sm-6">
                                    <!-- <div class="card card-animate"  onclick="highlightCard(this)">
                                                        <div class="card-body">
                                                            <div class="d-flex justify-content-center align-items-center">
                                                                <img src="https://i.pinimg.com/736x/3a/db/17/3adb17ad584e31a26d7f1119beb26c86.jpg" width="140px">

                                                            </div>
                                                        </div>
                                                    </div> -->
                                    <div class="box" onclick="highlightCard(this)">
                                        <img src="https://i.pinimg.com/736x/3a/db/17/3adb17ad584e31a26d7f1119beb26c86.jpg"
                                            width="140px">
                                    </div>
                                    <!--end card-->
                                </div>
                                <!--end col-->
                            </div>
                            <div class="col-6 col-md-6">
                                <div class="d-flex mt-4">

                                    <div class="flex-grow-1 overflow-hidden">
                                        <div class="mb-3">
                                            <label for="lastNameinput" class="form-label"
                                                style="font-size: 18px; color: black;">
                                                <i class="bx bxs-bank"
                                                    style="font-size: 18px;"></i>&nbsp;BANK Name:
                                            </label>
                                            <select class="form-select sl"
                                                aria-label=".form-select-lg example" style="width: 100%;">
                                                <option value="">Select Bank </option>



                                            </select>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <br>
                            <br>
                            <div class="row">
                                <div class="col-xl-3 col-sm-6">
                                    <div class="box">
                                        <div class="form-check mb-2">
                                            <input type="radio" id="html" class="form-check-input"
                                                name="fav_language">
                                            <label for="html" style="font-size: 20px;">MANTRA</label>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-xl-3 col-sm-6">
                                    <div class="box">
                                        <div class="form-check">
                                            <input type="radio" id="a1" class="form-check-input"
                                                name="fav_language">
                                            <label for="a1" style="font-size: 20px;">STARTEK</label>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-xl-3 col-sm-6">
                                    <div class="box">
                                        <div class="form-check">
                                            <input type="radio" id="aa1" class="form-check-input"
                                                name="fav_language">
                                            <label for="aa1" style="font-size: 20px;">MORPHO</label>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-xl-3 col-sm-6">
                                    <div class="box">
                                        <div class="form-check">
                                            <input type="radio" id="aa2" class="form-check-input"
                                                name="fav_language">
                                            <label for="aa2" style="font-size: 20px;">SECUGEN</label>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <br>

                            <div class="row">
                                <div class="col-xl-3 col-sm-6">
                                    <div class="box">
                                        <div class="form-check mb-2">
                                            <input type="radio" id="html1" class="form-check-input"
                                                name="fav_language" style="transform: translateX(-9px)">
                                            <label for="html1"
                                                style="font-size: 20px; transform: translateX(-9px)">
                                                TATVIK</label>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-xl-3 col-sm-6">
                                    <div class="box">
                                        <div class="form-check">
                                            <input type="radio" id="a11" class="form-check-input"
                                                name="fav_language" style="transform: translateX(33px)">
                                            <label for="a11"
                                                style="font-size: 20px; transform: translateX(33px)">
                                                NEXTBIOMERTIC</label>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-xl-3 col-sm-6">
                                    <div class="box">
                                        <div class="form-check">
                                            <input type="radio" id="aa11" class="form-check-input"
                                                name="fav_language" style="transform: translateX(-25px)">
                                            <label for="aa11"
                                                style="font-size: 20px; transform: translateX(-25px)">
                                                IRIS</label>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-xl-3 col-sm-6">
                                    <div class="box">
                                        <div class="form-check">
                                            <input type="radio" id="aa22" class="form-check-input"
                                                name="fav_language" style="transform: translateX(7px)">
                                            <label for="aa22"
                                                style="font-size: 20px; transform: translateX(7px)">
                                                MANTRA
                                                            LI</label>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <br>

                            <br>
                            <div id="captureError3">
                                <b style="color: red;"></b>
                            </div>
                            <div class="col-6 col-md-6">
                                <div class="d-flex mt-4">
                                    <!-- <img src="https://images.techhive.com/images/article/2015/05/android-m-fingerprint-support-100587673-carousel.idge.jpg"
                                                        width="120px" height="50px" style="border-radius: 10px;" /> -->
                                    <img src="https://www.bing.com/th/id/OGC.b7389e994602e365e9b5bec84ee610e7?pid=1.7&rurl=https%3a%2f%2fwww.fingertec.com%2fbiometric_data_security%2fimages%2fICN_scan_fp.gif&ehk=m05AiEvRV0PpMrfDiHIV1pt%2bujJnnyDO79183Kv7gzk%3d"
                                        alt="" width="100px" style="cursor: pointer;" onclick="capture3()">


                                    <div class="flex-grow-1 overflow-hidden">
                                        <div class="mb-3">

                                            <button type="button" class="btn" data-bs-toggle="modal"
                                                data-bs-target=".bs-example-modal-lg"
                                                style="background-color: #405189; color: white; float: left; margin-left: 20px; width: 110px; height: 50px; font-size: 16px; margin-top: 10px;">
                                                Submit</button>

                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="form-check mb-3" style="margin-top: 20px; color: red;">
                                <input class="form-check-input" type="checkbox" id="formCheck6" checked
                                    disabled>
                                <label class="form-check-label" for="formCheck6">
                                    <b style="font-size: 16px;">I hereby provide my consent to CSP to use
                                                    my Aadhaar number/ VID
                                                    to complete AEPS transaction authorisation.</b>

                                </label>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- end card-body -->
            </div>
            <!-- end card -->
        </div>
        <!--end col-->
    </div>


</asp:Content>
