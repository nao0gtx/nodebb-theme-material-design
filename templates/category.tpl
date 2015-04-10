<!-- IMPORT partials/breadcrumbs.tpl -->

	<div class="category row">
		<div class="col-md-12">
			<div class="card">
				<div class="listview lv-bordered lv-lg">
					<div class="lv-header-alt">
				        <!-- IF privileges.topics:create -->
						<button id="new_topic" class="btn btn-primary">[[category:new_topic_button]]</button>
						<!-- ELSE -->
							<!-- IF !loggedIn -->
							<a href="/login?next=category/{slug}" class="btn btn-primary">[[category:guest-login-post]]</a>
							<!-- ENDIF !loggedIn -->
						<!-- ENDIF privileges.topics:create -->
				        <!-- IMPORT partials/thread_sort.tpl -->
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
	</div>
	<!-- IMPORT partials/variables/category.tpl -->