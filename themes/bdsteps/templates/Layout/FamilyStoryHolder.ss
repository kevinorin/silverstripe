<div id="main">
    <div class="row">
        <div class="col-md-10 col-md-offset-1">
            <a href="/"><img class="img-responsive" src="$ThemeDir/img/bdsteps_logo.png" width="362" height="148" alt="BDSteps Logo"></a>
            <div id="qlinks">
                <ul class="nav nav-pills pull-right">
                    <% include QuickLinks %>
                </ul>
            </div>
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
            		<% loop $Children %>
                    <hr />
                    <div class="row">
                        <div class="col-md-2">
                            <% if Photo %><img src="$Photo.SetWidth(98).URL" alt="" /><% end_if %>
                        </div>
                        <div class="col-md-10">
                            <h4 class="green">$Name</h4>
                            <p class="green">
                                <span class="small">$Title1</span><br>
                                <span class="small">$Title2</span><br>
                                <span class="small">$Title3</span><br>
                            </p>
                            <p>$Content.Paragraph<a href="$Link"> more <i class="icon-chevron-right small"></i></a></p>
                        </div>
                    </div>
                    <% end_loop %>
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