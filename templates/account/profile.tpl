<!-- IMPORT partials/account_menu.tpl -->
<div class="account">
	<div class="row">
		<div class="col-md-5 account-block">
			<div class="card profile-view">
                <div class="pv-header">
                    <img src="{picture}" class="pv-main" alt="">
                </div>               
                <div class="pv-body">
                    <span><i component="user/status" class="fa fa-circle status {status}" title="[[global:{status}]]"></i>{username}</span>
                
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
                        <li>{reputation} [[global:reputation]]</li>
                        <li>{postcount} [[global:posts]]</li>
                        <li>{profileviews} [[user:profile_views]]</li>
                    </ul>
                           
                </div>
            </div>

			<div class="card">
				<div class="card-body card-padding">
					<ul>
					
					<!-- IF email -->
					<li>
					<span class="account-bio-label">[[user:email]]</span>
					<span class="account-bio-value"><i class="fa fa-eye-slash {emailClass}" title="[[user:email_hidden]]"></i> {email}</span>
					</li>
					<!-- ENDIF email -->
					
					<!-- IF fullname -->
					<li>
					<span class="account-bio-label">[[user:fullname]]</span>
					<span class="account-bio-value">{fullname}</span>
					</li>
					<!-- ENDIF fullname -->
					
					<!-- IF websiteName -->
					<li>
					<span class="account-bio-label">[[user:website]]</span>
					<span class="account-bio-value"><a href="{website}">{websiteName}</a></span>
					</li>
					<!-- ENDIF websiteName -->
					
					
					<!-- IF location -->
					<li>
					<span class="account-bio-label">[[user:location]]</span>
					<span class="account-bio-value">{location}</span>
					</li>
					<!-- ENDIF location -->
					
					
					<!-- IF age -->
					<li>
					<span class="account-bio-label">[[user:age]]</span>
					<span class="account-bio-value">{age}</span>
					</li>
					<!-- ENDIF age -->
					
					<li>
					<span class="account-bio-label">[[user:followers]]</span>
					<span class="human-readable-number account-bio-value" title="{followerCount}">{followerCount}</span>
					</li>
					<li>
					<span class="account-bio-label">[[user:following]]</span>
					<span class="human-readable-number account-bio-value"  title="{followingCount}">{followingCount}</span>
					</li>
					<li>
					<span class="account-bio-label">[[user:joined]]</span>
					<span class="timeago account-bio-value" title="{joindate}"></span>
					</li>
					<li>
					<span class="account-bio-label">[[user:lastonline]]</span>
					<span class="timeago account-bio-value" title="{lastonline}"></span>
					</li>
					
					<!-- IF !disableSignatures -->
					<!-- IF signature -->
					<hr/>
					<li>
					<span class="account-bio-label">[[user:signature]]</span>
					<div class="post-signature">
						<span id='signature'>{signature}</span>
					</div>
					</li>
					<!-- ENDIF signature -->
					<!-- ENDIF !disableSignatures -->
					</ul>
				</div>
			</div>

			<!-- IF groups.length -->
			<div class="card">
				<div class="card-header ch-alt">
					[[groups:groups]]
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
					[[global:recentips]]
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
					[[global:recentposts]]
				</div>
				<div class="card-body card-padding">
					<!-- IF !posts.length -->
					<span>[[user:has_no_posts]]</span>
					<!-- ENDIF !posts.length -->
					<!-- BEGIN posts -->
					<div class="timeline single">
						<div class="frame">
							<div class="timeline-badge">
								<i class="fa {posts.category.icon}"></i>
							</div>
							<span class="timeline-date">[[global:posted_in_ago, <a href="{relative_path}/category/{posts.category.slug}"><i class="fa {posts.category.icon}"></i> {posts.category.name}</a>, <span class="timeago" title="{posts.relativeTime}"></span>]]</span>
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