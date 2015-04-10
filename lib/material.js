$(document).ready(function() {

    /*
     * Top Search
     */
    (function(){
        $('body').on('click', '#top-search > a', function(e){
            e.preventDefault();
            
            $('#header').addClass('search-toggled');
        });
        
        $('body').on('click', '#top-search-close', function(e){
            e.preventDefault();
            
            $('#header').removeClass('search-toggled');
        });
    })();

    /*
     * Sidebar
     */
    (function(){
        //Toggle
        $('body').on('click', '#menu-trigger, #chat-trigger', function(e){            
            e.preventDefault();
            var x = $(this).data('trigger');
        
            $(x).toggleClass('toggled');
            $(this).toggleClass('open');
        
            //Close opened sub-menus
            $('.sub-menu.toggled').not('.active').each(function(){
                $(this).removeClass('toggled');
                $(this).find('ul').hide();
            });

        $('.profile-menu .main-menu').hide();
            
            if (x == '#sidebar') {
                $elem = '#sidebar';
                $elem2 = '#menu-trigger';
                
                $('#chat-trigger').removeClass('open');
                
                if (!$('#chat').hasClass('toggled')) {
                    $('#header').toggleClass('sidebar-toggled');
                }
                else {
                    $('#chat').removeClass('toggled');
                }
            }
            
            if (x == '#chat') {
                $elem = '#chat';
                $elem2 = '#chat-trigger';
                
                $('#menu-trigger').removeClass('open');
                
                if (!$('#sidebar').hasClass('toggled')) {
                    $('#header').toggleClass('sidebar-toggled');
                }
                else {
                    $('#sidebar').removeClass('toggled');
                }
            }
            
            //When clicking outside
            if ($('#header').hasClass('sidebar-toggled')) {
                $(document).on('click', function (e) {
                    if (($(e.target).closest($elem).length === 0) && ($(e.target).closest($elem2).length === 0)) {
                        setTimeout(function(){
                            $($elem).removeClass('toggled');
                            $('#header').removeClass('sidebar-toggled');
                            $($elem2).removeClass('open');
                            $('.profile-menu').toggleClass('toggled');
                        });
                    }
                });
            }
        })
        
        //Submenu
        $('body').on('click', '.sub-menu > a', function(e){
            e.preventDefault();
            $(this).next().slideToggle(200);
            $(this).parent().toggleClass('toggled');
        });
    })();


    /*
    * Profile Menu
    */
    $('body').on('click', '.profile-menu > a', function(e){
        e.preventDefault();
        $(this).parent().toggleClass('toggled');
        $(this).next().slideToggle(200);
    });



});


$(window).on('action:ajaxify.end', function() {


     /*
     * Waves Animation
     */
    (function(){
        var wavesList = ['.btn'];

        for(var x = 0; x < wavesList.length; x++) {
            if($(wavesList[x])[0]) {
                if($(wavesList[x]).is('a')) {
                    $(wavesList[x]).not('.btn-icon, input').addClass('waves-effect waves-button');
                }
                else {
                    $(wavesList[x]).not('.btn-icon, input').addClass('waves-effect');
                }
            }
        }

        setTimeout(function(){
            if ($('.waves-effect')[0]) {
               Waves.displayEffect();
            }
        });
    })();

    /*
     * Text Feild
     */
    
    //Add blue animated border and remove with condition when focus and blur
    if($('.fg-line')[0]) {
        $('body').on('focus', '.form-control', function(){
            $(this).closest('.fg-line').addClass('fg-toggled');
        })

        $('body').on('blur', '.form-control', function(){
            var p = $(this).closest('.form-group, .input-group');
            var i = p.find('.form-control').val();
            
            if (p.hasClass('fg-float')) {
                if (i.length == 0) {
                    $(this).closest('.fg-line').removeClass('fg-toggled');
                }
            }
            else {
                $(this).closest('.fg-line').removeClass('fg-toggled');
            }
        });
    }

    //Add blue border for pre-valued fg-flot text feilds
    if($('.fg-float')[0]) {
        $('.fg-float .form-control').each(function(){
            var i = $(this).val();
            
            if (!i.length == 0) {
                $(this).closest('.fg-line').addClass('fg-toggled');
            }
            
        });
    }

    /*
     * Dropdown Menu
     */
    if($('.dropdown')[0]) {
    //Propagate
    $('body').on('click', '.dropdown.open .dropdown-menu', function(e){
        e.stopPropagation();
    });
    
    $('.dropdown').on('shown.bs.dropdown', function (e) {
        if($(this).attr('data-animation')) {
        $animArray = [];
        $animation = $(this).data('animation');
        $animArray = $animation.split(',');
        $animationIn = 'animated '+$animArray[0];
        $animationOut = 'animated '+ $animArray[1];
        $animationDuration = ''
        if(!$animArray[2]) {
            $animationDuration = 500; //if duration is not defined, default is set to 500ms
        }
        else {
            $animationDuration = $animArray[2];
        }
        
        $(this).find('.dropdown-menu').removeClass($animationOut)
        $(this).find('.dropdown-menu').addClass($animationIn);
        }
    });
    
    $('.dropdown').on('hide.bs.dropdown', function (e) {
        if($(this).attr('data-animation')) {
            e.preventDefault();
            $this = $(this);
            $dropdownMenu = $this.find('.dropdown-menu');
        
            $dropdownMenu.addClass($animationOut);
            setTimeout(function(){
                $this.removeClass('open')
                
            }, $animationDuration);
            }
        });
    }
});