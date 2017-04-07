<%@ Page Title="" Language="C#" MasterPageFile="~/Default.Master" AutoEventWireup="true" CodeBehind="dashboard.aspx.cs" Inherits="e_Koop.web.Seller.dashboard" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <link rel="stylesheet" href="http://ajax.googleapis.com/ajax/libs/angular_material/1.1.0/angular-material.min.css">
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet" />
    <style>
        md-input-container:not(.md-input-invalid).md-input-has-value label {
            color: rgb(33, 150, 243);
        }
     
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section class="banner" id="sect-overview">
                     <div data-uk-slideshow="{animation: 'swipe'}" data-uk-parallax="{yp: '25', velocity: '0.4'}">
                         <ul class="uk-slideshow">
                             <li style="background-image: url('/assets/img/slider/darwin-homepage-banner.png')">
                                 <div class="uk-container uk-container-center">
                                     <div class="slide_content_a" ng-app="dashboard" ng-controller="dashboardCtrl">  
                                         <div layout="row" style="border:1px solid #0f3755;">
                                             <div flex="">
                                                 <md-content layout-padding>
                                                    <form name="SellerForm">
                                                      <div layout="row">
                                                        <md-input-container flex="">
                                                            <label>PinCode</label>
                                                            <input md-maxlength="30" ng-change="CheckPin()" required md-no-asterisk name="PinCode" ng-model="SellerForm.PinNo">
                                                            <div ng-messages="SellerForm.PinCode.$error">
                                                              <div ng-message="required">This is required.</div>
                                                              <div ng-message="md-maxlength">The description must be less than 30 characters long.</div>
                                                            </div>
                                                        </md-input-container>
                                     
                                                      </div>
                                                         <div layout="row" ng-show="loadingListData">
                                                         <div flex>
                                                            
                                                             <div layout="row" layout-sm="column" layout-align="space-around">
                                                             <md-progress-circular md-mode="indeterminate"></md-progress-circular>
                                                            </div>
                                                             
                                                         </div>

                                                     </div>
                                                            <div ng-show="!PinAdd">
                                                          <div layout="row">
                                                        <md-input-container flex="">
                                                          <label>Address</label>
                                                          <input required name="Address1" ng-model="SellerForm.Address">
                                                          <div ng-messages="SellerForm.Address1.$error">
                                                            <div ng-message="required">This is required.</div>
                                                          </div>
                                                        </md-input-container> 
                                                      </div>
                                                     

                                                          <div layout="row">
                                                        <md-input-container flex="">
                                                            <label>Address 2</label>
                                                            <input md-maxlength="30" required md-no-asterisk name="Address2" ng-model="SellerForm.Address3">
                                                            <div ng-messages="SellerForm.Address2.$error">
                                                              <div ng-message="required">This is required.</div>
                                                              <div ng-message="md-maxlength">The description must be less than 30 characters long.</div>
                                                            </div>
                                                        </md-input-container></div>
                                                          <div layout="row">
                                                        <md-input-container flex="">
                                                          <label>Password</label>
                                                          <input required name="SPassword" ng-model="SellerForm.Password" type="password">
                                                          <div ng-messages="SellerForm.SPassword.$error">
                                                            <div ng-message="required">This is required.</div>
                                                          </div>
                                                        </md-input-container> 
                                                      </div>
                                                            </div>
                                                         <div layout="row">
                                                              <a href="#" class="md-btn md-btn-large md-btn-danger">Submit NOW!</a>
                                                         </div>
                                                    </form>
                                                </md-content>                                                  
                                             </div>
                                         </div>                                   
                                        
                                     </div>
                                 </div>
                             </li>
                         </ul>

                     </div>
                 </section>


    <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.5.5/angular.min.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.5.5/angular-animate.min.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.5.5/angular-aria.min.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.5.5/angular-messages.min.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/angular_material/1.1.1/angular-material.min.js"></script> 
    <script src="../AngularJS/ProfileManage.js"></script>
</asp:Content>
