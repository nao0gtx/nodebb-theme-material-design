<div class="card" id="messages-main">
    <div class="ms-menu">   
        <div class="ms-block">

            <div class="panel-group" aria-multiselectable="true">
                <div class="panel panel-collapse">
                    <div class="panel-heading">
                        <h4 class="panel-title">
                            <a data-toggle="collapse" data-target=".recent-chats" aria-expanded="true">
                                [[modules:chat.recent-chats]]
                            </a>
                        </h4>
                    </div>
                    <div class="recent-chats collapse in">
                        <div class="panel-body">
                            <div class="chats-list listview lv-user">                                
                                <!-- BEGIN chats -->
                                <li class="lv-item media<!-- IF chats.unread --> unread<!-- ENDIF chats.unread -->" data-username="{chats.username}" data-uid="{chats.uid}">
                                    <div class="lv-avatar pull-left">
                                        <img src="{chats.picture}" alt="">
                                    </div>
                                    <div class="media-body">
                                        <div class="lv-title">{chats.username}</div>
                                    </div>
                                </li>
                                <!-- END chats -->     
                            </div>
                        </div>
                    </div>
                </div>
                <div class="panel panel-collapse">
                    <div class="panel-heading">
                        <h4 class="panel-title">
                            <a data-toggle="collapse" data-target=".contacts" aria-expanded="false">
                                [[modules:chat.contacts]]
                            </a>
                        </h4>
                    </div>
                    <div class="contacts collapse">
                        <div class="panel-body">
                            <div class="chats-list listview lv-user"> 
                                <!-- BEGIN contacts -->
                                <li class="lv-item media" data-username="{contacts.username}" data-uid="{contacts.uid}">
                                    <div class="lv-avatar pull-left">
                                        <img src="{contacts.picture}" alt="">
                                    </div>
                                    <div class="media-body">
                                        <div class="lv-title">{contacts.username}</div>
                                    </div>
                                </li>
                                <!-- END contacts --> 
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div> 
    </div>
    
    <div class="ms-body expanded-chat" data-uid="{meta.uid}" data-username="{meta.username}">
        <div class="listview lv-message">
            <div class="lv-header-alt bgm-white">
                <div id="ms-menu-trigger">
                    <div class="line-wrap">
                        <div class="line top"></div>
                        <div class="line center"></div>
                        <div class="line bottom"></div>
                    </div>
                </div>
                <!-- IF meta.username -->
                <div class="lvh-label">
                    <span>[[modules:chat.chatting_with]] {meta.username}</span>
                </div>
                <!-- ELSE -->
                <div class="lvh-label">
                    <div class="alert alert-info">
                        [[modules:chat.no-messages]]
                    </div>
                </div>
                <!-- ENDIF meta.username -->
            </div>
            
            <ul class="lv-body chat-content">
                <!-- IF meta -->
                <!-- IMPORT partials/chat_messages.tpl -->                                 
                <span class="user-typing pull-right hide"><i class="fa fa-pencil"></i> [[modules:chat.user_typing, {meta.username}]]</span>
                <!-- ENDIF meta -->
            </ul>
            <!-- IF meta -->
            <div class="lv-footer ms-reply">
                <textarea placeholder="[[modules:chat.placeholder]]" class="form-control chat-input" rows="1"></textarea>
                <button type="button" data-action="send"><i class="fa fa-send"></i></button>
            </div>
            <!-- ENDIF meta -->
            
        </div>
    </div>
</div>