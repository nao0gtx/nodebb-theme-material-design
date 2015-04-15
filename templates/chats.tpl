<div class="col-sm-3">
	<div class="card">
		<div class="card-header ch-alt">
			[[modules:chat.contacts]]
		</div>
		<div class="card-body">
			<ul class="chats-list list-material message-list">
				<!-- BEGIN contacts -->
				<li data-username="{contacts.username}" data-uid="{contacts.uid}" class="has-action-left">
					<div class="list-action-left">
						<img class="face-radius" src="{contacts.picture}">
					</div>
					<div class="list-content">
						<span>{contacts.username}</span>
					</div>
				</li>
				<!-- END contacts -->
			</ul>
		</div>
	</div>
	<div class="card">
		<div class="card-header ch-alt">
			[[modules:chat.recent-chats]]
		</div>
		<div class="card-body">
			<ul class="chats-list recent-chats list-material message-list" data-nextstart="{nextStart}">
				<!-- BEGIN chats -->
				<li data-username="{chats.username}" data-uid="{chats.uid}" class="has-action-left<!-- IF chats.unread --> unread<!-- ENDIF chats.unread -->">
					<a href="#" class="visible" data-message-id="1">
						<div class="list-action-left">
							<img src="{chats.picture}" class="face-radius" alt="">
						</div>
						<div class="list-content">
							{chats.username}
						</div>
					</a>
				</li>
				<!-- END chats -->
			</ul>
		</div>
	</div>
</div>
<div class="col-sm-9">
	<!-- IF !allowed -->
	<div class="alert alert-warning">
		[[error:chat-restricted]]
	</div>
	<!-- ENDIF !allowed -->
	<!-- IF meta -->
	<div class="panel panel-default expanded-chat" data-uid="{meta.uid}" data-username="{meta.username}">
		<div class="panel-heading">
			<button type="button" class="close" data-action="pop-out"><span aria-hidden="true"><i class="fa fa-compress"></i></span><span class="sr-only">[[modules:chat.pop-out]]</span></button>
			<h2 class="panel-title">[[modules:chat.message-history]]</h2>
		</div>
		<div class="panel-body">
			<span class="since-bar"><a href="#" class="selected" data-since="recent">[[recent:title]]</a> &bull; <a href="#" data-since="week">[[modules:chat.seven_days]]</a> &bull; <a href="#" data-since="month">[[modules:chat.thirty_days]]</a> &bull; <a href="#" data-since="threemonths">[[modules:chat.three_months]]</a></span>
			<ul class="chat-content well well-sm">
				<!-- IMPORT partials/chat_messages.tpl -->
				<span class="user-typing pull-right hide"><i class="fa fa-pencil"></i> [[modules:chat.user_typing, {meta.username}]]</span>
			</ul>
			<div class="input-group">
				<div class="fg-line">
					<textarea placeholder="[[modules:chat.placeholder]]" class="form-control chat-input" rows="1"></textarea>
				</div>
				<span class="input-group-btn">
					<button class="btn btn-primary" type="button" data-action="send">Send</button>
				</span>
			</div>
		</div>
	</div>
	<!-- ELSE -->
	<div class="alert alert-info">
		[[modules:chat.no-messages]]
	</div>
	<!-- ENDIF meta -->
</div>