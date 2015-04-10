<!-- IMPORT partials/account_menu.tpl -->
<div class="account">
	<div class="row">
		<div class="col-xs-12">
			<div class="card">
	            <div class="card-header">
	            	[[user:browsing]]
	            </div>
	            <div class="card-body card-padding">
	            	<div class="checkbox">
	                    <label>
	                        <input type="checkbox" data-property="openOutgoingLinksInNewTab">
	                        <i class="input-helper"></i>
	                        [[user:open_links_in_new_tab]]
	                    </label>
	                </div>
	                <div class="checkbox">
	                    <label>
	                        <input type="checkbox" data-property="topicSearchEnabled">
	                        <i class="input-helper"></i>
	                        [[user:enable_topic_searching]]
	                    </label>
	                </div>
	                <small class="help-block">[[user:topic_search_help]]</small>
	            </div>
	        </div>

	        <div class="card">
	            <div class="card-header">
	            	[[global:privacy]]
	            </div>
	            <div class="card-body card-padding">
	            	<div class="checkbox">
	                    <label>
	                        <input type="checkbox" data-property="showemail">
	                        <i class="input-helper"></i>
	                        [[user:show_email]]
	                    </label>
	                </div>
	                <div class="checkbox">
	                    <label>
	                        <input type="checkbox" data-property="showfullname">
	                        <i class="input-helper"></i>
	                        [[user:show_fullname]]
	                    </label>
	                </div>
	                <div class="checkbox">
	                    <label>
	                        <input type="checkbox" data-property="restrictChat">
	                        <i class="input-helper"></i>
	                        [[user:restrict_chats]]
	                    </label>
	                </div>
	            </div>
	        </div>

	        <!-- IF !disableEmailSubscriptions -->
			<div class="card">
	            <div class="card-header">
	            	[[global:email]]
	            </div>
	            <div class="card-body card-padding">
	            	<div class="form-group fg-line">
		            	<div class="select">
		            	<label for="dailyDigestFreq">[[user:digest_label]]</label>
						<select class="form-control" id="dailyDigestFreq" data-property="dailyDigestFreq">
							<option value="off">[[user:digest_off]]</option>
							<option value="day">[[user:digest_daily]]</option>
							<option value="week">[[user:digest_weekly]]</option>
							<option value="month">[[user:digest_monthly]]</option>
						</select>
						</div>
					</div>
					<small>[[user:digest_description]]</small>
	            	<div class="checkbox">
	                    <label>
	                        <input type="checkbox" data-property="sendChatNotifications">
	                        <i class="input-helper"></i>
	                        [[user:send_chat_notifications]]
	                    </label>
	                </div>
	                <div class="checkbox">
	                    <label>
	                        <input type="checkbox" data-property="sendPostNotifications">
	                        <i class="input-helper"></i>
	                        [[user:send_post_notifications]]
	                    </label>
	                </div>
	            </div>
	        </div>
	        <!-- ENDIF !disableEmailSubscriptions -->

	        <div class="card">
	            <div class="card-header">
	            	[[user:follow]]
	            </div>
	            <div class="card-body card-padding">
	            	<div class="checkbox">
	                    <label>
	                        <input type="checkbox" data-property="followTopicsOnCreate">
	                        <i class="input-helper"></i>
	                        [[user:follow_topics_you_create]]
	                    </label>
	                </div>
	                <div class="checkbox">
	                    <label>
	                        <input type="checkbox" data-property="followTopicsOnReply">
	                        <i class="input-helper"></i>
	                        [[user:follow_topics_you_reply_to]]
	                    </label>
	                </div>
	            </div>
	        </div>

	        <div class="card">
	            <div class="card-header">
	            	[[groups:groups]]
	            </div>
	            <div class="card-body card-padding">
	            	<div class="form-group fg-line">
		            	<div class="select">
		            	<label for="grouptitle">[[user:grouptitle]]</label>
						<select class="form-control" id="grouptitle" data-property="groupTitle">
							<!-- BEGIN userGroups -->
							<!-- IF userGroups.userTitleEnabled -->
							<option value="{userGroups.name}">{userGroups.userTitle}</option>
							<!-- ENDIF userGroups.userTitleEnabled -->
							<!-- END userGroups -->
						</select>
						</div>
					</div>
	            </div>
	        </div>

	        <div class="card">
	            <div class="card-header">
	            	[[global:pagination]]
	            </div>
	            <div class="card-body card-padding">
	            	<div class="checkbox">
	                    <label>
	                        <input type="checkbox" data-property="usePagination">
	                        <i class="input-helper"></i>
	                        [[user:paginate_description]]
	                    </label>
	                </div>

					<div class="form-group">
                        <div class="fg-line">
                        	<label>[[user:topics_per_page]]</label>
                            <input type="text" class="form-control" data-property="topicsPerPage">
                        </div>
                    </div>

                    <div class="form-group">
                        <div class="fg-line">
                        	<label>[[user:posts_per_page]]</label>
                            <input type="text" class="form-control" data-property="postsPerPage">
                        </div>
                    </div>
	                
	            </div>
	        </div>

	        <div class="card">
	            <div class="card-header">
	            	[[global:header.notifications]]
	            </div>
	            <div class="card-body card-padding">
	            	<div class="checkbox">
	                    <label>
	                        <input type="checkbox" data-property="notificationSounds">
	                        <i class="input-helper"></i>
	                        [[user:notification_sounds]]
	                    </label>
	                </div>
	            </div>
	        </div>

			<div class="card">
	            <div class="card-header">
	            	[[global:language]]
	            </div>
	            <div class="card-body card-padding">
	            	<div class="form-group fg-line">
		            	<div class="select">
						<select data-property="userLang" class="form-control">
							<!-- BEGIN languages -->
							<option value="{languages.code}">{languages.name} ({languages.code})</option>
							<!-- END languages -->
						</select>
						</div>
					</div>
	            </div>
	        </div>      

		</div>
		<div class="col-xs-12">
			<button id="submitBtn" class="btn btn-primary btn-lg">[[global:save_changes]]</button>
		</div>
	</div>
</div>
<!-- IMPORT partials/variables/account.tpl -->