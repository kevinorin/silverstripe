<ul class="nav nav-justified">
    
    <% loop Menu(1) %>
    
    <% if URLSegment = about || URLSegment = about-es-es %>
    <% if Children %>
    <li class="dropdown">
        <a href="#" class="green dropdown-toggle" data-toggle="dropdown">$MenuTitle.XML <span class="caret"></span></a>
        <ul class="dropdown-menu" role="menu">
            <% loop Children %>      
		        <li class="$LinkingMode">
		            <a href="$Link" title="$Title.XML">$MenuTitle.XML</a>
		        </li>
		    <% end_loop %>
        </ul>
    <% else %>
        <li><a href="$Link" class="green">$MenuTitle.XML</a></li>
    <% end_if %>
    </li>
    <% end_if %>
    
    <% if URLSegment = for-participants || URLSegment = for-participants-es-es %>
    <% if Children %>
    <li class="dropdown">
        <a href="#" class="orange dropdown-toggle" data-toggle="dropdown">$MenuTitle.XML <span class="caret"></span></a>
        <ul class="dropdown-menu" role="menu">
            <% loop Children %>      
		        <li class="$LinkingMode">
		            <a href="$Link" title="$Title.XML">$MenuTitle.XML</a>
		        </li>
		    <% end_loop %>
        </ul>
    <% else %>
        <li><a href="$Link" class="orange">$MenuTitle.XML</a></li>
    <% end_if %>
    </li>
    <% end_if %>
    
    <% if URLSegment = study-centers || URLSegment = study-centers-es-es%>
    <% if Children %>
    <li class="dropdown">
        <a href="#" class="blue dropdown-toggle" data-toggle="dropdown">$MenuTitle.XML <span class="caret"></span></a>
        <ul class="dropdown-menu" role="menu">
            <% loop Children %>      
		        <li class="$LinkingMode">
		            <a href="$Link" title="$Title.XML">$MenuTitle.XML</a>
		        </li>
		    <% end_loop %>
        </ul>
    <% else %>
        <li><a href="$Link" class="blue">$MenuTitle.XML</a></li>
    <% end_if %>
    </li>
    <% end_if %>
    
    <% if URLSegment = research || URLSegment = investigacion- %>
    <% if Children %>
    <li class="dropdown">
        <a href="#" class="yellow dropdown-toggle" data-toggle="dropdown">$MenuTitle.XML <span class="caret"></span></a>
        <ul class="dropdown-menu" role="menu">
            <% loop Children %>      
		        <li class="$LinkingMode">
		            <a href="$Link" title="$Title.XML">$MenuTitle.XML</a>
		        </li>
		    <% end_loop %>
        </ul>
    <% else %>
        <li><a href="$Link" class="yellow">$MenuTitle.XML</a></li>
    <% end_if %>
    </li>
    <% end_if %>
    
    <% if URLSegment = resource || URLSegment = recursos %>
    <% if Children %>
    <li class="dropdown">
        <a href="#" class="red dropdown-toggle" data-toggle="dropdown">$MenuTitle.XML <span class="caret"></span></a>
        <ul class="dropdown-menu" role="menu">
            <% loop Children %>      
		        <li class="$LinkingMode">
		            <a href="$Link" title="$Title.XML">$MenuTitle.XML</a>
		        </li>
		    <% end_loop %>
        </ul>
    <% else %>
        <li><a href="$Link" class="red">$MenuTitle.XML</a></li>
    <% end_if %>
    </li>
    <% end_if %>
    
    <% end_loop %>
</ul>
