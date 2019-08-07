<div id="main">
    <div class="row">
        <div class="col-md-10 col-md-offset-1">
            <a href="/"><img class="img-responsive" src="$ThemeDir/img/bdsteps_logo.png" width="362" height="148" alt="BDSteps Logo"></a>
            <ul class="nav nav-pills pull-right">
                <% include QuickLinks %>
            </ul>
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
            <div class="col-md-10 col-md-offset-1">
                <div id="main-content">
                    <h4 class="green">$Title</h4>
                    
                        <% if $Results %>
                        <ul id="SearchResults">
                            <% loop $Results %>
                            <li>
                                <h4>
                                    <a href="$Link">
                                        <% if $MenuTitle %>
                                        $MenuTitle
                                        <% else %>
                                        $Title
                                        <% end_if %>
                                    </a>
                                </h4>
                                <% if $Content %>
                                    <p>$Content.LimitWordCountXML</p>
                                <% end_if %>
                                <a class="readMoreLink" href="$Link" title="Read more about &quot;{$Title}&quot;">Read more about &quot;{$Title}&quot;...</a>
                            </li>
                            <% end_loop %>
                        </ul>
                        <% else %>
                        <p>Sorry, your search query did not return any results.</p>
                        <% end_if %>

              
                    <% if Results.MoreThanOnePage %>
                    <div id="PageNumbers">
                        <% if Results.NotLastPage %>
                        <a class="next" href="$Results.NextLink" title="View the next page">Next</a>
                        <% end_if %>
                        <% if Results.NotFirstPage %>
                        <a class="prev" href="$Results.PrevLink" title="View the previous page">Prev</a>
                        <% end_if %>
                        <span>
                            <% loop Results.Pages %>
                                <% if CurrentBool %>
                                $PageNum
                                <% else %>
                                <a href="$Link" title="View page number $PageNum">$PageNum</a>
                                <% end_if %>
                            <% end_loop %>
                        </span>
                        <p>Page $Results.CurrentPage of $Results.TotalPages</p>
                    </div>
                    <% end_if %>
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