<div id="main">
    <div class="row">
        <div class="col-md-10 col-md-offset-1">
            <% if $Locale.RFC1766 = es-ES %>
            <a href="/home-es-es"><img class="img-responsive" src="$ThemeDir/img/bdsteps_logo.png" width="362" height="148" alt="BDSteps Logo"></a>
            <% else %>
            <a href="/"><img class="img-responsive" src="$ThemeDir/img/bdsteps_logo.png" width="362" height="148" alt="BDSteps Logo"></a>
            <% end_if %>
            <div id="qlinks">
                <ul class="nav nav-pills pull-right">
                    <% include QuickLinks %>
                </ul>
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
        <div id="content">
            <div class="col-md-2 col-md-offset-1">
                <div id="sidebar">
                    <% include SideBar %>
                </div>
            </div>
            <div class="col-md-8">
                <% include Breadcrumb %>
                <div id="main-content">
                    $Content
                    $Form
                </div>
            </div>
            
        </div>
    </div>
    <footer>
        <div class="row">
            <% include Footer %>
        </div>
    </footer>
</div>