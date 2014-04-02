<#-- page.comments is not set or true -->
        <#if site.disqus_short_name?? && (page.comments)!true == true><#assign showComments = true>
        <div id="comments" class="comments-area">
            <div id="respond" class="comment-respond">
            <h3 id="reply-title" class="comment-reply-title"><@i18n.msg "Comments"/></h3>
                <div id="disqus_thread" aria-live="polite"><#include "disqus_thread.ftl"></div>
            </div><!-- #respond -->
        </div><!-- #comments .comments-area -->
        </#if>
            
        <#if site.duoshuo_short_name?? && (page.comments)!true == true><#assign showComments = true>
        <div id="comments" class="comments-area">
            <div id="respond" class="comment-respond">
            <h3 id="reply-title" class="comment-reply-title"><@i18n.msg "Comments"/></h3>
                <div id="ds-thread" class="ds-thread" data-thread-key="${root_url}${page.url}"<#if page.title??> data-title="${page.title}"></#if></div>
            </div><!-- #respond -->
        </div><!-- #comments .comments-area -->
        </#if>