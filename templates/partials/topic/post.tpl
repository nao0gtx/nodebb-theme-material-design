<div component="post" class="timeline single <!-- IF posts.deleted -->deleted<!-- ENDIF posts.deleted -->" <!-- IMPORT partials/data/topic.tpl -->>
    <a component="post/anchor" name="{posts.index}"></a>
    <meta itemprop="datePublished" content="{posts.relativeTime}">
    <meta itemprop="dateModified" content="{posts.relativeEditTime}">
    <div class="frame">
        <div class="timeline-badge">
            <i class="fa fa-comments-o"></i>
        </div>
        <span class="timeline-date">

            <i component="user/status" class="fa fa-circle status {posts.user.status}" title="[[global:{posts.user.status}]]"></i>
            <strong>
            <a href="<!-- IF posts.user.userslug -->{relative_path}/user/{posts.user.userslug}<!-- ELSE -->#<!-- ENDIF posts.user.userslug -->" itemprop="author" data-username="{posts.user.username}" data-uid="{posts.user.uid}">{posts.user.username}</a>
            </strong>
                <!-- IMPORT partials/topic/badge.tpl -->
            [[global:posted_ago, <a class="permalink" href="{config.relative_path}/topic/{slug}/{function.getBookmarkFromIndex}"><span class="timeago" title="{posts.relativeTime}"></span></a>]]

            <span class="post-tools">
                <a component="post/reply" class="<!-- IF !privileges.topics:reply -->hidden<!--ENDIF !privileges.topics:reply -->"><i class="fa fa-reply"></i>[[topic:reply]]</a>
                <a component="post/quote" class="<!-- IF !privileges.topics:reply -->hidden<!--ENDIF !privileges.topics:reply -->"><i class="fa fa-quote-left"></i>[[topic:quote]]</a>
            </span>

            <div class="lv-actions actions hidden-xs">
                <li class="votes">
                    <!-- IF !reputation:disabled -->
                    <a component="post/upvote" href="#" class="<!-- IF posts.upvoted -->upvoted<!-- ENDIF posts.upvoted -->">
                        <i class="fa fa-chevron-up"></i>
                    </a>
                    <span component="post/vote-count" data-votes="{posts.votes}">{posts.votes}</span>
                    <!-- IF !downvote:disabled -->
                    <a component="post/downvote" href="#" class="<!-- IF posts.downvoted -->downvoted<!-- ENDIF posts.downvoted -->">
                        <i class="fa fa-chevron-down"></i>
                    </a>
                    <!-- ENDIF !downvote:disabled -->
                    <!-- ENDIF !reputation:disabled -->
                </li>
                <!-- IMPORT partials/topic/post-menu.tpl -->
            </div>
        </span>
        <div class="timeline-content" component="post/content" itemprop="text">
            <p>{posts.content}</p>
        </div>
        <!-- IF posts.editor.username -->
        <small class="pull-right post-edit">[[global:last_edited_by_ago, <strong><a href="{relative_path}/user/{posts.editor.userslug}">{posts.editor.username}</a></strong>, <span class="timeago" title="{posts.relativeEditTime}"></span>]]</small>
        <!-- ENDIF posts.editor.username -->
    </div>
</div>

