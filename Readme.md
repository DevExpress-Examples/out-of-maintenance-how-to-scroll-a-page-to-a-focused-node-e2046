# How to scroll a page to a focused node


<p>This sample illustrates how to scroll the ASPxTreeList's parent page to position the TreeList's focused node at the top of the page.</p>


<h3>Description</h3>

<p>We introduce an invisible anchor in each node by handling the <a href="http://documentation.devexpress.com/#AspNet/DevExpressWebASPxTreeListASPxTreeList_HtmlRowPreparedtopic">ASPxTreeList.HtmlRowPrepared</a> event. Node key value is used as the anchor&#39;s &quot;name&quot; attribute. Then the page is scrolled by setting the document.location.href property to the page&#39;s address with the corresponding anchor.</p>

<br/>


