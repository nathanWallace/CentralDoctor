
Partial Class MasterPage
    Inherits System.Web.UI.MasterPage



    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If IsPostBack = False Then
            Session("toSet") = 0
        End If

    End Sub

    Protected Sub byKeywordButton_Click(ByVal sender As Object, ByVal e As System.Web.UI.ImageClickEventArgs) Handles byKeywordButton.Click
        Dim specialty = bySpecialList.SelectedValue
        Dim name = byNameField.Text
        Dim keyword = byKeywordField.Text
        Dim hospital = byHospitalList.SelectedValue

        Session("bySpecialList") = bySpecialList.SelectedIndex
        Session("byNameField") = name
        Session("byKeywordField") = keyword
        Session("byHospitalList") = byHospitalList.SelectedIndex

        Session("toSet") = 1

        Response.Redirect("consultantSearch.aspx?name=" & name & "&spec=" & specialty & "&keyword=" & keyword & "&hosp=" & hospital)
    End Sub

End Class

