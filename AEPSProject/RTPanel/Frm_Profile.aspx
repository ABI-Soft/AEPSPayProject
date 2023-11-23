<%@ Page Title="" Language="C#" MasterPageFile="~/Master/Retailer.Master" AutoEventWireup="true" CodeBehind="Frm_Profile.aspx.cs" Inherits="AEPSProject.RTPanel.Frm_Profile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
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
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:HiddenField ID="HDNPKID" runat="server" />
    <asp:HiddenField ID="HDNRollFKID" runat="server" />
    <div class="row">
        <div class="col-xxl-12">
            <div class="profile-foreground position-relative">
                <div class="profile-wid-bg">
                    <img src="assets/images/profile-bg.jpg" alt="" class="profile-wid-img" />
                </div>
            </div>

            <div class="pt-4 mb-4 mb-lg-3 pb-lg-4">
                <div class="row g-4">
                    <div class="col-auto">
                        <div class="avatar-lg">
                            <img src="assets/images/users/avatar-1.jpg" alt="user-img" class="img-thumbnail rounded-circle" />
                        </div>
                    </div>
                    <!--end col-->
                    <div class="col">
                        <div class="p-2">
                            <h3 class="text-white mb-1"><asp:Label ID="lblname" runat="server"></asp:Label></h3>
                            <p class="text-white-75"><asp:Label ID="lblroll" runat="server"></asp:Label></p>
                            <div class="hstack text-white-50 gap-1">
                                <div class="me-2"><i class="ri-map-pin-user-line me-1 text-white-75 fs-16 align-middle"></i><asp:Label ID="lbladdresss" runat="server"></asp:Label></div>
                                <div>
                                    <i class="ri-building-line me-1 text-white-75 fs-16 align-middle">AEPS ID</i><asp:Label ID="lblloginID" runat="server"></asp:Label></div>
                                
                                <div>
                                    <i class="ri-building-line me-1 text-white-75 fs-16 align-middle"></i>Paynims Technology
                                </div>
                            </div>
                        </div>
                    </div>
                    <!--end col-->
                    <div class="col-12 col-lg-auto order-last order-lg-0">
                        <div class="row text text-white-50 text-center">
                            <div class="col-lg-6 col-4">
                                <div class="p-2">
                                    <h4 class="text-white mb-1">24.3K</h4>
                                    <p class="fs-14 mb-0">Followers</p>
                                </div>
                            </div>
                            <div class="col-lg-6 col-4">
                                <div class="p-2">
                                    <h4 class="text-white mb-1">1.3K</h4>
                                    <p class="fs-14 mb-0">Following</p>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!--end col-->

                </div>
                <!--end row-->
            </div>
            <div class="row">
                <div class="col-lg-12">
                    <div>
                        <div class="d-flex">
                            <!-- Nav tabs -->
                            <ul class="nav nav-pills animation-nav profile-nav gap-2 gap-lg-3 flex-grow-1" role="tablist">
                                <li class="nav-item">
                                    <a class="nav-link fs-14 active" data-bs-toggle="tab" href="#overview-tab" role="tab">
                                        <i class="ri-airplay-fill d-inline-block d-md-none"></i><span class="d-none d-md-inline-block">Profile Details</span>
                                    </a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link fs-14" data-bs-toggle="tab" href="#activities" role="tab">
                                        <i class="ri-list-unordered d-inline-block d-md-none"></i><span class="d-none d-md-inline-block">Kyc Details</span>
                                    </a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link fs-14" data-bs-toggle="tab" href="#projects" role="tab">
                                        <i class="ri-price-tag-line d-inline-block d-md-none"></i><span class="d-none d-md-inline-block">Password Manager</span>
                                    </a>
                                </li>
                              <%--  <li class="nav-item">
                                    <a class="nav-link fs-14" data-bs-toggle="tab" href="#documents" role="tab">
                                        <i class="ri-folder-4-line d-inline-block d-md-none"></i><span class="d-none d-md-inline-block">Pin Manager</span>
                                    </a>
                                </li>--%>
                                <li class="nav-item">
                                    <a class="nav-link fs-14" data-bs-toggle="tab" href="#bank" role="tab">
                                        <i class="ri-folder-4-line d-inline-block d-md-none"></i><span class="d-none d-md-inline-block">Bank Details</span>
                                    </a>
                                </li>
                              <%--  <li class="nav-item">
                                    <a class="nav-link fs-14" data-bs-toggle="tab" href="#rolemanager" role="tab">
                                        <i class="ri-folder-4-line d-inline-block d-md-none"></i><span class="d-none d-md-inline-block">Role  Manager</span>
                                    </a>
                                </li>--%>
                               <%-- <li class="nav-item">
                                    <a class="nav-link fs-14" data-bs-toggle="tab" href="#mapping" role="tab">
                                        <i class="ri-folder-4-line d-inline-block d-md-none"></i><span class="d-none d-md-inline-block">Mapping  Manager</span>
                                    </a>
                                </li>--%>
                            </ul>
                            <div class="flex-shrink-0">
                                <a href="../Default.aspx" class="btn btn-success"><i class="bx bx-log-out-circle" style="font-size: 20px;"></i>&nbsp;<b style="margin-top: -30px;">Log out </b></a>
                            </div>
                        </div>
                        <!-- Tab panes -->
                        <div class="tab-content pt-4 text-muted">
                            <div class="tab-pane active" id="overview-tab" role="tabpanel">
                                <div class="row">

                                    <!--end col-->
                                    <div class="col-xxl-12">
                                        <div class="card">
                                            <div class="card-body">
                                                <div class="modal-header" style="background-color: #405189; height: 60px">
                                                    <h5 class="modal-title" id="myLargeModalLabel"
                                                        style="color: white;">Personal Information</h5>

                                                </div>
                                                <div class="row">
                                                    <div class="col-6 col-md-4">
                                                        <div class="d-flex mt-4">

                                                            <div class="flex-grow-1 overflow-hidden">
                                                                <div class="mb-3">
                                                                    <label for="lastNameinput" class="form-label">
                                                                        Name
                                                                    </label>
                                                                    <asp:TextBox ID="lblNameinput" class="form-control" runat="server" Style="border: none; border-bottom: 1px solid #405189; border-radius: 0px;" placeholder="Enter your Name" autocomplete="off" Enabled="false" Width="517px"></asp:TextBox>

                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <!--end col-->
                                                    <div class="col-6 col-md-4">
                                                        <div class="d-flex mt-4">
                                                            <div class="flex-shrink-0 avatar-xs align-self-center me-3">
                                                            </div>
                                                            <div class="flex-grow-1 overflow-hidden">
                                                                <div class="mb-3">
                                                                    <label for="lastNameinput" class="form-label">
                                                                        Mobile No.
                                                                    </label>
                                                                    <asp:TextBox ID="txtmobile" class="form-control" runat="server" Style="border: none; border-bottom: 1px solid #405189; border-radius: 0px;" placeholder="Enter your Mobile" autocomplete="off" onkeypress="return NumberOnly()" Enabled="false" Width="517px"></asp:TextBox>


                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="col-6 col-md-4">
                                                        <div class="d-flex mt-4">
                                                            <div class="flex-shrink-0 avatar-xs align-self-center me-3">
                                                            </div>
                                                            <div class="flex-grow-1 overflow-hidden">
                                                                <div class="mb-3">
                                                                    <label for="lastNameinput" class="form-label">
                                                                        Email ID
                                                                    </label>
                                                                    <asp:TextBox ID="txtemail" class="form-control" runat="server" Style="border: none; border-bottom: 1px solid #405189; border-radius: 0px;" placeholder="Enter your Email" autocomplete="off"  Width="517px"></asp:TextBox>


                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                   <!--end col-->
                                                </div>
                                                <div class="row">
                                                    <div class="col-6 col-md-4">
                                                        <div class="d-flex mt-4">

                                                            <div class="flex-grow-1 overflow-hidden">
                                                                <div class="mb-3">
                                                                    <label for="lastNameinput" class="form-label">
                                                                        State Name
                                                                    </label>
                                                                    <asp:DropDownList ID="ddldiv" runat="server" class="form-control" Style="border: none; border-bottom: 1px solid #405189; border-radius: 0px;"  autocomplete="off" OnSelectedIndexChanged="ddldiv_SelectedIndexChanged" AutoPostBack="true"></asp:DropDownList>
                                                                    

                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <!--end col-->
                                                    <div class="col-6 col-md-4">
                                                        <div class="d-flex mt-4">
                                                            <div class="flex-shrink-0 avatar-xs align-self-center me-3">
                                                            </div>
                                                            <div class="flex-grow-1 overflow-hidden">
                                                                <div class="mb-3">
                                                                    <label for="lastNameinput" class="form-label">
                                                                        City Name
                                                                    </label>
                                                                    <asp:DropDownList ID="ddldist" runat="server" class="form-control" Style="border: none; border-bottom: 1px solid #405189; border-radius: 0px;"  autocomplete="off" ></asp:DropDownList>
                                                                   

                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="col-6 col-md-4">
                                                        <div class="d-flex mt-4">
                                                            <div class="flex-shrink-0 avatar-xs align-self-center me-3">
                                                            </div>
                                                            <div class="flex-grow-1 overflow-hidden">
                                                                <div class="mb-3">
                                                                    <label for="lastNameinput" class="form-label">
                                                                        Pin Code
                                                                    </label>
                                                                    <asp:TextBox ID="txtPincode" class="form-control" runat="server" Style="border: none; border-bottom: 1px solid #405189; border-radius: 0px;" placeholder="Enter your Pincode" MaxLength="6" autocomplete="off" onkeypress="return NumberOnly()"></asp:TextBox>


                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                   
                                                </div>

                                                <br>
                                                <div class="row">

                                                    <div class="col-12 col-md-12">
                                                        <div class="mb-3">
                                                            <label for="lastNameinput" class="form-label">
                                                                Address
                                                            </label>
                                                            <asp:TextBox ID="txtAddress" class="form-control" runat="server" Style="border: none; border-bottom: 1px solid #405189; border-radius: 0px;" placeholder="Enter your Address" TextMode="MultiLine" autocomplete="off"></asp:TextBox>



                                                        </div>
                                                    </div>
                                                    <!--end col-->
                                                </div>
                                                <hr>
                                              
                                                   <asp:Button ID="btnprofle" runat="server"  class="btn" style="background-color: #405189; color: white; float: right;" OnClick="btnprofle_Click"  Text="Update Profile"/>
                                                <!--end row-->
                                            </div>
                                            <!--end card-body-->
                                        </div>
                                        <!-- end card -->




                                    </div>
                                    <!--end col-->
                                </div>
                                <!--end row-->
                            </div>
                            <div class="tab-pane fade" id="activities" role="tabpanel">
                                <div class="card">
                                    <div class="card-body">
                                        <div class="modal-header" style="background-color: #405189; height: 60px">
                                            <h5 class="modal-title" style="color: white;">Kyc Data</h5>

                                        </div>
                                        <div class="row">
                                            <div class="col-6 col-md-4">
                                                <div class="d-flex mt-4">

                                                    <div class="flex-grow-1 overflow-hidden">
                                                        <div class="mb-3">
                                                            <label for="lastNameinput" class="form-label">
                                                                Shop Name
                                                            </label>
                                                              <asp:TextBox ID="txtFrimName" class="form-control" runat="server" Style="border: none; border-bottom: 1px solid #405189; border-radius: 0px;" placeholder="Enter Shop Name"  autocomplete="off"></asp:TextBox>

                                                          
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <!--end col-->
                                            <div class="col-6 col-md-4">
                                                <div class="d-flex mt-4">
                                                    <div class="flex-shrink-0 avatar-xs align-self-center me-3">
                                                    </div>
                                                    <div class="flex-grow-1 overflow-hidden">
                                                        <div class="mb-3">
                                                            <label for="lastNameinput" class="form-label">
                                                                Gst Number
                                                            </label>
                                                             <asp:TextBox ID="txtgstno" class="form-control" runat="server" Style="border: none; border-bottom: 1px solid #405189; border-radius: 0px;" placeholder="Enter Gst Number"  autocomplete="off" MaxLength="16"></asp:TextBox>

                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-6 col-md-4">
                                                <div class="d-flex mt-4">
                                                    <div class="flex-shrink-0 avatar-xs align-self-center me-3">
                                                    </div>
                                                    <div class="flex-grow-1 overflow-hidden">
                                                        <div class="mb-3">
                                                            <label for="lastNameinput" class="form-label">
                                                                Pan Card Number
                                                            </label>
                                                          <asp:TextBox ID="txtpanno" class="form-control" runat="server" Style="border: none; border-bottom: 1px solid #405189; border-radius: 0px;" placeholder="Enter Pan Card Number"  autocomplete="off" MaxLength="10"></asp:TextBox>

                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <!--end col-->
                                        </div>
                                        <div class="row">
                                            <div class="col-6 col-md-4">
                                                <div class="d-flex mt-4">

                                                    <div class="flex-grow-1 overflow-hidden">
                                                        <div class="mb-3">
                                                            <label for="lastNameinput" class="form-label">
                                                                Adhaar Card Number
                                                            </label>
                                                           <asp:TextBox ID="txtadharno" class="form-control" runat="server" Style="border: none; border-bottom: 1px solid #405189; border-radius: 0px;" placeholder="Enter Adhaar Card Number" MaxLength="12" autocomplete="off" onkeypress="return NumberOnly()"></asp:TextBox>

                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <!--end col-->


                                            <!--end col-->
                                        </div>

                                        <br>

                                        <hr>
                                         <asp:Button ID="btnkyc" runat="server"  class="btn" style="background-color: #405189; color: white; float: right;" OnClick="btnkyc_Click"  Text="Update KYC"/>
                                       

                                        <!--end row-->
                                    </div>
                                    <!--end card-body-->
                                </div>
                                <!--end card-->
                            </div>
                            <!--end tab-pane-->
                            <div class="tab-pane fade" id="projects" role="tabpanel">
                                <div class="card">
                                    <div class="card-body">
                                        <div class="modal-header" style="background-color: #405189; height: 60px">
                                            <h5 class="modal-title" style="color: white;">Password Reset</h5>

                                        </div>
                                        <div class="row">
                                            <div class="col-6 col-md-4">
                                                <div class="d-flex mt-4">

                                                    <div class="flex-grow-1 overflow-hidden">
                                                        <div class="mb-3">
                                                            <label for="lastNameinput" class="form-label">
                                                                New Password
                                                            </label>
                                                            <asp:TextBox ID="txtNewPass" class="form-control" runat="server" Style="border: none; border-bottom: 1px solid #405189; border-radius: 0px;" placeholder="Enter your New Password"  autocomplete="off" TextMode="Password" ></asp:TextBox>

                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                                <div class="col-6 col-md-4">
                                                <div class="d-flex mt-4">
                                                    <div class="flex-shrink-0 avatar-xs align-self-center me-3">
                                                    </div>
                                                    <div class="flex-grow-1 overflow-hidden">
                                                        <div class="mb-3">
                                                            <label for="lastNameinput" class="form-label">
                                                                Confirm Password
                                                            </label>
                                                             <asp:TextBox ID="txtcPassword" class="form-control" runat="server" Style="border: none; border-bottom: 1px solid #405189; border-radius: 0px;" placeholder="Enter Cinfirm Password"  autocomplete="off"></asp:TextBox>

                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <!--end col-->


                                        </div>


                                        <br>

                                        <hr>
                                       <asp:Button ID="btnpassword" runat="server"  class="btn"
                                                    style="background-color: #405189; color: white; float: right;" OnClick="btnpassword_Click"  Text="Change Password"/>

                                        <!--end row-->
                                    </div>
                                    <!--end card-body-->
                                </div>
                                <!--end card-->
                            </div>
                            <!--end tab-pane-->
                            <div class="tab-pane fade" id="documents" role="tabpanel">
                                <div class="card">
                                    <div class="card-body">
                                        <div class="modal-header" style="background-color: #405189; height: 60px">
                                            <h5 class="modal-title" id="myLargeModalLabel"
                                                style="color: white;">Pin Reset</h5>

                                        </div>
                                        <div class="row">
                                            <div class="col-6 col-md-4">
                                                <div class="d-flex mt-4">

                                                    <div class="flex-grow-1 overflow-hidden">
                                                        <div class="mb-3">
                                                            <label for="lastNameinput" class="form-label">
                                                                New Pin
                                                            </label>
                                                            <input type="text" class="form-control" placeholder="Enter your New Pin" id="lastNameinput"
                                                                style="border: none; border-bottom: 1px solid #405189; border-radius: 0px;">
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <!--end col-->
                                            <div class="col-6 col-md-4">
                                                <div class="d-flex mt-4">
                                                    <div class="flex-shrink-0 avatar-xs align-self-center me-3">
                                                    </div>
                                                    <div class="flex-grow-1 overflow-hidden">
                                                        <div class="mb-3">
                                                            <label for="lastNameinput" class="form-label">
                                                                Confirmed Pin
                                                            </label>
                                                            <input type="number" class="form-control" placeholder="Enter your Confirmed Pin" id="lastNameinput"
                                                                style="border: none; border-bottom: 1px solid #405189; border-radius: 0px;">
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-6 col-md-4">
                                                <div class="d-flex mt-4">
                                                    <div class="flex-shrink-0 avatar-xs align-self-center me-3">
                                                    </div>
                                                    <div class="flex-grow-1 overflow-hidden">
                                                        <div class="mb-3">
                                                            <label for="lastNameinput" class="form-label">
                                                                Otp
                                                            </label>
                                                            <input type="text" class="form-control" placeholder="Enter your Otp" id="lastNameinput"
                                                                style="border: none; border-bottom: 1px solid #405189; border-radius: 0px;">
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <!--end col-->
                                        </div>

                                        <br>

                                        <hr>
                                        <asp:Button ID="btnpin" runat="server"  class="btn" style="background-color: #405189; color: white; float: right;" OnClick="btnpin_Click"  Text="Chnage Pin"/>
                                        

                                        <!--end row-->
                                    </div>
                                </div>
                            </div>




                            <div class="tab-pane fade" id="bank" role="tabpanel">
                                <div class="card">
                                    <div class="card-body">
                                        <div class="modal-header" style="background-color: #405189; height: 60px">
                                            <h5 class="modal-title" id="myLargeModalLabel"
                                                style="color: white;">Bank Details</h5>

                                        </div>
                                        <div class="row">
                                             <div class="col-6 col-md-4">
                                                <div class="d-flex mt-4">

                                                    <div class="flex-grow-1 overflow-hidden">
                                                        <div class="mb-3">
                                                            <label for="lastNameinput" class="form-label">
                                                                Account Holder Name
                                                            </label>
                                                           <asp:TextBox ID="txtacholername" class="form-control" runat="server" Style="border: none; border-bottom: 1px solid #405189; border-radius: 0px;" placeholder="Enter Account Holder Name"  autocomplete="off"></asp:TextBox>

                                                        </div>
                                                    </div>
                                                </div>
                                            </div>

                                            <div class="col-6 col-md-4">
                                                <div class="d-flex mt-4">

                                                    <div class="flex-grow-1 overflow-hidden">
                                                        <div class="mb-3">
                                                            <label for="lastNameinput" class="form-label">
                                                                Account Number
                                                            </label>
                                                            <asp:TextBox ID="txtAccountNumber" class="form-control" runat="server" Style="border: none; border-bottom: 1px solid #405189; border-radius: 0px;" placeholder="Enter Account Number" autocomplete="off"></asp:TextBox>

                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <!--end col-->
                                            <div class="col-6 col-md-4">
                                                <div class="d-flex mt-4">
                                                    <div class="flex-shrink-0 avatar-xs align-self-center me-3">
                                                    </div>
                                                    <div class="flex-grow-1 overflow-hidden">
                                                        <div class="mb-3">
                                                            <label for="lastNameinput" class="form-label">
                                                               Select Bank Name
                                                            </label>
                                                            <asp:DropDownList ID="ddlbank" runat="server" class="form-control" Style="border: none; border-bottom: 1px solid #405189; border-radius: 0px;"  autocomplete="off" ></asp:DropDownList>
                                                                   
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-6 col-md-4">
                                                <div class="d-flex mt-4">
                                                    <div class="flex-shrink-0 avatar-xs align-self-center me-3">
                                                    </div>
                                                    <div class="flex-grow-1 overflow-hidden">
                                                        <div class="mb-3">
                                                            <label for="lastNameinput" class="form-label">
                                                                Ifsc Code
                                                            </label>
                                                          <asp:TextBox ID="txtifsc" class="form-control" runat="server" Style="border: none; border-bottom: 1px solid #405189; border-radius: 0px;" placeholder="Enter Ifsc Code" autocomplete="off"></asp:TextBox>
  
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <!--end col-->
                                        </div>

                                        <br>

                                        <hr>
                                       <asp:Button ID="btnBank" runat="server"  class="btn" style="background-color: #405189; color: white; float: right;" OnClick="btnBank_Click"  Text="Chnage Bank Details"/>
                                        

                                        <!--end row-->
                                    </div>
                                </div>
                            </div>


                            <%--      <div class="tab-pane fade" id="rolemanager" role="tabpanel">
                                        <div class="card">
                                            <div class="card-body">
                                                <div class="modal-header" style="background-color:#405189;height: 60px">
                                                    <h5 class="modal-title" id="myLargeModalLabel" style="color: white;">Role Manager</h5
                                                   
                                                </div>
                                                <div class="row">
                                                    <div class="col-6 col-md-4">
                                                        <div class="d-flex mt-4">
                                                           
                                                            <div class="flex-grow-1 overflow-hidden">
                                                                <div class="mb-3">
                                                                    <label for="firstNameinput" class="form-label">Member Role</label>
                                                                    <select class="form-select sl" aria-label=".form-select-lg example"
                                                                    style="width: 100%;">
                                                                    <option value="">Select Role</option>
                                                                    <option value="percent">Master Distributor</option>
                                                                    <option value="flat">Distributor</option>
                                                                    <option value="flat">Retailer</option>
                                                                    <option value="flat">Admin</option>
                                                                    <option value="flat">MIS</option>
                                                                    <option value="flat">Sub Admin</option>
                                                                
                                                                </select>
                                                                </div>

                                                           </div>
                                                        </div>
                                                    </div>
                                                    <!--end col-->
                                                   
                                                   
                                                </div>
                                               

