<!-- IMPORT partials/account_menu.tpl -->
<div class="account profile-view">
	<div class="row">
		<div class="col-md-5 account-block">
			<div class="card profile-view">
                <div class="pv-header">
                    <img src="{picture}" class="pv-main" alt="">
                </div>               
                <div class="pv-body">
                    <span><i component="user/status" class="fa fa-circle status {status}" title="[[global:{status}]]"></i> <span class="account-username">{username}</span></span>
                
                    <div class="pv-contact">
                        <!-- IF !isSelf -->
							<br/>
							<!-- IF !config.disableChat -->
							<a id="chat-btn" href="#" class="btn btn-primary btn-sm">[[user:chat]]</a>
							<!-- ENDIF !config.disableChat -->
 							<a id="follow-btn" href="#" class="btn btn-success btn-sm <!-- IF isFollowing -->hide<!-- ENDIF isFollowing -->">[[user:follow]]</a>
 							<a id="unfollow-btn" href="#" class="btn btn-warning btn-sm <!-- IF !isFollowing -->hide<!-- ENDIF !isFollowing -->">[[user:unfollow]]</a>
							<!-- ENDIF !isSelf -->
                    </div>
                    
                    <ul class="pv-follow">
                        <li>
                        	<span style="display:block;">{reputation}</span>
                        	<span>[[global:reputation]]</span>
                        </li>
                        <li>
                        	<span style="display:block;">{postcount}</span>
                        	<span>[[global:posts]]</span>
                        </li>
                        <li>
                        	<span style="display:block;">{profileviews}</span>
                        	<span>[[user:profile_views]]</span>
                        </li>
                    </ul>

                    <ul class="pv-follow">
                    	<li>
                    		<span class="human-readable-number account-bio-value" title="{followerCount}" style="display:block;">{followerCount}</span>
							<span class="account-bio-label">[[user:followers]]</span>
						</li>
						<li>
							<span class="human-readable-number account-bio-value"  title="{followingCount}" style="display:block;">{followingCount}</span>
							<span class="account-bio-label">[[user:following]]</span>
						</li> 
                    </ul>
                           
                </div>
            </div>

			<div class="card">
				<div class="card-body card-padding">

					<!-- IF email -->
					<div class="profile-label">[[user:email]]</div>
					<div><i class="fa fa-eye-slash {emailClass}" title="[[user:email_hidden]]"></i> {email}</div>
					<!-- ENDIF email -->

					<!-- IF fullname -->
					<div class="profile-label">[[user:fullname]]</div>
					<div>{fullname}</div>
					<!-- ENDIF fullname -->

					<!-- IF websiteName -->
					<div class="profile-label">[[user:website]]</div>
					<div><a href="{website}">{websiteName}</a></div>
					<!-- ENDIF websiteName -->

					<!-- IF location -->
					<div class="profile-label">[[user:location]]</div>
					<div>{location}</div>
					<!-- ENDIF location -->

					<!-- IF age -->
					<div class="profile-label">[[user:age]]</div>
					<div>{age}</div>
					<!-- ENDIF age -->

					<div class="profile-label">[[user:joined]]</div>
					<div class="timeago account-bio-value" title="{joindate}"></div>

					<div class="profile-label">[[user:lastonline]]</div>
					<div class="timeago account-bio-value" title="{lastonline}"></div>

					<!-- IF !disableSignatures -->
					<!-- IF signature -->
					<hr/>
					<div class="profile-label">[[user:signature]]</div>
					<div class="post-signature">
						<span id='signature'>{signature}</span>
					</div>
					<!-- ENDIF signature -->
					<!-- ENDIF !disableSignatures -->
				</div>
			</div>

			<!-- IF groups.length -->
			<div class="card">
				<div class="card-header ch-alt">
					<i class="fa fa-group"></i> [[groups:groups]]
				</div>
				<div class="card-body card-padding">
				<!-- BEGIN groups -->
					<a href="{relative_path}/groups/{groups.slug}"><span class="label group-label inline-block" style="background-color: {groups.labelColor};"><!-- IF groups.icon --><i class="fa {groups.icon}"></i> <!-- ENDIF groups.icon -->{groups.userTitle}</span></a>
				<!-- END groups -->
				</div>
			</div>
			<!-- ENDIF groups.length -->

			<!-- IF ips.length -->
			<div class="card">
				<div class="card-header ch-alt">
					<i class="fa fa-laptop"></i> [[global:recentips]]
				</div>
				<div class="card-body card-padding">
				<!-- BEGIN ips -->
					<div>{ips.ip}</div>
				<!-- END ips -->
				</div>
			</div>
			<!-- ENDIF ips.length -->
		</div>

		<div class="col-md-7 user-recent-posts" data-nextstart="{nextStart}">
			<div class="card">
				<div class="card-header ch-alt">
					<i class="fa fa-edit"></i> [[global:recentposts]]
				</div>
				<div class="card-body card-padding">
					<!-- IF !posts.length -->
					<span>[[user:has_no_posts]]</span>
					<!-- ENDIF !posts.length -->
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

	<br/>
	<div id="user-action-alert" class="alert alert-success hide"></div>

</div>

<!-- IMPORT partials/variables/account.tpl -->
<!-- IMPORT partials/variables/account/profile.tpl -->