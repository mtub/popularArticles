{**
 * plugins/blocks/popularArticles/templates/block.tpl
 *
 * Copyright (c) 2013-2014 Simon Fraser University Library
 * Copyright (c) 2003-2014 John Willinsky
 * Distributed under the GNU GPL v2. For full terms see the file docs/COPYING.
 *
 * Most Popular Articles.
 *
 *}
<div class="block" id="sidebarPopularArticles">
	<span class="blockTitle">{translate key="plugins.blocks.popularArticles.displayName"}</span>
{foreach from=$popularArticles item=articleInfo}
	{assign var=article value=$articleInfo.article}
	<a href="{url page="article" op="view" path=$article->getArticleId()}">{$article->getArticleTitle()|escape}</a><br />
{/foreach}
</div>
