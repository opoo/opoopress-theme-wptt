<div id="related-posts-list" class="related-posts comment-respond">
    <h3 id="reply-title" class="related-posts-title"><@i18n.msg "Related Posts"/></h3>
    <ul>
    <#list page.related_posts as post>
      <li>
        <a href="${ root_url }${ post.url }">${titlecase(post.title)}</a>
        <div class="source right"><time datetime="${post.date?string("yyyy-MM-dd'T'HH:mm:ss")}">${post.date?string("yyyy-MM-dd")}</time></div>
      </li>
    </#list>
  </ul>
</div>
