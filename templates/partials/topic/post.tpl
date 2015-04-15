<div component="post" class="timeline single <!-- IF posts.deleted -->deleted<!-- ENDIF posts.deleted -->" <!-- IMPORT partials/data/topic.tpl -->>
    <div class="frame">
        <div class="timeline-badge">
            <i class="fa fa-comments-o"></i>
        </div>
        <span class="timeline-date"><a href="<!-- IF posts.user.userslug -->{relative_path}/user/{posts.user.userslug}<!-- ELSE -->#<!-- ENDIF posts.user.userslug -->" itemprop="author" data-username="{posts.user.username}" data-uid="{posts.user.uid}">{posts.user.username}</a>
            [[global:posted_ago, <a class="permalink" href="{config.relative_path}/topic/{slug}/{function.getBookmarkFromIndex}"><span class="timeago" title="{posts.relativeTime}"></span></a>]]

            <span class="post-tools">
                <a component="post/reply" class="<!-- IF !privileges.topics:reply -->hidden<!--ENDIF !privileges.topics:reply -->"><i class="fa fa-reply"></i>[[topic:reply]]</a>
                <a component="post/quote" class="<!-- IF !privileges.topics:reply -->hidden<!--ENDIF !privileges.topics:reply -->"><i class="fa fa-quote-left"></i>[[topic:quote]]</a>
            </span>
        </span>
        <div class="timeline-content">
            <p>{posts.content}</p>
        </div>
    </div>
</div>

