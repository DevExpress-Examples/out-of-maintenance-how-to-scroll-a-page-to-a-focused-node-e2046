using System;
using System.Data;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using DevExpress.Web.ASPxTreeList;

public partial class _Default : System.Web.UI.Page {
    protected void ASPxTreeListTest_HtmlRowPrepared(object sender, TreeListHtmlRowEventArgs e) {
        HyperLink anchor = new HyperLink();
        anchor.Attributes["name"] = e.NodeKey;
        e.Row.Cells[0].Controls.Add(anchor);
    }
}