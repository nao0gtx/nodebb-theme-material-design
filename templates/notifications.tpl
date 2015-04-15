<div class="notifications">
	<h3>[[notifications:title]]</h3>

	<div class="alert alert-info <!-- IF notifications.length -->hidden<!-- ENDIF notifications.length -->">
		[[notifications:no_notifs]]
	</div>

	<ul class="list-material">
		<!-- BEGIN notifications -->
		<li class="has-action-left has-long-story">			
			<div class="list-action-left">
				<a href="{relative_path}/user/{notifications.user.userslug}"><img src="{notifications.image}" class="face-radius" alt=""></a>
			</div>
			<div class="list-content">
				<span class="caption"><a href="{notifications.path}">{notifications.bodyShort}</a></span>
			</div>
			<div class="list-action-right">
				<span class="timeago" title="{notifications.datetimeISO}"></span>
			</div>			
		</li>
		<!-- END notifications -->
	</ul>	
</div>
