<!DOCTYPE html>
<html>
<head>
	<title>{browserTitle}</title>
	<!-- BEGIN metaTags -->
	{function.buildMetaTag}
	<!-- END metaTags -->
	<link rel="stylesheet" type="text/css" href="{relative_path}/stylesheet.css?{css-buster}" />
	<!-- IF bootswatchCSS --><link href="{bootswatchCSS}" rel="stylesheet" media="screen"><!-- ENDIF bootswatchCSS -->
	<!-- BEGIN linkTags -->
	<link<!-- IF linkTags.link --> link="{linkTags.link}"<!-- ENDIF linkTags.link --><!-- IF linkTags.rel --> rel="{linkTags.rel}"<!-- ENDIF linkTags.rel --><!-- IF linkTags.type --> type="{linkTags.type}"<!-- ENDIF linkTags.type --><!-- IF linkTags.href --> href="{linkTags.href}"<!-- ENDIF linkTags.href --> />
	<!-- END linkTags -->
	<!-- IF useCustomCSS -->
	<style type="text/css">{customCSS}</style>
	<!-- ENDIF useCustomCSS -->

	<!--[if lt IE 9]>
  		<script src="//cdnjs.cloudflare.com/ajax/libs/es5-shim/2.3.0/es5-shim.min.js"></script>
  		<script src="//cdnjs.cloudflare.com/ajax/libs/html5shiv/3.7/html5shiv.js"></script>
  		<script src="//cdnjs.cloudflare.com/ajax/libs/respond.js/1.4.2/respond.js"></script>
  		<script>__lt_ie_9__ = 1;</script>
	<![endif]-->

	<script>
		var RELATIVE_PATH = "{relative_path}";
		var config = JSON.parse('{configJSON}');
		var app = {
			template: "{template.name}"
		};
		app.user = JSON.parse('{userJSON}');
	</script>
	<script src="{relative_path}/nodebb.min.js?{script-buster}"></script>
	<!-- IMPORT partials/requirejs-config.tpl -->
	<!-- IF useCustomJS -->
	{customJS}
	<!-- ENDIF useCustomJS -->
</head>

