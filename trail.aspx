<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/AppMasterPage.master" CodeFile="trail.aspx.cs" Inherits="trail" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link rel="stylesheet" href="Content/custom.css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <section style="padding-top:0px;">
        <div class="container">
            <div class="row">
                <div class="col-md-8 col-xs-12 col-sm-12">
                    <h4>Your new Trail</h4>
                    <p>Garden by the Bay - Tien Tien Hainanese Rice - Din Tai Fung - Nylon Coffee Roasters</p>
                </div>
                <div class="col-md-4 col-xs-12 col-sm-12 text-center">
                    <button class="btn btn-primary">Save Trail</button>
                </div>
            </div>
            <div class="row">
                <div class="col-md-8 col-sm-12 center-col">
                    <!-- start accordion -->
                    <div class="panel-group accordion-style1" id="accordion-design">
                        <!-- start accordion item -->
                        <div class="panel">
                            <div class="panel-heading">
                                <a data-toggle="collapse" data-parent="#accordion-design" href="#design1" class="collapsed" aria-expanded="false">
                                    <div class="panel-title font-weight-500 text-extra-dark-gray text-uppercase">What does royalty free mean?<span class="pull-right"><i class="ti-minus"></i></span></div>
                                </a>
                            </div>
                            <div id="design1" class="panel-collapse collapse in" aria-expanded="false" role="tablist">
                                <div class="panel-body">
                                    Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. 
                                   
                                </div>
                            </div>
                        </div>
                        <!-- end accordion item -->
                        <!-- start accordion item -->
                        <div class="panel">
                            <div class="panel-heading">
                                <a data-toggle="collapse" data-parent="#accordion-design" href="#design2" class="collapsed" aria-expanded="false">
                                    <div class="panel-title font-weight-500 text-extra-dark-gray text-uppercase">What do you mean by item and end product?<span class="pull-right"><i class="ti-plus"></i></span></div>
                                </a>
                            </div>
                            <div id="design2" class="panel-collapse collapse" aria-expanded="false" role="tablist">
                                <div class="panel-body">
                                    Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. 
                                   
                                </div>
                            </div>
                        </div>
                        <!-- end accordion item -->
                        <!-- start accordion item -->
                        <div class="panel">
                            <div class="panel-heading">
                                <a data-toggle="collapse" data-parent="#accordion-design" href="#design3" class="collapsed" aria-expanded="false">
                                    <div class="panel-title font-weight-500 text-extra-dark-gray text-uppercase">What are some examples of permitted end products?<span class="pull-right"><i class="ti-plus"></i></span></div>
                                </a>
                            </div>
                            <div id="design3" class="panel-collapse collapse" aria-expanded="false" role="tablist">
                                <div class="panel-body">
                                    Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. 
                                   
                                </div>
                            </div>
                        </div>
                        <!-- end accordion item -->
                        <!-- start accordion item -->
                        <div class="panel">
                            <div class="panel-heading">
                                <a data-toggle="collapse" data-parent="#accordion-design" href="#design4" class="collapsed" aria-expanded="false">
                                    <div class="panel-title font-weight-500 text-extra-dark-gray text-uppercase">Am i allowed to modify the item that i purchased?<span class="pull-right"><i class="ti-plus"></i></span></div>
                                </a>
                            </div>
                            <div id="design4" class="panel-collapse collapse" aria-expanded="false" role="tablist">
                                <div class="panel-body">
                                    Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. 
                                   
                                </div>
                            </div>
                        </div>
                        <!-- end accordion item -->
                        <!-- start accordion item -->
                        <div class="panel">
                            <div class="panel-heading">
                                <a data-toggle="collapse" data-parent="#accordion-design" href="#design5" class="collapsed" aria-expanded="false">
                                    <div class="panel-title font-weight-500 text-extra-dark-gray text-uppercase">I'm not sure if my use is covered. what should i do?<span class="pull-right"><i class="ti-plus"></i></span></div>
                                </a>
                            </div>
                            <div id="design5" class="panel-collapse collapse" aria-expanded="false" role="tablist">
                                <div class="panel-body">
                                    Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. 
                                   
                                </div>
                            </div>
                        </div>
                        <!-- end accordion item -->
                    </div>
                    <!-- end accordion -->
                </div>
            </div>
        </div>
    </section>
</asp:Content>
