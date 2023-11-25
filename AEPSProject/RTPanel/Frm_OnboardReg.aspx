<%@ Page Title="Onboard Customer" Language="C#" MasterPageFile="~/Master/Retailer.Master" AutoEventWireup="true" CodeBehind="Frm_OnboardReg.aspx.cs" Inherits="AEPSProject.RTPanel.Frm_OnboardReg" %>

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
    <div class="col-lg-12">
        <div class="card overflow-hidden">
            <div class="row g-0">

                <div class="col-lg-6 m-auto">
                    <div class="p-lg-5 p-4">
                        <div class="text-center">
                            <h5 class="text-primary ">Customer Details</h5>
                            <asp:Label ID="lblMessage" runat="server" Visible="false"></asp:Label>
                        </div>

                        <div class="mt-4">
                            <div class="mb-3">
                                <label for="customer_details" class="form-label">Full Name</label>
                                <asp:TextBox ID="txtFullName" runat="server" class="form-control" placeholder="Enter First Name" autocomplete="off"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="CUSTtxtFullName" runat="server" ControlToValidate="txtFullName" ValidationGroup="ENTRYS" Display="Dynamic" ToolTip="Enter Customer Full Name" Text="&lt;img src=&quot;../Css/images/error.png&quot; /&gt;" Width="20px"></asp:RequiredFieldValidator>

                            </div>
                       
                            <div class="mb-3">
                                <label for="customer_details" class="form-label">Mobile No</label>
                                <asp:TextBox ID="txtmobile" runat="server" class="form-control" placeholder="Enter Mobile No" MaxLength="10" onkeypress="return NumberOnly()" autocomplete="off"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="CUSTtxtmobile" runat="server" ControlToValidate="txtmobile" ValidationGroup="ENTRYS" Display="Dynamic" ToolTip="Enter Mobile No" Text="&lt;img src=&quot;../Css/images/error.png&quot; /&gt;"></asp:RequiredFieldValidator>

                            </div>
                            <div class="mb-3">
                                <label for="customer_details" class="form-label">Adhar No</label>
                                <asp:TextBox ID="txtAdhar" runat="server" class="form-control" placeholder="Enter Adhar No" MaxLength="12" onkeypress="return NumberOnly()" autocomplete="off"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="CUSTtxtAdhar" runat="server" ControlToValidate="txtAdhar" ValidationGroup="ENTRYS" Display="Dynamic" ToolTip="Enter Adhar No" Text="&lt;img src=&quot;../Css/images/error.png&quot; /&gt;"></asp:RequiredFieldValidator>
                            </div>
                            <div class="mb-3">
                                <label for="customer_details" class="form-label">Email ID</label>
                                <asp:TextBox ID="txtEmailId" runat="server" class="form-control" placeholder="Enter Email ID" MaxLength="120" autocomplete="off"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator" runat="server" ControlToValidate="txtEmailID" ValidationGroup="ENTRYS" Display="Dynamic" ToolTip="Enter Adhar No" Text="&lt;img src=&quot;../Css/images/error.png&quot; /&gt;"></asp:RequiredFieldValidator>
                            </div>

                            <div class="mb-3">
                                <label for="customer_details" class="form-label">Merchant Firm Name</label>
                                <asp:TextBox ID="txtFirmName" runat="server" class="form-control" placeholder="Merchant Firm Name" autocomplete="off"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="CUSTtxtFirmName" runat="server" ControlToValidate="txtFirmName" ValidationGroup="ENTRYS" Display="Dynamic" ToolTip="Enter Merchangt Firm ID" Text="&lt;img src=&quot;../Css/images/error.png&quot; /&gt;"></asp:RequiredFieldValidator>

                            </div>


                            <div class="mt-4">
                                <asp:Button ID="btnCustSubmit" runat="server" class="btn btn-success w-100" Text="Submit" OnClick="btnCustSubmit_Click" ValidationGroup="ENTRYS" />
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
</asp:Content>
