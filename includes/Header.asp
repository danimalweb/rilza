<% Option Explicit

Response.Expires = 0
Response.ExpiresAbsolute = Now() - 1
Response.addHeader "pragma","no-cache"
Response.addHeader "cache-control","private"
Response.CacheControl = "no-cache"

Dim BgColor

If Len(Request.QueryString("PrettyColor")) > 1 Then
	BgColor = Request.QueryString("PrettyColor")
End If

If Len(BgColor) > 0 Then
	'Set Cookies
	Response.Cookies("Rilza")("BgColor") = BgColor
	Response.Cookies("Rilza").Expires = "January 1, 2003"
Else
	'Check For Cookies
	BgColor = Request.Cookies("Rilza")("BgColor")
End If %>

<html>
<head>
	<title>Rilza - Dan, you're such a hippy!</title>
	<link rel="stylesheet" href="includes/RilStyle.css">
</head>
<body>
<table border="0" cellpadding="0" cellspacing="0" valign="middle" width="100%" height="100%">
	<tr>
		<td>
			<table border="0" cellpadding="0" cellspacing="0" class="<%=BgColor%>" width="100%"> 
				<tr height="30">
					<td width="45" bgcolor="#ffffff">&nbsp;</td>
					<td width="78" bgcolor="#ffffff" background="images/<%=BgColor%>topbit.gif">&nbsp;</td>
					<td width="10" bgcolor="#ffffff">&nbsp;</td>
					<td>
						<table cellpadding="0" cellspacing="0" border="0" width="100%">
							<tr height="30">
								<td width="14" background="images/<%=BgColor%>topleftmiddle.gif" bgcolor="#ffffff">&nbsp;</td>
								<td background="images/<%=BgColor%>topmiddle.gif">&nbsp;</td>
								<td width="13" background="images/<%=BgColor%>toprightmiddle.gif"  bgcolor="#ffffff">&nbsp;</td>
							</tr>
						</table>
					</td>
					<td width="10" bgcolor="#ffffff">&nbsp;</td>
					<td width="120" bgcolor="#ffffff">&nbsp;</td>
				</tr>
				<tr height="10">
					<td bgcolor="#ffffff"><img src="images/blank.gif" alt="" width="1" height="10" border="0"></td>
					<td align="center" valign="center"><font face="Arial,Helvetica,sans-serif" size="1" color="Black"><b><%=date%></b></font></td>
					<td bgcolor="#ffffff"><img src="images/blank.gif" alt="" width="1" height="10" border="0"></td>
					<td><img src="images/blank.gif" alt="" width="1" height="10" border="0"></td>
					<td bgcolor="#ffffff"><img src="images/blank.gif" alt="" width="1" height="10" border="0"></td>
					<td bgcolor="#ffffff"><img src="images/blank.gif" alt="" width="1" height="10" border="0"></td>
				</tr>
				<tr height="350">
					<td bgcolor="#ffffff" background="images/<%=BgColor%>left.gif">
						<table border="0" cellpadding="0" cellspacing="0" width="100%" height="100%">
							<tr>
								<td width="10">&nbsp;</td>
								<td>
									<table border="0" cellpadding="0" cellspacing="0" width="100%" height="100%">
										<tr height="100">
											<td>&nbsp;</td>
										</tr>
										<tr>
											<td valign="top">
												<A HREF="index.asp?PrettyColor=Green" onMouseOver="document.img7.src='images/greenfade.gif';" onMouseOut="document.img7.src='images/greenbox.gif';" title="Green Rizla for you sir?"><IMG NAME="img7" BORDER=NO SRC="images/greenbox.gif" WIDTH=27 HEIGHT=27></A><br><br>
												<A HREF="index.asp?PrettyColor=Blue" onMouseOver="document.img6.src='images/bluefade.gif';" onMouseOut="document.img6.src='images/bluebox.gif';" title="Blue Rizla for you sir?"><IMG NAME="img6" BORDER=NO SRC="images/bluebox.gif" WIDTH=27 HEIGHT=27></A><br><br>
												<A HREF="index.asp?PrettyColor=Red" onMouseOver="document.img5.src='images/redfade.gif';" onMouseOut="document.img5.src='images/redbox.gif';" title="Red Rizla for you sir?"><IMG NAME="img5" BORDER=NO SRC="images/redbox.gif" WIDTH=27 HEIGHT=27></A><br><br>
											</td>
										</tr>
									</table>
								</td>
							</tr>
						</table>
					</td>
					<td>
						<table border="0" cellpadding="0" cellspacing="0" width="100%" height="100%">
							<tr>
								<td width="28"><img src="images/riz.gif" width="25" height="108" border="0" alt=""></td>
								<td width="23" bgcolor="#ffffff" width="20">&nbsp;</td>
								<td width="27" align="center" valign="center"><img src="images/ArtOf.gif" width="12" height="147" border="0" alt=""></td>
							</tr>
						</table>
					</td>
					<td width="12"><img src="images/gummed.gif" width="12" height="235" border="0" alt=""></td>
					<td>
