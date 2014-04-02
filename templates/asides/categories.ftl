<#if site.categories?? &&  (site.categories?size > 0)>
<#macro subcategory parent level>
<#if (parent.children?size > 0)>
    <ul class="children${level}">
<#list parent.children as child>
	<#if (child.posts?size > 0)>
	<li class="cat-item cat-item-${child.url?replace('/','')}"><a href="${root_url}${child.url}" title="查看${child.name}下的${child.posts?size}篇文章">${child.name}</a><#-- <span class="count right">${child.posts?size}</span> -->
	<@subcategory parent=child level=level+1/></li>
	</#if>
</#list>
    </ul>
</#if>
</#macro>


<aside id="aside-categories" class="widget widget_categories">
    <h3 class="widget-title"><@i18n.msg "Categories"/></h3>		
    <ul>
    <#list site.categories as category>
        <#if !(category.parent)?? && (category.posts?size > 0)>
        <li class="cat-item cat-item-${category.url?replace('/','')}"><a href="${root_url}${category.url}" title="查看${category.name}下的${category.posts?size}篇文章">${category.name}</a><#-- <span class="count right">${category.posts?size}</span> -->
        <@subcategory parent=category level=1/></li>
        </#if>
    </#list>
	</ul>
</aside>
</#if>
