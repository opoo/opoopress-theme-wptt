<#macro defaultLayout><#t/>
<#include "head.ftl">
<body>
<div id="page" class="hfeed site">
  <#include "header.ftl">
  <div id="main" class="wrapper">
    <#nested>
  </div><!-- #main .wrapper -->
  <#include "footer.ftl">
</div><!-- #page -->
<#include "after_footer.ftl">
</body>
</html>
</#macro>
