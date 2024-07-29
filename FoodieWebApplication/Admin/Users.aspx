﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="Users.aspx.cs" Inherits="FoodieWebApplication.Admin.Users" %>
<%@ Import Namespace="FoodieWebApplication" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

     <script>
        window.onload = function () {
            var seconds = 5;
            setTimeout(function () {
                document.getElementById("<%=lblMsg.ClientID%>").style.display = "none";
            }, seconds * 1000);
        }
    </script>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

     <div class="pcoded-inner-content pt-0">
        <div class=" align-self-end">
            <asp:Label ID="lblMsg" runat="server" Visible="false"></asp:Label>
        </div>
        <div class="main-body">
            <div class="page-wrapper">
                <div class="page-body">
                    <div class="row">
                        <div class="col-sm-12">
                            <div class="card">
                                <div class="card-header">
                                </div>
                                <div class="card-block">
                                    <div class="row">

                                        <div class="col-12 mobile-inputs">
                                            <h4 class="sub-title">User Lists</h4>
                                            <div class="card-block table-border-style">
                                                <div class="table-responsive">

                                                    <asp:Repeater ID="rUser" runat="server" OnItemCommand="rUser_ItemCommand" >
                                                        <HeaderTemplate>
                                                            <table class=" table table-hover data-table-export nowrap">
                                                                <thead>
                                                                    <tr>
                                                                        <th class="table-plus">SrNo</th>
                                                                        <th>Full Name</th>
                                                                        <th>Username</th>
                                                                        <th>Email</th>
                                                                        <th>Joined Date</th>
                                                                        <th class="datatable-nosort">Delete</th>
                                                                    </tr>
                                                                </thead>
                                                                <tbody>
                                                        </HeaderTemplate>
                                                        <ItemTemplate>
                                                            <tr>
                                                                <td class="table-plus"><%# Eval("SrNo") %> </td>
                                                                <td class="table-plus"><%# Eval("Name") %> </td>
                                                                <td class="table-plus"><%# Eval("UserName") %> </td>
                                                                <td class="table-plus"><%# Eval("Email") %> </td>
                                                                <td>
                                                                    <asp:Label runat="server" ID="lblDate" Text='<%# Eval("Date") %>'></asp:Label> 
                                                                </td>
                                                                <td>
                                                                    <asp:LinkButton ID="lbDelete" runat="server" Text="Delete" CssClass=" badge badge-danger" CommandArgument='<%# Eval("UserId") %>' CommandName="delete" OnClientClick="return confirm('Do You want to delete this User?');"> <i class=" ti-trash"></i></asp:LinkButton>

                                                                </td>
                                                            </tr>
                                                        </ItemTemplate>
                                                        <FooterTemplate>
                                                            </tbody>
                                                              </table>
                                                        </FooterTemplate>
                                                    </asp:Repeater>

                                                </div>
                                            </div>
                                        </div>

                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

</asp:Content>
