<!-- default badges list -->
[![](https://img.shields.io/badge/Open_in_DevExpress_Support_Center-FF7200?style=flat-square&logo=DevExpress&logoColor=white)](https://supportcenter.devexpress.com/ticket/details/E2046)
[![](https://img.shields.io/badge/📖_How_to_use_DevExpress_Examples-e9f6fc?style=flat-square)](https://docs.devexpress.com/GeneralInformation/403183)
<!-- default badges end -->
<!-- default file list -->
*Files to look at*:

* [Default.aspx](./CS/WebSite/Default.aspx) (VB: [Default.aspx](./VB/WebSite/Default.aspx))
* [Default.aspx.cs](./CS/WebSite/Default.aspx.cs) (VB: [Default.aspx.vb](./VB/WebSite/Default.aspx.vb))
<!-- default file list end -->
# How to scroll a page to a focused node
<!-- run online -->
**[[Run Online]](https://codecentral.devexpress.com/e2046/)**
<!-- run online end -->


<p>This sample illustrates how to scroll the ASPxTreeList's parent page to position the TreeList's focused node at the top of the page.</p>


<h3>Description</h3>

<p>We introduce an invisible anchor in each node by handling the <a href="http://documentation.devexpress.com/#AspNet/DevExpressWebASPxTreeListASPxTreeList_HtmlRowPreparedtopic">ASPxTreeList.HtmlRowPrepared</a> event. Node key value is used as the anchor&#39;s &quot;name&quot; attribute. Then the page is scrolled by setting the document.location.href property to the page&#39;s address with the corresponding anchor.</p>

<br/>


