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

	<div class="category">
		<!-- IF !topics.length -->
		<div class="alert alert-warning" id="category-no-topics">
			<strong>[[recent:no_popular_topics]]</strong>
		</div>
		<!-- ELSE -->

		<div class="card">
			<div class="listview lv-bordered lv-lg">
				<div class="lv-header-alt">
			        <h2 class="lvh-label hidden-xs">[[global:header.popular]]</h2>
			        
			        <ul class="lv-actions actions">
			            <li>
			                <a href="">
			                    <i class="fa fa-fw fa-clock-o"></i>
			                </a>
			            </li>
			            <li class="dropdown">
			                <a href="" data-toggle="dropdown" aria-expanded="true">
			                    <i class="fa fa-fw fa-sort"></i>
			                </a>
			    
			                <ul class="dropdown-menu dropdown-menu-right">
			                    <li>
			                        <a href="">Last Modified</a>
			                    </li>
			                    <li>
			                        <a href="">Last Edited</a>
			                    </li>
			                    <li>
			                        <a href="">Name</a>
			                    </li>
			                    <li>
			                        <a href="">Date</a>
			                    </li>
			                </ul>
			            </li>
			            <li>
			                <a href="">
			                    <i class="fa fa-fw fa-info-circle"></i>
			                </a>
			            </li>
			            <li class="dropdown">
			                <a href="" data-toggle="dropdown" aria-expanded="true">
			                    <i class="fa fa-fw fa-ellipsis-v"></i>
			                </a>
			    
			                <ul class="dropdown-menu dropdown-menu-right">
			                    <li>
			                        <a href="">Refresh</a>
			                    </li>
			                    <li>
			                        <a href="">Listview Settings</a>
			                    </li>
			                </ul>
			            </li>
			        </ul>
			    </div>
				<!-- IMPORT partials/topics_list.tpl -->
			</div>
		</div>
		<!-- ENDIF !topics.length -->
	</div>
</div>