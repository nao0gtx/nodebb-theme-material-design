<div class="category">
	<!-- IMPORT partials/breadcrumbs.tpl -->
	<div class="card">
		<div class="listview lv-bordered lv-lg">
			<div class="lv-header-alt">
				<div class="title">
					<!-- IF privileges.topics:create -->
					<button id="new_topic" class="btn btn-primary">[[category:new_topic_button]]</button>
					<!-- ELSE -->
						<!-- IF !loggedIn -->
						<a href="/login?next=category/{slug}" class="btn btn-primary">[[category:guest-login-post]]</a>
						<!-- ENDIF !loggedIn -->
					<!-- ENDIF privileges.topics:create -->
					<ul class="lv-actions actions">
						<!-- IMPORT partials/category/watch.tpl -->
						<!-- IMPORT partials/category/tools.tpl -->
						<!-- IMPORT partials/category/sort.tpl -->
					</ul>
				</div>
			</div>
			<!-- IF !topics.length -->
			<div class="alert alert-warning" id="category-no-topics">
				[[category:no_topics]]
			</div>
			<!-- ENDIF !topics.length -->
			<!-- IMPORT partials/topics_list.tpl -->
		</div>
	</div>
	<!-- IF config.usePagination -->
		<!-- IMPORT partials/paginator.tpl -->
	<!-- ENDIF config.usePagination -->	
</div>

<!-- IMPORT partials/move_thread_modal.tpl -->
<!-- IMPORT partials/noscript/paginator.tpl -->
<!-- IMPORT partials/variables/category.tpl -->