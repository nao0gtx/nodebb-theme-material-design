
	<div class="lv-item media">
		<div class="pull-left hidden-xs">
        	<a href="<!-- IF posts.user.userslug -->{relative_path}/user/{posts.user.userslug}<!-- ELSE -->#<!-- ENDIF posts.user.userslug -->">
            	<img class="lv-img-sm" src="{posts.user.picture}" title="{topics.user.username}">
        	</a>
        </div>
        <div class="media-body">
        	<small>
        		<a href="<!-- IF posts.user.userslug -->{relative_path}/user/{posts.user.userslug}<!-- ELSE -->#<!-- ENDIF posts.user.userslug -->" itemprop="author" data-username="{posts.user.username}" data-uid="{posts.user.uid}">{posts.user.username}</a>
        		[[global:posted_ago, <a class="permalink" href="{config.relative_path}/topic/{slug}/{function.getBookmarkFromIndex}"><span class="timeago" title="{posts.relativeTime}"></span></a>]]
	        	<span class="post-tools">
					<a component="post/reply" class="<!-- IF !privileges.topics:reply -->hidden<!--ENDIF !privileges.topics:reply -->"><i class="fa fa-fw fa-reply"></i>[[topic:reply]]</a>
					<a component="post/quote" class="<!-- IF !privileges.topics:reply -->hidden<!--ENDIF !privileges.topics:reply -->"><i class="fa fa-fw fa-quote-right"></i>[[topic:quote]]</a>
				</span>
        	</small>
        	{posts.content}
        </div>
	</div>
