<div class="popular">
	<!-- IMPORT partials/breadcrumbs.tpl -->

	<ul class="nav nav-pills">
		<li><a href='{relative_path}/popular/daily'>[[recent:day]]</a></li>
		<li><a href='{relative_path}/popular/weekly'>[[recent:week]]</a></li>
		<li><a href='{relative_path}/popular/monthly'>[[recent:month]]</a></li>
		<li><a href='{relative_path}/popular/alltime'>[[recent:alltime]]</a></li>
	</ul>
	
	<!--<ul class="tab-nav" role="tablist">
        <li class="active"><a href="{relative_path}/popular/daily" role="tab" data-toggle="tab">[[recent:day]]</a></li>
        <li><a href="{relative_path}/popular/weekly" role="tab" data-toggle="tab">[[recent:week]]</a></li>
        <li><a href="{relative_path}/popular/monthly" role="tab" data-toggle="tab">[[recent:month]]</a></li>
        <li><a href="{relative_path}/popular/alltime" role="tab" data-toggle="tab">[[recent:alltime]]</a></li>
    </ul>-->

	<div class="card">
		<div class="listview lv-bordered lv-lg">
			<div class="lv-header-alt">
				<div class="title">
		        	[[global:header.popular]]
		        </div>
		    </div>
		    <!-- IF !topics.length -->
			<div class="alert alert-warning" id="category-no-topics">
				<strong>[[recent:no_popular_topics]]</strong>
			</div>
			<!-- ENDIF !topics.length -->
			<!-- IMPORT partials/topics_list.tpl -->
		</div>
	</div>
</div>