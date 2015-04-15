<div class="row">
	<!-- BEGIN categories -->
	<div class="col-md-4 col-sm-6">
		<div class="card">
			<meta itemprop="name" content="{categories.name}">
			<div class="card-header ch-alt">
                <h2>
                	<!-- IF categories.link -->
					<a href="{categories.link}" itemprop="url" target="_blank">
					<!-- ELSE -->
					<a href="{relative_path}/category/{categories.slug}" itemprop="url" style="color:{categories.bgColor};">
					<!-- ENDIF categories.link-->
					{categories.name} </a>
					<small style="color:{categories.bgColor};">{categories.description}</small>
				</h2>
				<ul class="actions">
                    <li>
                        <i class="fa fa-book"></i>{categories.topic_count}
                    </li>
                    <li>
                        <i class="fa fa-pencil"></i>{categories.post_count}
                    </li>
                </ul>
            </div>

            <div class="card-body card-padding">
				<!-- BEGIN posts -->
            	<div class="content">
					<a href="{relative_path}/topic/{categories.posts.topic.slug}">{categories.posts.topic.title}</a>
				</div>
				<!-- END posts -->
			</div>
		</div>
	</div>
	<!-- END categories -->
</div>