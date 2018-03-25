<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/AppMasterPage.master" CodeFile="trail.aspx.cs" Inherits="trail" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link rel="stylesheet" href="Content/custom.css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <section style="padding-top: 0px;">
        <div class="container">
            <div class="row">
                <div class="col-md-8 col-xs-12 col-sm-12">
                    <h4>Your new Trail</h4>
                    <p>Garden by the Bay - Tian Tian Hainanese Rice - Nylon Coffee Roasters - Din Tai Fung </p>
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
                                    <div class="panel-title font-weight-500 text-extra-dark-gray text-uppercase">Garden by the Bay - Tian Tian Hainese Rice<span class="pull-right"><i class="ti-minus"></i></span></div>
                                </a>
                            </div>
                            <div id="design1" class="panel-collapse collapse in" aria-expanded="false" role="tablist">
                                <div class="panel-body">
                                    <div class="row">
                                        <div class="col-md-12 col-xs-12 col-sm-12">
                                            <iframe style="width: 100%; height: 600px"
                                                src="https://www.google.com/maps/embed/v1/directions?key=AIzaSyCWFv7wMvLk4V8R1Ub8of0vVH4vinAM8v4&origin=Marina+Bay+Sands&destination=Tian+Tian+Hainanese+Rice&mode=walking"></iframe>
                                        </div>
                                        <div class="text-center col-md-6 col-xs-12 col-sm-12">
                                            <h6>Footfall</h6>
                                            <%if (haineseFootfall > 300)
                                                { %>
                                            <p style="color: red; font-weight: bolder"><%=haineseFootfall %> (Crowded)</p>
                                            <%}
                                                else
                                                { %>

                                            <p><%=haineseFootfall %> (Not Crowded)</p>
                                            <%} %>
                                        </div>
                                        <div class="text-center col-md-6 col-xs-12 col-sm-12">
                                            <h6>Weather</h6>
                                            <p><%=kallangWeather %></p>
                                        </div>
                                    </div>

                                </div>
                            </div>
                        </div>
                        <!-- end accordion item -->
                        <!-- start accordion item -->
                        <div class="panel">
                            <div class="panel-heading">
                                <a data-toggle="collapse" data-parent="#accordion-design" href="#design2" class="collapsed" aria-expanded="false">
                                    <div class="panel-title font-weight-500 text-extra-dark-gray text-uppercase">Tian Tian Hainanese Rice - Nylon Coffee Roasters<span class="pull-right"><i class="ti-plus"></i></span></div>
                                </a>
                            </div>
                            <div id="design2" class="panel-collapse collapse" aria-expanded="false" role="tablist">
                                <div class="panel-body">
                                    <div class="row">
                                        <div class="col-md-12 col-xs-12 col-sm-12">
                                            <iframe style="width: 100%; height: 600px"
                                                src="https://www.google.com/maps/embed/v1/directions?key=AIzaSyCWFv7wMvLk4V8R1Ub8of0vVH4vinAM8v4&origin=Tian+Tian+Hainanese+Rice&destination=Nylon+Coffee+Roasters&mode=walking"></iframe>
                                        </div>
                                        <div class="text-center col-md-6 col-xs-12 col-sm-12">
                                            <h6>Footfall</h6>
                                            <%if (nylonCoffeeFootfall > 300)
                                                { %>
                                            <p style="font-weight: bolder; color: red"><%=nylonCoffeeFootfall %> (Crowded)</p>
                                            <%}
                                            else
                                            { %>
                                            <p><%=nylonCoffeeFootfall %> (Not Crowded)</p>
                                            <%} %>
                                        </div>
                                        <div class="text-center col-md-6 col-xs-12 col-sm-12">
                                            <h6>Weather</h6>
                                            <p><%=novenaWeather %></p>
                                        </div>
                                    </div>

                                </div>
                            </div>
                        </div>
                        <!-- end accordion item -->
                        <!-- start accordion item -->
                        <div class="panel">
                            <div class="panel-heading">
                                <a data-toggle="collapse" data-parent="#accordion-design" href="#design3" class="collapsed" aria-expanded="false">
                                    <div class="panel-title font-weight-500 text-extra-dark-gray text-uppercase">Nylon Coffee Roasters - Din Tai Fung<span class="pull-right"><i class="ti-plus"></i></span></div>
                                </a>
                            </div>
                            <div id="design3" class="panel-collapse collapse" aria-expanded="false" role="tablist">
                                <div class="panel-body">
                                    <div class="row">
                                        <div class="col-md-12 col-xs-12 col-sm-12">
                                            <iframe style="width: 100%; height: 600px"
                                                src="https://www.google.com/maps/embed/v1/directions?key=AIzaSyCWFv7wMvLk4V8R1Ub8of0vVH4vinAM8v4&origin=Nylon+Coffee+Roasters&destination=Din+Tai+Fung&mode=walking"></iframe>
                                        </div>
                                        <div class="text-center col-md-6 col-xs-12 col-sm-12">
                                            <h6>Footfall</h6>
                                            <%if (dinTaiFootfall > 300)
                                                { %>
                                            <p style="font-weight: bolder; color: red"><%=dinTaiFootfall %> (Crowded)</p>
                                            <%}
                                            else
                                            { %>
                                            <p><%=dinTaiFootfall %> (Not Crowded)</p>
                                            <%} %>
                                        </div>
                                        <div class="text-center col-md-6 col-xs-12 col-sm-12">
                                            <h6>Weather</h6>
                                            <p><%=tanglinWeather %></p>
                                        </div>
                                    </div>

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
