<% if $Menu(2) %>
	<% with $Level(1) %>
			<ul>
                <% if LinkOrSection = section %>
                	<% if $Children %>
                		<% loop $Children %>
                			<li>
                				<a href="$Link" class="$LinkingMode" title="$Title.XML">$MenuTitle.XML</a>
                			</li>
                		<% end_loop %>
                	<% end_if %>
                <% end_if %>
			</ul>
		<% end_with %>
	</nav>
<% end_if %>