<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/AppMasterPage.master" CodeFile="main-page.aspx.cs" Inherits="main_page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link rel="stylesheet" href="Content/main-page.css" />
    <link rel="stylesheet" href="Content/custom.css" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <section>
        <div class="container tab-style2">
            <div class="row">
                <div class="col-md-12 col-xs-12 col-sm-12">
                    <h2>Popular Trails</h2>
                </div>
            </div>
            <div class="row">
                <div class="col-md-12 col-sm-12 col-xs-12">
                    <!-- start tab navigation -->
                    <ul class="nav nav-tabs alt-font text-uppercase text-small display-inherit text-center font-weight-600">
                        <li class="active"><a href="#tab_sec1" data-toggle="tab">Food</a></li>
                        <li><a href="#tab_sec2" data-toggle="tab">History</a></li>
                        <li><a href="#tab_sec3" data-toggle="tab">Culture</a></li>
                        <li><a href="#tab_sec4" data-toggle="tab">Education</a></li>
                    </ul>
                    <!-- end tab navigation -->
                </div>
            </div>
            <div class="tab-content">
                <!-- start tab content -->
                <div class="tab-pane med-text fade in active" id="tab_sec1">
                    <div class="row equalize">
                        <div class="col-md-6 col-sm-6 col-xs-12 display-table xs-margin-30px-bottom">
                            <div class="display-table-cell vertical-align-middle">
                                <img src="http://placehold.it/1232x816" alt="" class="width-100" />
                            </div>
                        </div>
                        <div class="col-md-5 col-sm-6 col-xs-12 display-table col-md-offset-1">
                            <div class="display-table-cell vertical-align-middle">
                                <h6 class="alt-font font-weight-700 text-extra-dark-gray margin-20px-bottom text-uppercase">Food</h6>
                                <span class="text-extra-large text-extra-dark-gray margin-20px-bottom display-block">Explore the best of Chinatown</span>
                                <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. Lorem Ipsum is simply dummy text of the printing and typesetting industry.</p>
                                <a href="javascript:void(0);" class="btn btn-small btn-rounded btn-dark-gray">Try Trail</a>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- end tab content -->
                <!-- start tab content -->
                <div class="tab-pane fade in" id="tab_sec2">
                    <div class="row equalize">
                        <div class="col-md-6 col-sm-6 col-xs-12 display-table xs-margin-30px-bottom">
                            <div class="display-table-cell vertical-align-middle">
                                <img src="http://placehold.it/1232x816" alt="" class="width-100" />
                            </div>
                        </div>
                        <div class="col-md-5 col-sm-6 col-xs-12 display-table col-md-offset-1">
                            <div class="display-table-cell vertical-align-middle">
                                <h6 class="alt-font font-weight-700 text-extra-dark-gray margin-20px-bottom text-uppercase">History</h6>
                                <span class="text-extra-large text-extra-dark-gray margin-20px-bottom display-block">See the rich historical side of Singapore</span>
                                <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. Lorem Ipsum is simply dummy text of the printing and typesetting industry.</p>
                                <a href="javascript:void(0);" class="btn btn-small btn-rounded btn-dark-gray">Try Trail</a>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- end tab content -->
                <!-- start tab content -->
                <div class="tab-pane fade in" id="tab_sec3">
                    <div class="row equalize">
                        <div class="col-md-6 col-sm-6 col-xs-12 display-table  xs-margin-30px-bottom">
                            <div class="display-table-cell vertical-align-middle">
                                <img src="http://placehold.it/1232x816" alt="" class="width-100" />
                            </div>
                        </div>
                        <div class="col-md-5 col-sm-6 col-xs-12 display-table col-md-offset-1">
                            <div class="display-table-cell vertical-align-middle">
                                <h6 class="alt-font font-weight-700 text-extra-dark-gray margin-20px-bottom text-uppercase">Culture</h6>
                                <span class="text-extra-large text-extra-dark-gray margin-20px-bottom display-block">Take a look at the wild side of Singapore</span>
                                <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. Lorem Ipsum is simply dummy text of the printing and typesetting industry.</p>
                                <a href="javascript:void(0);" class="btn btn-small btn-rounded btn-dark-gray">Try Trail</a>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- end tab content -->
                <!-- start tab content -->
                <div class="tab-pane fade in" id="tab_sec4">
                    <div class="row equalize">
                        <div class="col-md-6 col-sm-6 col-xs-12 display-table  xs-margin-30px-bottom">
                            <div class="display-table-cell vertical-align-middle">
                                <img src="http://placehold.it/1232x816" alt="" />
                            </div>
                        </div>
                        <div class="col-md-5 col-sm-6 col-xs-12 display-table col-md-offset-1">
                            <div class="display-table-cell vertical-align-middle">
                                <h6 class="alt-font font-weight-700 text-extra-dark-gray margin-20px-bottom text-uppercase">Education</h6>
                                <span class="text-extra-large text-extra-dark-gray margin-20px-bottom display-block">State of the art, art of the state</span>
                                <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. Lorem Ipsum is simply dummy text of the printing and typesetting industry.</p>
                                <a href="javascript:void(0);" class="btn btn-small btn-rounded btn-dark-gray">Try Trail</a>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- end tab content -->
            </div>
        </div>
    </section>
    <section>
        <div class="container">
            <div class="row">
                <div class="col-md-12 col-sm-12 col-xs-12">
                    <h2>Your Trails</h2>
                </div>
            </div>
            <div class="row">
                <!-- start rotate box item -->
                <div class="col-md-4 col-sm-4 col-xs-12 team-block text-left feature-box-15 xs-margin-15px-bottom last-paragraph-no-margin">
                    <figure>
                        <div class="feature-box-content xs-width-100">
                            <div class="feature-box-image">
                                <img src="http://placehold.it/900x650" alt=""></div>
                            <div class="hover-content bg-black">
                                <div class="display-table height-100 width-100">
                                    <div class="vertical-align-middle display-table-cell padding-twelve-lr">
                                        <h6>My Food Trail</h6>
                                        <span class="text-white display-inline-block text-center">Chinatown - Outram Park - Marina Bay Sands</span>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </figure>
                </div>
                <!-- end rotate box item -->
                <!-- start rotate box item -->
                <div class="col-md-4 col-sm-4 col-xs-12 team-block text-left feature-box-15 xs-margin-15px-bottom last-paragraph-no-margin wow fadeInUp" data-wow-delay="0.2s">
                    <figure>
                        <div class="feature-box-content xs-width-100">
                            <div class="feature-box-image">
                                <img src="http://placehold.it/900x650" alt=""></div>
                            <div class="hover-content bg-black">
                                <div class="display-table height-100 width-100">
                                    <div class="vertical-align-middle display-table-cell padding-twelve-lr">
                                        <h6>School Visits</h6>
                                        <span class="text-white display-inline-block text-center">NUS - NTU - SUTD - SMU</span>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </figure>
                </div>
                <!-- end rotate box item -->
                <!-- start rotate box item -->
                <div class="col-md-4 col-sm-4 col-xs-12 team-block text-left feature-box-15 last-paragraph-no-margin wow fadeInUp" data-wow-delay="0.6s">
                    <figure>
                        <div class="feature-box-content xs-width-100">
                            <div class="feature-box-image">
                                <img src="http://placehold.it/900x650" alt=""></div>
                            <div class="hover-content bg-black">
                                <div class="display-table height-100 width-100">
                                    <div class="vertical-align-middle display-table-cell padding-twelve-lr">
                                        <h6>MATCHA RESTAURANTS</h6>
                                        <span class="text-white display-inline-block text-center">12 Orchard Road - B2/121 Joo Koon Junction</span>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </figure>
                </div>
                <!-- end rotate box item -->
            </div>
        </div>
    </section>
    <section>
        <div class="container">
            <div class="row text-center">
                <div class="col-md-12 col-xs-12 col-sm-12">
                    <asp:Button ID="btnCreate" runat="server" CssClass="btn btn-defaul" Text="Create new trail" OnClick="btnCreate_Click" />
                </div>
            </div>
        </div>
    </section>
</asp:Content>
