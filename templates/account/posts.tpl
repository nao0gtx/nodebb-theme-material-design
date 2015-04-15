
<!-- IMPORT partials/account_menu.tpl -->

<div class="favourites">
	<!-- IF !posts.length -->
		<div class="alert alert-warning">[[user:has_no_posts]]</div>
	<!-- ELSE -->
	<div class="row">
		<div class="col-md-12 user-favourite-posts" data-nextstart="{nextStart}">
			<div class="card">
				<div class="card-body card-padding">
					<!-- BEGIN posts -->
					<div class="timeline single">
						<div class="frame">
							<div class="timeline-badge" style="background-color:{posts.category.bgColor}; border-color:{posts.category.bgColor};">
								<i class="fa {posts.category.icon}"></i>
							</div>
							<span class="timeline-date">[[global:posted_in_ago, <a href="{relative_path}/category/{posts.category.slug}"><i class="fa {posts.category.icon}"></i> {posts.category.name}</a>, <span class="timeago" title="{posts.relativeTime}"></span>]] &bull;
							<a href="{relative_path}/topic/{posts.topic.slug}/{posts.index}">[[global:read_more]]</a></span>
							<div class="timeline-content">
								<p>{posts.content}</p>
							</div>
						</div>
					</div>
					<!-- END posts -->
					<div class="loading-indicator text-center hidden">
						<i class="fa fa-refresh fa-spin"></i>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- ENDIF !posts.length -->
</div>

<!-- IMPORT partials/variables/account.tpl -->