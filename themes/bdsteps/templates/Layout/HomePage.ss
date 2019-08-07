<div id="main">
    <div class="row">
        <div class="col-md-10 col-md-offset-1">
            <img class="img-responsive" src="$ThemeDir/img/bdsteps_logo.png" width="362" height="148" alt="BDSteps Logo">
            <div id="slider" class="owl-carousel owl-theme">
                <% loop Sliders %>
                <div class="item"><a href="$SliderLink"><img src="$BannerImage.URL" width="850" height="250" alt=""></a></div>
                <% end_loop %>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col-md-10 col-md-offset-1">
            <div id="navigation">
            <% include Navigation %>
            </div>
        </div>
    </div>
    <div class="row">
        <div id="content" class="home">
            <div class="col-md-7 col-md-offset-1">
                <div id="main-content">
                    $Content
                </div>
            </div>
            <div class="col-md-3">
                <div id="sidebar">
                    <% if $Locale.RFC1766 = es-ES %>
                    <h4>Enlaces rápidos</h4>
                    <% else %>
                    <h4>Quick Links</h4>
                    <% end_if %>
                    <ul>
                        <% include QuickLinks %>
                    </ul>
                </div>
            </div>
        </div>
    </div>
    <footer class="home">
        <div class="row">
            <% include Footer %>
        </div>
    </footer>
</div>