Imports System.Data
Imports System.Data.SqlClient

Partial Class _Default
    Inherits System.Web.UI.Page


    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        If Session("toSet") = 1 Then
            setSearchVals()
        End If

        Try
            Dim specialty = Request.QueryString("spec")

            Dim name = Request.QueryString("name")

            Dim keyword = Request.QueryString("keyword")

            Dim hosp = Request.QueryString("hosp")


            Dim specialtyString As String = ""
            Dim nameString As String = ""
            Dim keywordString As String = ""
            Dim hospString As String = ""

            If specialty <> "All" Then
                specialtyString = "and (Speciality1 = '" & specialty & "' or SubSpec1 = '" & specialty & "' or SubSpec2 = '" & specialty & "') "
            End If

            If name <> "" Then
                nameString = "and CONTACT like '%" & name & "%' "
                'serchFilter.Text = name
            End If

            If keyword <> "" Then
                keywordString = "and (CONTACT like '%" & keyword & "%' or Qualification like '%" & keyword & "%' or Speciality1 like '%" & keyword & "%' or SubSpec1 like '%" & keyword & "%' or SubSpec2 like '%" & keyword & "%' or NHSBaseHospital1 like '%" & keyword & "%' or NHSBaseHospital2 like '%" & keyword & "%' or NHSBaseHospital3 like '%" & keyword & "%' or SpecialInterests like '%" & keyword & "%' or HCAHospital1 like '%" & keyword & "%' or HCAHospital2 like '%" & keyword & "%' or HCAHospital3 like '%" & keyword & "%' or HCAHospital4 like '%" & keyword & "%')"
                'serchFilter.Text = keyword
            End If

            If hosp = "Harley Street Clinic" Then
                hospString = "OnHarleyStreetWebsite = 'Yes'"
            ElseIf hosp = "Portland Hospital" Then
                hospString = "OnPortlandWebsite = 'Yes'"
            ElseIf hosp = "Princess Grace Hospital" Then
                hospString = "OnPrincessGraceWebsite = 'Yes'"
            ElseIf hosp = "Harley street @ UCH" Then
                hospString = "OnHarleyStreetWebsite = 'Yes'"
            ElseIf hosp = "All" Then
                hospString = "(OnHarleyStreetWebsite = 'Yes' or OnPortlandWebsite = 'Yes' or OnPrincessGraceWebsite = 'Yes') "
            End If

            Dim SelectCommand As String
            SelectCommand = "SELECT * FROM consultantsTest WHERE " & hospString & nameString & specialtyString & keywordString

            Dim Connection As String = "Data Source=SQL2K5.BYTEHOUSE.CO.UK;Initial Catalog=w432py7;Persist Security Info=True;User ID=tw9r0jj;Password=wallacehc1"
            Dim DataConnection As New SqlConnection(Connection)

            Dim cSearchResults As New DataSet()

            Dim DataCommand As New SqlDataAdapter(SelectCommand, DataConnection)

            DataCommand.Fill(cSearchResults)

            'add blurb if no results
            Dim isFull = cSearchResults.Tables(0).Rows.Count

            If isFull < 1 Then
                PlaceHolder1.Controls.Clear()
                Dim noResultsLI As New HtmlGenericControl
                noResultsLI.InnerHtml = "<div class='resultsHeader'><h3>Sorry</h3><p>We couldn't find any consultants matching those search terms. Please try a different search.</p></div>"

                PlaceHolder1.Controls.Add(noResultsLI)
            Else

                'add to list
                Repeater1.DataSource = cSearchResults
                Repeater1.DataBind()

            End If


        Catch

            PlaceHolder1.Controls.Clear()
            Dim noResultsLI As New HtmlGenericControl
            noResultsLI.InnerHtml = "<div class='resultsHeader'><h3>Sorry</h3><p>That search didnt work, try again</p></div>"
            PlaceHolder1.Controls.Add(noResultsLI)

        End Try

    End Sub

    Function setSearchVals()

        Dim bySpecialList As DropDownList = Master.FindControl("bySpecialList")
        Dim byNameField As TextBox = Master.FindControl("byNameField")
        Dim byKeywordField As TextBox = Master.FindControl("byKeywordField")
        Dim byHospitalList As DropDownList = Master.FindControl("byHospitalList")

        If Not (Session("bySpecialList") Is Nothing) Then
            bySpecialList.SelectedIndex = Session("bySpecialList")  'set to right index
        End If
        If Not (Session("byNameField") Is Nothing) Then
            byNameField.Text = Session("byNameField")
        End If
        If Not (Session("byKeywordField") Is Nothing) Then
            byKeywordField.Text = Session("byKeywordField")
        End If
        If Not (Session("byHospitalList") Is Nothing) Then
            byHospitalList.SelectedIndex = Session("byHospitalList") 'set to right index
        End If

        Session("toSet") = 0
    End Function

    Function whatColour(ByVal input As String, ByVal input2 As String, ByVal input3 As String)
        Dim output As String

        If input = "The Portland Hospital" Then
            output = "cSearchPort"
        ElseIf input = "The Princess Grace Hospital" Then
            output = "cSearchPrincess"
        ElseIf input = "The Harley Street Clinic" Then
            output = "cSearchHarley"
        ElseIf input2 = "The Portland Hospital" Then
            output = "cSearchPort"
        ElseIf input2 = "The Princess Grace Hospital" Then
            output = "cSearchPrincess"
        ElseIf input2 = "The Harley Street Clinic" Then
            output = "cSearchHarley"
        ElseIf input3 = "The Portland Hospital" Then
            output = "cSearchPort"
        ElseIf input3 = "The Princess Grace Hospital" Then
            output = "cSearchPrincess"
        ElseIf input3 = "The Harley Street Clinic" Then
            output = "cSearchHarley"
        Else
            output = ""
        End If
        Return output
    End Function

    Function whatName(ByVal input As String, ByVal input2 As String, ByVal input3 As String)
        Dim output As String

        If input = "The Portland Hospital" Then
            output = input
        ElseIf input = "The Princess Grace Hospital" Then
            output = input
        ElseIf input = "The Harley Street Clinic" Then
            output = input
        ElseIf input2 = "The Portland Hospital" Then
            output = input2
        ElseIf input2 = "The Princess Grace Hospital" Then
            output = input2
        ElseIf input2 = "The Harley Street Clinic" Then
            output = input2
        ElseIf input3 = "The Portland Hospital" Then
            output = input3
        ElseIf input3 = "The Princess Grace Hospital" Then
            output = input3
        ElseIf input3 = "The Harley Street Clinic" Then
            output = input3
        Else
            output = ""
        End If
        Return output
    End Function

End Class
