<aside id="aside-searchbox" class="widget widget_search">
<form action="${ site.simple_search }" method="get">
<input type="hidden" name="q" value="site:${ site.url}" />
    <div>
        <label class="screen-reader-text" for="s"><@i18n.msg 'Search'/>：</label>
        <input class="search" type="text" name="q" results="0"/>
        <input type="submit" id="searchsubmit" value="<@i18n.msg 'Search'/>" />
    </div>
</form>
</aside>