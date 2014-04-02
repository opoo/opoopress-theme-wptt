<#if site.github_user??>
<#assign showGitHubRepos = true>
<aside id="aside-github" class="widget widget_github">
    <h3 class="widget-title">GitHub Repos</h3>	
    <ul id="gh_repos">
        <li class="loading">Status updating...</li>
    </ul>
    <#if site.github_show_profile_link>
    <a href="https://github.com/${site.github_user}">@${site.github_user}</a> on GitHub
    </#if>
</aside>
</#if>
