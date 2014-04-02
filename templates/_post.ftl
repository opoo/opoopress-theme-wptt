<#assign single = true>
<#macro postLayout>
<#include "_default.ftl">
<@defaultLayout><#t/>
<div id="primary" class="site-content">
	<div id="content" role="main">			
        <article id="post" class="post type-post status-publish format-standard hentry">
            <header class="entry-header">
                <h1 class="entry-title">${page.title}</h1>
                    <#-- 评论链接 -->
                    <#if (page.comments)!true == true && (post.comments)!true == true && 
                    (      (site.disqus_short_name?? && (site.disqus_show_comment_count)!false == true) 
                        || (site.duoshuo_short_name?? && (site.duoshuo_show_comment_count)!false == true)
                    )>
                    <div class="comments-link">
                        <a href="#respond" title="《${page.title}》上的评论"><span class="leave-reply"><@i18n.msg "Comments"/></span></a>				
                    </div><!-- .comments-link -->
                    </#if>

            </header><!-- .entry-header -->

            <div class="entry-content"><#nested></div><!-- .entry-content -->
            
            <footer class="entry-meta">
                本条目发布于<#include "post/date.ftl"><#if was_updated??>${updated}<#else>${time}</#if>
                <#include "post/categories.ftl">
            </footer><!-- .entry-meta -->
        </article><!-- #post -->

        <#if (page.sharing)!true == true>
        <#include "post/sharing.ftl">
	    </#if>

	    <#if (page.related_posts)?? && (page.related_posts?size > 0)>
	    <#include "post/related_posts.ftl">
	    </#if>

        <nav class="nav-single">
            <h3 class="assistive-text">文章导航</h3>
            <span class="nav-previous">
                <#if (page.previous.url)??>
                <a href="${root_url}${page.previous.url}" rel="prev" title="<@i18n.msg "Previous Post"/>: ${page.previous.title}"><span class="meta-nav">&larr;</span> ${page.previous.title}</a>
                </#if>
            </span>
            <span class="nav-next">
                <#if (page.next.url)??>
                <a href="${root_url}${page.next.url}" rel="next" title="<@i18n.msg "Next Post"/>: ${page.next.title}">${page.next.title} <span class="meta-nav">&raquo;</span></a>
                </#if>
            </span>
        </nav><!-- .nav-single -->

        <#include "post/comments.ftl">
			
    </div><!-- #content -->
</div><!-- #primary -->

<div id="secondary" class="widget-area" role="complementary">
<#include "asides/post_asides.ftl">
</div><!-- #secondary -->

</@defaultLayout>
</#macro>