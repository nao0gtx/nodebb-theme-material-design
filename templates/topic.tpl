<div class="topic">
	<!-- IMPORT partials/breadcrumbs.tpl -->
	<div class="row">
		<div class="col-md-12">
			<div class="card">
				<div class="listview lv-bordered lv-lg">
					<div class="lv-header-alt">
						<i class="fa fa-thumb-tack <!-- IF !pinned -->hidden<!-- ENDIF !pinned -->"></i> <i class="fa fa-lock <!-- IF !locked -->hidden<!-- ENDIF !locked -->"></i> <span class="topic-title" component="topic/title">{title}</span>
						<ul class="lv-actions actions">
							<li class="dropdown">
								<a href="" data-toggle="dropdown" aria-expanded="true">
									<i class="fa fa-sort"></i>
								</a>
								<ul class="dropdown-menu dropdown-menu-right">
									<li>
										Modified
									</li>
								</ul>
							</li>
						</ul>
					</div>
					<div class="lv-body">
					<!-- BEGIN posts -->
					<!-- IMPORT partials/topic/post.tpl -->
					<!-- END posts -->
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<!-- IMPORT partials/variables/topic.tpl -->