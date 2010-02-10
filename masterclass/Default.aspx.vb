Imports System.Net.Mail


Partial Class _Default
    Inherits System.Web.UI.Page

    <System.Web.Services.WebMethod()> _
Public Shared Function sendMail(ByVal first As String, ByVal surname As String, ByVal tel As String, ByVal email As String, ByVal practice As String, ByVal add1 As String, ByVal add2 As String, ByVal city As String, ByVal postcode As String, ByVal attentOnline As String, ByVal diet As String, ByVal Date2703 As String, ByVal Date0805 As String, ByVal Date1907 As String, ByVal Date1809 As String)

        'send emails

        Dim Msg As MailMessage = New MailMessage()
        Dim MailObj As New SmtpClient("mail.Anisha.co.uk")

        Msg.From = New MailAddress("registration@centraldoctor.co.uk")
        Msg.To.Add(New MailAddress("events@rsm.ac.uk"))
        Msg.To.Add(New MailAddress("jacqui.teixeira@hcahealthcare.co.uk"))

        Msg.IsBodyHtml = "true"
        Msg.Body = "<p style=""font-size: 14px;""><span style=""font-weight: bold;"">" & first & surname & "</span> wishes to register for the Endoscopy Masterclass, details are below:</p><br /><p style=""font-size: 14px;"">first :<span style=""font-weight: bold;"">" & first & "</span></p><p style=""font-size: 14px;"">surname :<span style=""font-weight: bold;"">" & surname & "</span></p><p style=""font-size: 14px;"">tell :<span style=""font-weight: bold;"">" & tel & "</span></p><p style=""font-size: 14px;"">email :<span style=""font-weight: bold;"">" & email & "</span></p><p style=""font-size: 14px;"">practice name :<span style=""font-weight: bold;"">" & practice & "</span></p><p style=""font-size: 14px;"">address :<span style=""font-weight: bold;"">" & add1 & "</span></p><p style=""font-size: 14px;"">address cont.:<span style=""font-weight: bold;"">" & add2 & "</span></p><p style=""font-size: 14px;"">city :<span style=""font-weight: bold;"">" & city & "</span></p><p style=""font-size: 14px;"">postcode :<span style=""font-weight: bold;"">" & postcode & "</span></p><p style=""font-size: 14px;"">attend online:<span style=""font-weight: bold;"">" & attentOnline & "</span></p><p style=""font-size: 14px;"">dietary requirements:<span style=""font-weight: bold;"">" & diet & "</span></p><p style=""font-size: 14px;"">interested in march:<span style=""font-weight: bold;"">" & Date2703 & "</span></p><p style=""font-size: 14px;"">interested in may:<span style=""font-weight: bold;"">" & Date0805 & "</span></p><p style=""font-size: 14px;"">interested in july:<span style=""font-weight: bold;"">" & Date1907 & "</span></p><p style=""font-size: 14px;"">interested in september:<span style=""font-weight: bold;"">" & Date1809 & "</span></p>"

        Msg.Subject = "ENDOSCOPY MASTERCLASS RSVP"

        MailObj.Send(Msg)

    End Function

End Class
