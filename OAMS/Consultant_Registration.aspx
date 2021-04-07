﻿<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Site1.Master" CodeBehind="Consultant_Registration.aspx.cs" Inherits="OAMS.Consultant_Registration" %>

<asp:Content ID="content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
 <div class="container-fluid col d-flex justify-content-center" >
      <div class="row">
         <div class="col-md-14">
            <div class="card">
               <div class="card-body">

                  <div class="row">
                     <div class="col">
                        
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <center>
                           <h4>Consultant Registration</h4>
                         </center>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <hr>
                     </div>
                  </div>
                   
                  <div class="row">
                     <div class="col-md-6">
                        <label>Full Name</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" placeholder="Full Name"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox2" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="Invalid Name Entered !" ControlToValidate="TextBox1" ValidationExpression="^[A-Z a-z]*$" ForeColor="Red"></asp:RegularExpressionValidator>
                            
                        </div>
                     </div>
                      
                       <div class="col-md-6">
                        <label>Email ID</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox3" runat="server" placeholder="Email ID" TextMode="Email"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox3" ErrorMessage="Required!" ForeColor="Red"></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox3" ErrorMessage="Invalid Email Entered" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ForeColor="Red"></asp:RegularExpressionValidator>
                        </div>
                     </div>

                  </div>
                  <div class="row">
                     <div class="col-md-6">
                        <label>Contact No</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server" placeholder="Contact No"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" ControlToValidate="TextBox2" ErrorMessage="Required!" ForeColor="Red"></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" ErrorMessage="Must be of 10 Digits !" ControlToValidate="TextBox2" ValidationExpression="[0-9]{10}" ForeColor="Red"></asp:RegularExpressionValidator>
                        </div>
                     </div>
                       
                    <div class="col-md-6">
                        <label>DOB</label>
                        <div class="form-group">
                           <asp:Textbox CssClass="form-control" ID="TextBox4" runat="server" placeholder="DOB" TextMode="Date" ControlToCompare="TextBox4"></asp:Textbox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox4" ErrorMessage="Required!" ForeColor="Red" ControlToCompare="TextBox4"></asp:RequiredFieldValidator>
                            <asp:CompareValidator ID="CompareValidator1" runat="server" errormessage="The date must be less than today" ControlToValidate="TextBox4" Operator="LessThan" ForeColor="Red" ValueToCompare="<%# DateTime.Today.ToShortDateString() %>"></asp:CompareValidator>
                        </div>
                     </div>
                    
                  </div>

                    <div class="row">
                     <div class="col-md-4">
                        <label>Specialization</label>
                        <div class="form-group">
                           <asp:ListBox runat="server" SelectionMode="Multiple" Width="250px" ID="ListBox1">
                               <asp:ListItem Text="Health care consulting"></asp:ListItem>
                               <asp:ListItem Text="Strategy consulting"></asp:ListItem>
                               <asp:ListItem Text="Process improvement"></asp:ListItem>
                               <asp:ListItem Text="Human resources consulting"></asp:ListItem>
                               <asp:ListItem Text="Financial management consulting"></asp:ListItem>
                               <asp:ListItem Text="Banking"></asp:ListItem>
                               <asp:ListItem Text="Manufacturing"></asp:ListItem>
                               <asp:ListItem Text="Information Techology"></asp:ListItem>
                               <asp:ListItem Text="Transportation"></asp:ListItem>
                               <asp:ListItem Text="Others"></asp:ListItem>
                            </asp:ListBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator15" runat="server" ControlToValidate="ListBox1" ErrorMessage="Required!" ForeColor="Red"></asp:RequiredFieldValidator>
                        </div>
                     </div>
                       
                     
                    <div class="col-md-4">
                        <label>Qualification</label>
                        <div class="form-group">
                           <asp:ListBox runat="server" SelectionMode="Multiple" Width="250px" ID="ListBox2">
                               <asp:ListItem Text="Business"></asp:ListItem>
                               <asp:ListItem Text="Economics"></asp:ListItem>
                               <asp:ListItem Text="Engineering"></asp:ListItem>
                               <asp:ListItem Text="Finance"></asp:ListItem>
                               <asp:ListItem Text="Mathematics"></asp:ListItem>
                               <asp:ListItem Text="Science"></asp:ListItem>
                               <asp:ListItem Text="Others"></asp:ListItem>
                            </asp:ListBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator16" runat="server" ControlToValidate="ListBox2" ErrorMessage="Required!" ForeColor="Red"></asp:RequiredFieldValidator>
                        </div>
                     </div>
                    
                         
                    <div class="col-md-4">
                        <label>Experience</label>
                        <div class="form-group">
                            <asp:DropDownList class="form-control" ID="DropDownList3" runat="server">
                              <asp:ListItem>Select</asp:ListItem>
                              <asp:ListItem>Less Than 1 Year</asp:ListItem>
                              <asp:ListItem>1 - 5 Years</asp:ListItem>
                              <asp:ListItem>5 - 10 Years</asp:ListItem>
                              <asp:ListItem>More Than 10 Years</asp:ListItem>
                           </asp:DropDownList>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator19" runat="server" ControlToValidate="ListBox2" ErrorMessage="Required!" ForeColor="Red"></asp:RequiredFieldValidator>
                        </div>
                     </div>
                    
                  </div>

                     <div class="row">
                     
                     <div class="col-md-6">
                        <label>Gender</label>
                        <div class="form-group">
                           <asp:DropDownList class="form-control" ID="DropDownList2" runat="server">
                              <asp:ListItem>Select</asp:ListItem>
                              <asp:ListItem>Male</asp:ListItem>
                              <asp:ListItem>Female</asp:ListItem>
                              <asp:ListItem>Others</asp:ListItem>
                           </asp:DropDownList>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="DropDownList2" ErrorMessage="Required!" ForeColor="Red" InitialValue="Select" ></asp:RequiredFieldValidator>
                        </div>
                     </div>
                    
                    <div class="col-lg-6">
                        <label>Address Line 1</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox7" runat="server" placeholder="Address" TextMode="MultiLine"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ControlToValidate="TextBox7" ErrorMessage="Required!" ForeColor="Red"></asp:RequiredFieldValidator>
                        </div>
                     </div>
                  </div>

                   <div class="row">
                     <div class="col-md-6">
                        <label>Address Line 2</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox5" runat="server" placeholder="Address" TextMode="MultiLine"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="TextBox5" ErrorMessage="Required!" ForeColor="Red"></asp:RequiredFieldValidator>
                        </div>
                     </div>
                       
                    <div class="col-md-6">
                        <label>Area</label>
                        <div class="form-group">
                           <asp:Textbox CssClass="form-control" ID="TextBox12" runat="server" placeholder="Area"></asp:Textbox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator14" runat="server" ControlToValidate="TextBox12" ErrorMessage="Required!" ForeColor="Red" ></asp:RequiredFieldValidator>
                        </div>
                     </div>
                    
                  </div>

                  <div class="row">
                       <div class="col-md-6">
                        <label>City</label>
                        <div class="form-group">
                           <asp:TextBox class="form-control" ID="TextBox6" runat="server" placeholder="City"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="TextBox6" ErrorMessage="Required!" ForeColor="Red"></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ErrorMessage="Invalid City Name Entered !" ControlToValidate="TextBox6" ValidationExpression="^[A-Za-z]*$" ForeColor="Red"></asp:RegularExpressionValidator>
                        </div>
                     </div>
                     <div class="col-md-6">
                        <label>State</label>
                        <div class="form-group">
                           <asp:DropDownList class="form-control" ID="DropDownList1" runat="server">
                              <asp:ListItem>Select</asp:ListItem>
                              <asp:ListItem Text="Andhra Pradesh" Value="Andhra Pradesh" />
                              <asp:ListItem Text="Arunachal Pradesh" Value="Arunachal Pradesh" />
                              <asp:ListItem Text="Assam" Value="Assam" />
                              <asp:ListItem Text="Bihar" Value="Bihar" />
                              <asp:ListItem Text="Chhattisgarh" Value="Chhattisgarh" />
                              <asp:ListItem Text="Rajasthan" Value="Rajasthan" />
                              <asp:ListItem Text="Goa" Value="Goa" />
                              <asp:ListItem Text="Gujarat" Value="Gujarat" />
                              <asp:ListItem Text="Haryana" Value="Haryana" />
                              <asp:ListItem Text="Himachal Pradesh" Value="Himachal Pradesh" />
                              <asp:ListItem Text="Jammu and Kashmir" Value="Jammu and Kashmir" />
                              <asp:ListItem Text="Jharkhand" Value="Jharkhand" />
                              <asp:ListItem Text="Karnataka" Value="Karnataka" />
                              <asp:ListItem Text="Kerala" Value="Kerala" />
                              <asp:ListItem Text="Madhya Pradesh" Value="Madhya Pradesh" />
                              <asp:ListItem Text="Maharashtra" Value="Maharashtra" />
                              <asp:ListItem Text="Manipur" Value="Manipur" />
                              <asp:ListItem Text="Meghalaya" Value="Meghalaya" />
                              <asp:ListItem Text="Mizoram" Value="Mizoram" />
                              <asp:ListItem Text="Nagaland" Value="Nagaland" />
                              <asp:ListItem Text="Odisha" Value="Odisha" />
                              <asp:ListItem Text="Punjab" Value="Punjab" />
                              <asp:ListItem Text="Rajasthan" Value="Rajasthan" />
                              <asp:ListItem Text="Sikkim" Value="Sikkim" />
                              <asp:ListItem Text="Tamil Nadu" Value="Tamil Nadu" />
                              <asp:ListItem Text="Telangana" Value="Telangana" />
                              <asp:ListItem Text="Tripura" Value="Tripura" />
                              <asp:ListItem Text="Uttar Pradesh" Value="Uttar Pradesh" />
                              <asp:ListItem Text="Uttarakhand" Value="Uttarakhand" />
                              <asp:ListItem Text="West Bengal" Value="West Bengal" />
                           </asp:DropDownList>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="DropDownList1" ErrorMessage="Required!" ForeColor="Red" InitialValue="Select" ></asp:RequiredFieldValidator>
                        </div>
                     </div>
                    
                    
                  </div>
                   <div class="row">
                       <div class="col-md-6">
                        <label>Landmark</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox11" runat="server" placeholder="Landmark" TextMode="SingleLine"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" ErrorMessage="Required!" ControlToValidate="TextBox11" ForeColor="Red"></asp:RequiredFieldValidator>
                        </div>
                     </div>
                      <div class="col-md-6">
                        <label>Pincode</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox8" runat="server" placeholder="Pincode"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ErrorMessage="Required!" ControlToValidate="TextBox8" ForeColor="Red"></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator6" runat="server" ErrorMessage="Invalid Pincode Entered !" ControlToValidate="TextBox8" ValidationExpression="[0-9]{6}" ForeColor="Red"></asp:RegularExpressionValidator>
                        </div>
                     </div>
                    
                  </div>

                   <div class="row">
                       <div class="col-md-6">
                        <label>PAN Card Number</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox13" runat="server" placeholder="PAN Card"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator17" runat="server" ErrorMessage="Required!" ControlToValidate="TextBox13" ForeColor="Red"></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator7" runat="server" ErrorMessage="Invalid PAN Card Number !" ControlToValidate="TextBox13" ValidationExpression="([A-Z]){5}([0-9]){4}([A-Z]){1}$" ForeColor="Red"></asp:RegularExpressionValidator>
                        </div>
                     </div>
                      <div class="col-md-6">
                        <label>GSTIN Number</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox14" runat="server" placeholder="GSTIN"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator18" runat="server" ErrorMessage="Required!" ControlToValidate="TextBox14" ForeColor="Red"></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ErrorMessage="Invalid GSTIN Number !" ControlToValidate="TextBox14" ValidationExpression="^[0-9]{2}[A-Z]{5}[0-9]{4}[A-Z]{1}[1-9A-Z]{1}Z[0-9A-Z]{1}$" ForeColor="Red"></asp:RegularExpressionValidator>
                        </div>
                     </div>
                    
                  </div>
                 
                  <div class="row">
                     <div class="col-md-6">
                        <label>Create Password</label>
                        <div class="form-group">
                           <asp:TextBox class="form-control" ID="TextBox9" runat="server" placeholder="Password" TextMode="Password"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="TextBox9" ErrorMessage="Required!" ForeColor="Red"></asp:RequiredFieldValidator>
                        </div>
                     </div>

                      <div class="col-md-6">
                        <label>Confirm Password</label>
                        <div class="form-group">
                           <asp:TextBox class="form-control" ID="TextBox10" runat="server" placeholder="Confirm Password"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="TextBox10" ErrorMessage="Required!" ForeColor="Red"></asp:RequiredFieldValidator>
                            <asp:CompareValidator ID="CompareValidator2" runat="server" errormessage="Password Mismatch !" ControlToValidate="TextBox10" ForeColor="Red" ControlToCompare="TextBox9"></asp:CompareValidator>
                        </div>
                     </div>
                  </div>
                   <br />
                  <div class="row">
                     <div class="col-2">
                           <div class="form-group">
                              <asp:Button class="btn btn-primary btn-block btn-lg" ID="Button1" runat="server" Text="Register" OnClick="Button1_Click"/>
                           </div>
                     </div>
                      <div class="col-2">
                           <div class="form-group">
                               <asp:Button class="btn btn-danger btn-block btn-lg" ID="Button4" runat="server" Text="Cancel"/>
                           </div>
                     </div>
                  </div>
               </div>
            </div>
           
         </div>
         
      </div>
   </div>
  <br /><br />
</asp:Content>
