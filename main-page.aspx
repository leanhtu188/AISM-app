<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/AppMasterPage.master" CodeFile="main-page.aspx.cs" Inherits="main_page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link rel="stylesheet" href="Content/main-page.css" />
    <link rel="stylesheet" href="Content/custom.css" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <section>
        <div class="container tab-style2">
            <div class="row">
                <h2>Popular Trails</h2>
            </div>
            <div class="row">
                <div class="col-md-12 col-sm-12 col-xs-12">
                    <!-- start tab navigation -->
                    <ul class="nav nav-tabs alt-font text-uppercase text-small display-inherit text-center font-weight-600">
                        <li class="active"><a href="#tab_sec1" data-toggle="tab">Design & Craft</a></li>
                        <li><a href="#tab_sec2" data-toggle="tab">Development</a></li>
                        <li><a href="#tab_sec3" data-toggle="tab">Branding</a></li>
                        <li><a href="#tab_sec4" data-toggle="tab">Brainstorming</a></li>
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
                                <h6 class="alt-font font-weight-700 text-extra-dark-gray margin-20px-bottom text-uppercase">Design & Craft</h6>
                                <span class="text-extra-large text-extra-dark-gray margin-20px-bottom display-block">We use different types of massage for a variety of health related benefits purposes.</span>
                                <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. Lorem Ipsum is simply dummy text of the printing and typesetting industry.</p>
                                <a href="javascript:void(0);" class="btn btn-small btn-rounded btn-dark-gray">Explore services</a>
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
                                <h6 class="alt-font font-weight-700 text-extra-dark-gray margin-20px-bottom text-uppercase">Development</h6>
                                <span class="text-extra-large text-extra-dark-gray margin-20px-bottom display-block">We use different types of massage for a variety of health related benefits purposes.</span>
                                <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. Lorem Ipsum is simply dummy text of the printing and typesetting industry.</p>
                                <a href="javascript:void(0);" class="btn btn-small btn-rounded btn-dark-gray">Explore services</a>
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
                                <h6 class="alt-font font-weight-700 text-extra-dark-gray margin-20px-bottom text-uppercase">Branding</h6>
                                <span class="text-extra-large text-extra-dark-gray margin-20px-bottom display-block">We use different types of massage for a variety of health related benefits purposes.</span>
                                <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. Lorem Ipsum is simply dummy text of the printing and typesetting industry.</p>
                                <a href="javascript:void(0);" class="btn btn-small btn-rounded btn-dark-gray">Explore services</a>
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
                                <h6 class="alt-font font-weight-700 text-extra-dark-gray margin-20px-bottom text-uppercase">Brainstorming</h6>
                                <span class="text-extra-large text-extra-dark-gray margin-20px-bottom display-block">We use different types of massage for a variety of health related benefits purposes.</span>
                                <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. Lorem Ipsum is simply dummy text of the printing and typesetting industry.</p>
                                <a href="javascript:void(0);" class="btn btn-small btn-rounded btn-dark-gray">Explore services</a>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- end tab content -->
            </div>
        </div>
    </section>
    <section>
        <h2>Your Trails</h2>
    </section>
    <section>
        <div class="container">
            <div class="row text-center">
                <div class="col-md-12 col-xs-12 col-sm-12">
                    <button class="btn btn-defaul">Create new Trail</button>
                </div>
            </div>
        </div>
    </section>
</asp:Content>
