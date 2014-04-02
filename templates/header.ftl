<header id="masthead" class="site-header" role="banner">
		<hgroup>
			<h1 class="site-title"><a href="${ root_url }/" title="${ site.title }" rel="home">${ site.title }</a></h1>
			<#if site.subtitle??><h2 class="site-description">${ site.subtitle }</h2></#if>
		</hgroup>

		<nav id="site-navigation" class="main-navigation" role="navigation">
			<h3 class="menu-toggle">菜单</h3>
			<a class="assistive-text" href="#content" title="跳至内容">跳至内容</a>
			<div class="nav-menu"><ul>
                <#list site.navs?keys as navLabel>
                <li class="page_item"><a href="${site.navs[navLabel]}">${navLabel}</a></li>
                </#list>
            </ul></div>
		</nav><!-- #site-navigation -->

</header><!-- #masthead -->