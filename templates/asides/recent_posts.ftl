<aside id="aside-recent-posts" class="widget widget_recent_posts">
    <h3 class="widget-title"><@i18n.msg "Recent Posts"/></h3>
  
    <#if (site.posts?size <= site.recent_posts)>
	  <#assign recent_posts = site.posts >
	<#else>
	  <#assign recent_posts = site.posts[0..(site.recent_posts-1)]>
    </#if>
   <ul>

    <#list recent_posts as post>
      <li>
        <a href="${ root_url }${ post.url }">${titlecase(post.title)}</a>
      </li>
    </#list>
  </ul>
</aside>
