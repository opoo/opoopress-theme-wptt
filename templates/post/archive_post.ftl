<#assign postid = post.url?replace('/','')>
<article id="post-${postid}" class="post-${postid} post type-post status-publish format-standard hentry">
    <header class="entry-header">
        <h1 class="entry-title"><a href="${ root_url }${ post.url }" rel="bookmark">${titlecase(post.title)}</a></h1>
        
        <div class="comments-link">				
        </div><!-- .comments-link -->
    </header><!-- .entry-header -->

    <#-- <div class="entry-content"></div> --><!-- .entry-content -->
    
    <footer class="entry-meta">
        发布于<#include "/post/date.ftl"><#if was_updated??>${updated}<#else>${time}</#if>
        <#include "/post/categories.ftl">							
    </footer><!-- .entry-meta -->
</article><!-- #post -->
