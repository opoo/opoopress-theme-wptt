<#if (site.tags?size > 0)>
<aside id="aside-tag-cloud" class="widget widget_tag_cloud">
    <h3 class="widget-title"><@i18n.msg "Tags"/></h3>
    <div class="tagcloud">
    <#list site.tags?sort_by("postSize")?reverse as tag>
	<#if (tag.postSize > 0)><a href="${root_url}${tag.url}" class="tag-link-${tag.url?replace('/','')}" title="${tag.postSize}篇文章" style='font-size: 8pt;'>${tag.name}</a></#if>
    </#list>
    </div>
</aside>
</#if>