<body>
<header id="header">
            <ul class="header-inner">
                <li id="menu-trigger" data-trigger="#sidebar">
                    <div class="line-wrap">
                        <div class="line top"></div>
                        <div class="line center"></div>
                        <div class="line bottom"></div>
                    </div>
                </li>
            

            	<li class="logo">

					<!-- IF showSiteTitle -->
					<a href="{relative_path}/">
						{title}
					</a>
					<!-- ENDIF showSiteTitle -->
                </li>

                <li class="pull-right">
                <ul class="top-menu">
                    <li>
                        <a href="#" id="reconnect" class="hide" title="Connection to {title} has been lost, attempting to reconnect...">
                            <i class="fa fa-check"></i>
                        </a>
                    </li>
                    <!-- IF searchEnabled -->
                    <li id="top-search">
                        <a class="tm-search" href=""><i class="fa fa-fw fa-search"></i></a>
                    </li>
                    <!-- ENDIF searchEnabled -->
					
					<!-- IF loggedIn -->
                    <li class="dropdown">
                        <a data-toggle="dropdown" class="tm-notification" href=""><i class="fa fa-fw fa-bell-o" data-content="0"></i><i class="tmn-counts">9</i></a>
                        <div class="dropdown-menu dropdown-menu-lg pull-right">
                            <div class="listview" id="notifications">
                                <div class="lv-header">
                                    <!-- IF !notifications.length -->
									[[notifications:no_notifs]]
									<!-- ENDIF !notifications.length -->
                                    <ul class="actions">
                                        <li class="dropdown">
                                            <a href="" data-clear="notification">
                                                <i class="fa fa-fw fa-check-square-o"></i>
                                            </a>
                                        </li>
                                    </ul>
                                </div>
                                <!-- BEGIN notifications -->
								<div class="lv-body c-overflow">
									<a class="lv-item" href="">
                                        <div class="media">
                                            <!-- IF notifications.image -->
                                            <div class="pull-left">
                                                <img class="lv-img-sm" src="{notifications.image}" alt="">
                                            </div>
                                            <!-- IF notifications.image -->
                                            <div class="media-body">
                                            	<span class="pull-right relTime">{notifications.timeago}</span>
                                                <small class="lv-small">{notifications.bodyShort}</small>
                                            </div>
                                        </div>
                                    </a>
								</div>
								<!-- END notifications -->
                    
                                <a class="lv-footer" href="{relative_path}/notifications">[[notifications:see_all]]</a>
                            </div>
                    
                        </div>
                    </li>
                    
                    <li class="dropdown">
                        <a data-toggle="dropdown" class="tm-message" href=""><i class="fa fa-fw fa-comment-o"></i><i class="tmn-counts">6</i></a>
                        <div class="dropdown-menu dropdown-menu-lg pull-right">
                            <div class="listview">
                                <div class="lv-header">
                                    [[global:header.chats]]
                                </div>
                                <!-- BEGIN messages -->
                                <div class="lv-body c-overflow">
                                    <a class="lv-item" href="">
                                        <div class="media">
                                            <div class="pull-left">
                                                <img class="lv-img-sm" src="{messages.fromUser.picture}" alt="">
                                            </div>
                                            <div class="media-body">
                                                <small class="lv-small">{messages.content}</small>
                                            </div>
                                        </div>
                                    </a>
                                </div>
                                <!-- END messages -->
                                <a class="lv-footer" href="{relative_path}/chats">[[modules:chat.see_all]]</a>
                            </div>
                        </div>
                    </li>
                    <!-- ELSE -->
                    <!-- IF allowRegistration -->
                    <li>
                        <a href="{relative_path}/register">
							<i class="fa fa-pencil visible-xs-inline"></i>
							<span>[[global:register]]</span>
						</a>
                    </li>
                    <!-- ENDIF allowRegistration -->
                    <li>
                    	<a href="{relative_path}/login">
							<i class="fa fa-sign-in visible-xs-inline"></i>
							<span>[[global:login]]</span>
						</a>
                    </li>
                    <!-- ENDIF loggedIn -->
                    
                    </ul>
                </li>

                <li component="navbar/title" class="navbar-title pull-right hidden-xs">
                    <span></span>
                </li>
            </ul>
            
            <!-- Top Search Content -->
            <div id="top-search-wrap">
                <input type="text" placeholder="[[global:search]]" name="query" value="">
                <i id="top-search-close">&times;</i>
            </div>
        </header>

		<section id="main">
            <aside id="sidebar">
                <div class="sidebar-inner">
                    <div class="si-inner">
                        <div class="profile-menu">
                            <a href="">
                                <div class="profile-pic">
                                    <img src="{picture}" alt="">
                                </div>
                
                                <div class="profile-info">
                                    {username}
                
                                    <i class="fa fa-fw fa-chevron-down"></i>
                                </div>
                            </a>
                            <!-- IF loggedIn -->
                            <ul class="main-menu">
                                <li>
                                    <a id="user-profile-link" href="{relative_path}/user/{user.userslug}"><i class="fa fa-fw fa-user"></i> [[global:header.profile]]</a>
                                </li>
                                <li>
                                    <a href="{relative_path}/user/{user.userslug}/settings"><i class="fa fa-fw fa-cogs"></i> Settings</a>
                                </li>
                                <li id="logout-link">
                                    <a href="#"><i class="fa fa-fw fa-sign-out"></i> [[global:logout]]</a>
                                </li>
                            </ul>
                            <!-- IF loggedIn -->
                            <!-- ELSE -->
							<ul class="main-menu">
                                <!-- IF allowRegistration -->
                                <li>
                                    <a href="{relative_path}/register"><i class="fa fa-fw fa-pencil"></i> [[global:register]]</a>
                                </li>
                                <!-- ENDIF allowRegistration -->
                                <li>
                                    <a href="{relative_path}/login"><i class="fa fa-fw fa-sign-in"></i> [[global:login]]</a>
                                </li>
                            </ul>
                            <!-- ENDIF loggedIn -->
                        </div>
                
                        <ul class="main-menu">
                            
							<!-- BEGIN navigation -->
							<!-- IF function.displayMenuItem, @index -->
							<li class="{navigation.class}">
								<a href="{relative_path}{navigation.route}" title="{navigation.title}" id="{navigation.id}" target="{navigation.properties.target}">
									<!-- IF navigation.iconClass -->
									<i class="fa fa-fw {navigation.iconClass}"></i>
									<!-- ENDIF navigation.iconClass -->
									<!-- IF navigation.text -->
									{navigation.text}
									<!-- ENDIF navigation.text -->
								</a>
							</li>
							<!-- ENDIF function.displayMenuItem -->
							<!-- END navigation -->
                        </ul>
                    </div>
                </div>
            </aside>
        </section>

	<div class="container" id="content">
	<!-- IMPORT partials/noscript/warning.tpl -->