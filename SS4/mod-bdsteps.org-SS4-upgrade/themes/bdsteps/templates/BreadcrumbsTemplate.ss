<% if $Pages %>
	<% loop $Pages %>
		<% if $Last %><span class="red">$MenuTitle.XML</span><% else %><a href="$Link" class="breadcrumb-$Pos">$MenuTitle.XML</a> ><% end_if %>
	<% end_loop %>
<% end_if %>