<%@ Page Title="" Language="C#" MasterPageFile="~/Default.Master" AutoEventWireup="true" CodeBehind="home.aspx.cs" Inherits="e_Koop.web.home" %>
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
                             <li style="background-image: url('assets/img/slider/darwin-homepage-banner.png')">
                                 <div class="uk-container uk-container-center">
                                     <div class="slide_content_a" ng-app="cardDemo1">  
                                         <div layout="row" style="border:1px solid #0f3755;">
                                             <div flex="">
                                                 <md-content layout-padding>
                                                    <form name="SellerForm">
                                                      <div layout="row">
                                                        <md-input-container flex="">
                                                            <label>Name</label>
                                                            <input md-maxlength="30" required md-no-asterisk name="Sellername" ng-model="SellerForm.SName">
                                                            <div ng-messages="SellerForm.Sellername.$error">
                                                              <div ng-message="required">This is required.</div>
                                                              <div ng-message="md-maxlength">The description must be less than 30 characters long.</div>
                                                            </div>
                                                        </md-input-container></div>
                                                           <div layout="row">
                                                        <md-input-container flex="">
                                                          <label>Email Address</label>
                                                          <input required name="Email" ng-model="SellerForm.EmailAddress">
                                                          <div ng-messages="SellerForm.Email.$error">
                                                            <div ng-message="required">This is required.</div>
                                                          </div>
                                                        </md-input-container> 
                                                      </div>
                                                        <div layout="row">
                                                        <md-input-container flex="">
                                                            <label>Mobile No</label>
                                                            <input md-maxlength="30" required md-no-asterisk name="Mobile" ng-model="SellerForm.MobileNo">
                                                            <div ng-messages="SellerForm.Mobile.$error">
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
                                                         <div layout="row">
                                                              <a href="#" class="md-btn md-btn-large md-btn-danger">Register NOW!</a>
                                                         </div>
                                                    </form>
                                                </md-content>                                                  
                                             </div>
                                         </div>                                   
                                        
                                     </div>
                                 </div>
                             </li>
                         </ul>
                       <%--  <div class="slide_navigation">
                             <a href="#" class="uk-slidenav uk-slidenav-previous" data-uk-slideshow-item="previous"></a>
                             <a href="#" class="uk-slidenav uk-slidenav-next" data-uk-slideshow-item="next"></a>
                             <ul class="uk-dotnav uk-dotnav-contrast uk-position-bottom uk-flex-center">
                                 <li data-uk-slideshow-item="0"><a href="#"></a></li>
                                 <li data-uk-slideshow-item="1"><a href="#"></a></li>
                                 <li data-uk-slideshow-item="2"><a href="#"></a></li>
                             </ul>
                         </div>--%>
                     </div>
                 </section>


    <section class="section section_large" id="sect-features">
                    <div class="uk-container uk-container-center">
                        <div class="uk-grid">
                            <div class="uk-width-large-3-5 uk-container-center uk-text-center">
                                <h2 class="heading_b">
                                    Features
                                    <span class="sub-heading">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Architecto autem consectetur cupiditate, distinctio impedit quisquam rerum voluptas. Fugiat, repudiandae, sit.</span>
                                </h2>
                            </div>
                        </div>
                        <div class="uk-grid uk-grid-width-1-2 uk-grid-width-medium-1-3 uk-grid-width-large-1-5 animate" data-uk-scrollspy="{cls:'uk-animation-slide-bottom animated',target:'> *',delay:300,topoffset:-100}">
                            <div class="uk-margin-top">
                                <div class="uk-text-center uk-margin-bottom">
                                    <i class="material-icons icon_large icon_dark">&#xE263;</i>
                                </div>
                                <h3 class="heading_c uk-text-center">Heading</h3>
                                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Alias, odio.</p>
                            </div>
                            <div class="uk-margin-top">
                                <div class="uk-text-center uk-margin-bottom">
                                    <i class="material-icons icon_large icon_dark">&#xE85C;</i>
                                </div>
                                <h3 class="heading_c uk-text-center">Heading</h3>
                                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Alias, odio.</p>
                            </div>
                            <div class="uk-margin-top">
                                <div class="uk-text-center uk-margin-bottom">
                                    <i class="material-icons icon_large icon_dark">&#xE8DC;</i>
                                </div>
                                <h3 class="heading_c uk-text-center">Heading</h3>
                                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Alias, odio.</p>
                            </div>
                            <div class="uk-margin-top">
                                <div class="uk-text-center uk-margin-bottom">
                                    <i class="material-icons icon_large icon_dark md-color-red-500">&#xE3AF;</i>
                                </div>
                                <h3 class="heading_c uk-text-center">Heading</h3>
                                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Alias, odio.</p>
                            </div>
                            <div class="uk-margin-top">
                                <div class="uk-text-center uk-margin-bottom">
                                    <i class="material-icons icon_large icon_dark">&#xE6DF;</i>
                                </div>
                                <h3 class="heading_c uk-text-center">Heading</h3>
                                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Alias, odio.</p>
                            </div>
                        </div>
                    </div>
                </section>

      <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.5.5/angular.min.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.5.5/angular-animate.min.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.5.5/angular-aria.min.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.5.5/angular-messages.min.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/angular_material/1.1.1/angular-material.min.js"></script> 
    <script src="AngularJS/HomeScreen.js"></script>
</asp:Content>
