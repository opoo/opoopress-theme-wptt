<!DOCTYPE html><#assign _lang = site.locale?replace('_', '-')>
<!--[if IE 7]>
<html class="ie ie7" lang="${_lang}">
<![endif]-->
<!--[if IE 8]>
<html class="ie ie8" lang="${_lang}">
<![endif]-->
<!--[if !(IE 7) | !(IE 8)  ]><!-->
<html lang="${_lang}">
<!--<![endif]-->
<head>
  <meta charset="utf-8">
  <title><#if (page.title)??>${page.title} - </#if>${site.title}</title>
  <meta name="author" content="${site.author}">
  <#-- maybe content?substring(0,150) -->
  <#if site.description?? && page.url == '/'><meta name="description" content="${site.description}"><#elseif page.description??><meta name="description" content="${page.description}"></#if>
  <#-- meta keywords is deprecated -->
  <#--if page.keywords??><meta name="keywords" content="${ page.keywords }"></#if-->
  <meta name="HandheldFriendly" content="True">
  <meta name="MobileOptimized" content="320">
  <meta name="OpooPressSiteRoot" content="${ root_url }">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <meta name="Generator" content="OpooPress-${version}"/>
  <meta name="Generated" content="${site.time?datetime?iso_local}"/>
  <link rel="canonical" href="${root_url}${page.url}">
  <#if (paginator.next)??><link href="${root_url}${paginator.next.url}" rel="next" /></#if>
  <#if (paginator.previous)??><link href="${root_url}${paginator.previous.url}" rel="prev" /></#if>
  <link href="${ root_url }/favicon.ico" rel="icon">
  <link href="${ site.subscribe_rss }" rel="alternate" title="${site.title}" type="application/atom+xml">
  <!--[if lt IE 9]>
  <script src="${root_url}/javascripts/html5.js" type="text/javascript"></script>
  <![endif]-->
  <link rel='stylesheet' id='twentytwelve-fonts-css'  href='http://fonts.googleapis.com/css?family=Open+Sans:400italic,700italic,400,700&#038;subset=latin,latin-ext' type='text/css' media='all' />
  <link rel='stylesheet' id='twentytwelve-style-css'  href='${root_url}/stylesheets/style.css' type='text/css' media='all' />
  <!--[if lt IE 9]>
  <link rel='stylesheet' id='twentytwelve-ie-css'  href='${root_url}/stylesheets/ie.css' type='text/css' media='all' />
  <![endif]-->
  <#if (highlighter?? && highlighter == "SyntaxHighlighter")>
  <link type="text/css" rel="stylesheet" href="${root_url}/plugins/syntax-highlighter/styles/shCoreDefault.css"/>
  </#if>
</head>
