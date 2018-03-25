<%@ Page Title="" Language="C#" MasterPageFile="~/AppMasterPage.master" AutoEventWireup="true" CodeFile="Search.aspx.cs" Inherits="Search" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <section>
        <div class="container">
            <div class="col-md-12 col-xs-12 col-sm-12">
                <div id="mainSearch" style="height: 100%; overflow-y: auto">
                    <kbd>Start</kbd>
                    <%--<div class="form-group">
          <label for="search">Where do you want to go?</label>
          <input type="text" class="form-control" placeholder="Type here" id="search">
          <button type="button" class="btn btn-primary">Add Another Location!</button>
        </div>--%>
                    <button id="last" onclick="addLocation()" type="button" class="btn btn-primary">Add Another Location!</button>
                    <asp:Button type="button" runat="server" OnClick="route_click" CssClass="btn btn-primary" Text="Route!"></asp:Button>
                    <br />
                    <kbd>End</kbd>
                </div>
            </div>
        </div>
    </section>
    <script>

        function setStyle(obj, propertyObject) {// helper method
            var elem = obj;
            for (var property in propertyObject)
                elem.style[property] = propertyObject[property];
        }

        function createWhereDoYouGo() {
            //create javascript element
            var encaspsulatDIV = document.createElement("div");
            encaspsulatDIV.className = "form-group";
            encaspsulatDIV.id = "searchBarThing";
            var labelObj = document.createElement("label");
            labelObj.for = "search";
            labelObj.innerHTML = "Where do you want to go?";
            var textObj = document.createElement("input");
            textObj.type = "text";
            textObj.className = "form-control";
            textObj.placeholder = "Type here";
            textObj.id = "search";
            textObj.autocomplete = "off"
            textObj.addEventListener('input', function () { searchBarResults() }, this);
            var buttObj = document.createElement("button");
            //buttObj.type = "button";
            //buttObj.className = "btn btn-primary";
            //buttObj.innerHTML = "Add Another Location!";
            encaspsulatDIV.appendChild(labelObj);
            encaspsulatDIV.appendChild(textObj);
            //  encaspsulatDIV.appendChild(buttObj);
            return encaspsulatDIV;
        }
        var dateFromYelp;
        function init() {
            //Create first Where do you want to go object
            $("#last").before(createWhereDoYouGo());
            $.ajax({
                type: "GET",
                url: "https://api.yelp.com/v3/businesses/search?location=Singapore",
                headers: { 'Authorization': 'Bearer gKTxh7U1kqDa3HydGAHnv3jRDHyQdbwxP5avmCNu7gjposOD3nrEikOR6T3WK9mganamWPyuwXH0UovY8cDLBVYHjT2h9BWtPF4x4CFVkdXXn5tJtQvQjl4HduyvWnYx' },
                success: function (result) {
                    dateFromYelp = result.businesses;
                },
                error: function (result) {
                    //Yelp dieded 
                }
            });
        }
        init(); //create first search and get data from yelp

        function createTrailPoint(item) {
            var deletePoint = document.createElement("button");
            deletePoint.type = 'button';
            deletePoint.innerHTML = "<b style='color:white'>X</b>";
            deletePoint.className = "btn-danger";
            deletePoint.addEventListener('click', function () {

                $("#" + item.id).remove();

            }, this);
            $(item).append(deletePoint);
            return item;
        }
        function addLocation() {
            if ($("#search").length != 0)
                return;
            //remove the current search crap

            //add new search crap
            $("#last").before(createWhereDoYouGo());
        }

        

        var t = null;
        function searchBarResults() {
            //wait for 1 second before checking server for search results
            $('#searchres').remove();
            t != null ? clearTimeout(t) : null;
            if (!$("#search").val() === "" || !$("#search").val().trim().length == 0) {
                t = setTimeout(function () {
                    var positionBelowSearch = "" + ($("#search").offset().top - $(window).scrollTop() + 34) + "px";
                    var results = document.createElement("div");
                    results.id = "searchres";
                    //setstyle self created method to apply styles easily pure java
                    setStyle(results, { 'background': 'white', 'overflow-y': 'auto', 'left': '15px', 'top': positionBelowSearch, 'border': '1px solid black', 'height': '400px', 'width': '384px', 'position': 'absolute' });
                    for (var i = 0; i < dateFromYelp.length; i++) {
                        var currentItem = dateFromYelp[i];
                        var temp = document.createElement("div");
                        setStyle(temp, { 'width': '384px', 'height': '120px', 'display': 'flex','padding':'5px' });
                        var pic = document.createElement('img');
                        pic.src = currentItem.image_url;
                        setStyle(pic, { 'height': '100px' });
                        var name = document.createElement('h4');
                        name.innerHTML = currentItem.name.length > 20 ? jQuery.trim(currentItem.name).substring(0, 20)
                            .trim(this) + "..." : currentItem.name;
                        var rating = document.createElement('div');
                        rating.innerHTML = currentItem.rating + '/5';
                        $(temp).append(pic);
                        $(temp).append(name);
                        $(temp).append(rating);
                        temp.id = currentItem.id; 
                        temp.addEventListener('click', function (e) {
                            //add the element first

                            $("#last").before(createTrailPoint(e.currentTarget.cloneNode(true)));
                            //remove
                            $("#searchBarThing").remove();
                            $(results).remove();
                        }, this);
                        $(results).append(temp);
                    }
                    $("body").append(results);

                }, 500, this);
            }
        }

       


        console.log("I Ran!");
    </script>
</asp:Content>