<br>
                                                
                                                <hr>
                                                <button type="button" class="btn"
                                style="background-color: #405189;color: white;float: right;">CHANGE</button>

                                                <!--end row-->
                                            </div>
                                            <!--end card-body-->
                                        </div>
                                        <!--end card-->
                                    </div>

                                    <div class="tab-pane fade" id="mapping" role="tabpanel">
                                        <div class="card">
                                            <div class="card-body">
                                                <div class="modal-header" style="background-color:#405189;height: 60px">
                                                    <h5 class="modal-title" id="myLargeModalLabel"
                                                        style="color: white;">Change Mapping</h5>
                                                   
                                                </div>
                                                <div class="row">
                                                    <div class="col-6 col-md-4">
                                                        <div class="d-flex mt-4">
                                                           
                                                            <div class="flex-grow-1 overflow-hidden">
                                                                <div class="mb-3">
                                                                    <label for="firstNameinput" class="form-label">Parent Member</label>
                                                                    <select class="form-select sl" aria-label=".form-select-lg example"
                                                                    style="width: 100%;">
                                                                    <option value="">Select Member</option>
                                                                    <option value="1">Admin (6307060920) (Super Admin)</option>
                                                                    <option value="40">Dinesh Gosvami (6398401230) (Master Distributor)</option>
                                                                    <option value="46">OJASAV SHARMA (9528163551) (Distributor)</option>
                                                                    <option value="48">Mohd Wasif (8979929899) (Master Distributor)</option>
                                                                    <option value="49">DINESH (6396211522) (Distributor)</option>
                                                                    <option value="57">Santosh Prasad (9122008712) (Distributor)</option>
                                                                    <option value="62">RAVI KUMAR SHARMA (7417304060) (Distributor)</option>
                                                                    <option value="77">Subham (7979912161) (MIS)</option>
                                                                
                                                                </select>
                                                                </div>

                                                           </div>
                                                        </div>
                                                    </div>
                                                    <!--end col-->
                                                   
                                                   
                                                </div>
                                               

<br>
                                                
                                                <hr>
                                                <button type="button" class="btn"
                                style="background-color: #405189;color: white;float: right;">CHANGE</button>

                                                <!--end row-->
                                            </div>
                                            <!--end card-body-->
                                        </div>
                                        <!--end card-->
                                    </div>--%>

                            <!--end tab-pane-->
                        </div>
                        <!--end tab-content-->
                    </div>
                </div>
                <!--end col-->
            </div>
        </div>

    </div>
</asp:Content>
