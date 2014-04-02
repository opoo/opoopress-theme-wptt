<#macro pageLayout>
<#include "_default.ftl">
<@defaultLayout><#t/>
<#assign pageid = page.url?replace('/','')>
<div id="primary" class="site-content">
	<div id="content" role="main">
					
    <article id="page-${pageid}" class="post-${pageid} page type-page status-publish hentry">
		<header class="entry-header"><h1 class="entry-title">${titlecase(page.title)}</h1></header>

		<div class="entry-content"><#nested></div><!-- .entry-content -->
		<footer class="entry-meta"></footer><!-- .entry-meta -->
	</article><!-- #page -->

    <#include "post/comments.ftl">
		
	</div><!-- #content -->
</div><!-- #primary -->

<div id="secondary" class="widget-area" role="complementary">
	<#include "asides/page_asides.ftl">
</div><!-- #secondary -->
</@defaultLayout>
</#macro>