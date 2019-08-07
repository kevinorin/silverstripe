<div class="navbar navbar-inverse" role="navigation">
    <div class="navbar-header">
        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
        </button>
    </div>
    <div class="collapse navbar-collapse">
        <form class="navbar-form navbar-right form-search" role="search" id="SearchForm_SearchForm" action="/home/SearchForm" method="get" enctype="application/x-www-form-urlencoded">
            <div class="form-group">
                <input id="SearchForm_SearchForm_Search" type="text" name="Search" value="" class="form-control" placeholder="Search">
            </div>
            <button id="SearchForm_SearchForm_action_results" class="btn btn-oldstyle action" type="submit" name="action_results" value=""><i class="glyphicon glyphicon-search"></i></button>
        </form>
         <% if $Locales %>
        <ul class="nav navbar-nav navbar-right">
            <% loop $Locales %>
<!--             <li><a class="$Locale" hreflang="$Locale.RFC1766" href="$Link">$Locale.Nice</a></li>
 -->            
 <li class="$LinkingMode">
                    <a href="$Link.ATT" <% if $LinkingMode != 'invalid' %>rel="alternate" hreflang="$LocaleRFC1766"<% end_if %>>$Title.XML</a>
                </li><% end_loop %>
        </ul>
        <% end_if %>
    </div><!--/.nav-collapse -->
</div>