<div class="block-header">
    <h4>Chats</h4>
</div>

<div class="card" id="messages-main">
    <div class="ms-menu">        
        <div class="chats-list listview lv-user m-t-20">                                

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
    
    <div class="ms-body expanded-chat" data-uid="{meta.uid}" data-username="{meta.username}">
        <div class="listview lv-message">
            <div class="lv-body chat-content">
                <!-- IMPORT partials/chat_messages.tpl -->                                 
                <span class="user-typing pull-right hide"><i class="fa fa-pencil"></i> [[modules:chat.user_typing, {meta.username}]]</span>
            </div>
            <div class="lv-footer ms-reply">
                <textarea placeholder="[[modules:chat.placeholder]]" class="form-control chat-input" rows="1"></textarea>
                
                <button type="button" data-action="send"><i class="fa fa-send"></i></button>
            </div>
        </div>
    </div>
</div>