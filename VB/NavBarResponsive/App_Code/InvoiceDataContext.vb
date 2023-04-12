Imports System.Collections.Generic
Imports System.ComponentModel
Imports System.Web
Imports System.Linq

<DataObject(True)>
Public Class InvoiceDataContext
	Private Property Invoices() As List(Of Invoice)
		Get
			If HttpContext.Current.Session("Invoices") Is Nothing Then
				Dim list As New List(Of Invoice)()

				list.Add(New Invoice(0, "Invoice1", 10.0D))
				list.Add(New Invoice(1, "Invoice2", 15.0D))
				list.Add(New Invoice(2, "Invoice3", 20.0D))

				HttpContext.Current.Session("Invoices") = list
				Return list
			Else
				Return CType(HttpContext.Current.Session("Invoices"), List(Of Invoice))
			End If
		End Get
		Set(ByVal value As List(Of Invoice))
			HttpContext.Current.Session("Invoices") = value
		End Set
	End Property

	<DataObjectMethod(DataObjectMethodType.Select, True)>
	Public Function GetInvoices() As List(Of Invoice)
		Return Invoices
	End Function

	<DataObjectMethod(DataObjectMethodType.Insert, True)>
	Public Sub InsertInvoice(ByVal invoice As Invoice)
'INSTANT VB NOTE: The variable invoices was renamed since Visual Basic does not handle local variables named the same as class members well:
		Dim invoices_Conflict As List(Of Invoice) = Invoices
		invoice.Id = Invoices.Max(Function(inv) inv.Id) + 1
		invoices_Conflict.Add(invoice)
		Invoices = invoices_Conflict
	End Sub

	<DataObjectMethod(DataObjectMethodType.Update, True)>
	Public Sub UpdateInvoice(ByVal invoice As Invoice)
'INSTANT VB NOTE: The variable invoices was renamed since Visual Basic does not handle local variables named the same as class members well:
		Dim invoices_Conflict As List(Of Invoice) = Invoices
		invoices_Conflict.Remove(invoice)
		invoices_Conflict.Add(invoice)
		Invoices = invoices_Conflict
	End Sub

	<DataObjectMethod(DataObjectMethodType.Delete, True)>
	Public Sub DeleteInvoice(ByVal invoice As Invoice)
'INSTANT VB NOTE: The variable invoices was renamed since Visual Basic does not handle local variables named the same as class members well:
		Dim invoices_Conflict As List(Of Invoice) = Invoices
		invoices_Conflict.Remove(invoice)
		Invoices = invoices_Conflict
	End Sub
End Class