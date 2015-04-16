<div class="lv-item media<!-- IF messages.self --> right<!-- ENDIF messages.self -->" data-uid="{messages.fromuid}" data-self="{messages.self}" data-break="{messages.newSet}">
    <div class="lv-avatar <!-- IF messages.self --> pull-right<!-- ELSE --> pull-left<!-- ENDIF messages.self -->">
        <img src="{messages.fromUser.picture}" alt="">
    </div>
    <div class="media-body">
        <div class="ms-item">
            {messages.content}
        </div>
    </div>
</div>