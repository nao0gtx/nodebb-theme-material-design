
<div class="notifications">
	<h2>[[notifications:title]]</h2>

	<div class="alert alert-info <!-- IF notifications.length -->hidden<!-- ENDIF notifications.length -->">
		[[notifications:no_notifs]]
	</div>


	<div class="card">
		<div class="listview lv-bordered lv-lg">
			<div class="lv-body">
				<!-- BEGIN notifications -->
				<div class="lv-item media {notifications.readClass}" data-nid="{notifications.nid}">
			    	<div class="pull-left">
			    		<!-- IF notifications.image -->
						<!-- IF notifications.from -->
						<a href="{relative_path}/user/{notifications.user.userslug}"><img class="lv-img-sm" src="{notifications.image}" /></a>
						<!-- ENDIF notifications.from -->
						<!-- ELSE -->
						<img class="lv-img-sm" src="{notifications.image}" />
						<!-- ENDIF notifications.image -->
					</div>
					<div class="media-body">
						<div class="lv-title">
						<a href="{notifications.path}">{notifications.bodyShort}</a>
						</div>
						<small class="timeago" title="{notifications.datetimeISO}"></small>
					</div>
		    	</div>
		    	<!-- END notifications -->
			</div>
		</div>
	</div>

</div>


