---
layout: email
---
<table width="640" cellpadding="0" cellspacing="0" border="0" class="wrapper" bgcolor="#FFFFFF">
  <tr>
    <td height="10" style="font-size:10px; line-height:10px;">&nbsp;</td>
  </tr>
  <tr>
    <td align="center" valign="top">
			<!-- display trouble -->
			<table width="600" cellpadding="0" cellspacing="0" border="0" class="wrapper" bgcolor="#ffffff">
				<tr>
					<td align="center" valign="top">
						<table width="600" cellpadding="0" cellspacing="0" border="0" class="container">
							<tr>
								<td width="600" class="mobile" align="center" valign="top">
									<p style="color:gray">This email not displaying correctly?  Read this <a href="{{ page.url | absolute_url }}">online</a>.</p> 
								</td>
							</tr>
						</table>
					</td>
				</tr>
			</table>
		</td>
	</tr>

	<tr>
		<td align="center">
			<!-- LOGO -->
			<table width="600" cellpadding="0" cellspacing="0" border="0" class="wrapper" bgcolor="#ffffff">
				<tr>
					<td align="center" valign="top">
						<table width="600" cellpadding="0" cellspacing="0" border="0" class="container">
							<tr>
								<td width="600" class="mobile" align="center" valign="top">
									<h1 style="font-family:'Varela Round', sans-serif; font-weight:bold;">
									<span style="color:#3d85c6;font-family:'Varela Round', sans-serif;">{{ "Kode" }}</span><span style="color: #9fc5e8;;font-family:'Varela Round', sans-serif;">{{ "thon" }}</span> <span style="color:#F39237">News</span>
									</h1>
								</td>
							</tr>
						</table>
					</td>
				</tr>
			</table>

			<!-- Navbar -->
			<table width="600" cellpadding="0" cellspacing="0" border="0" class="wrapper" bgcolor="#ffffff" style="border: 1px solid lightgray">
				<tr>
					<td height="10" style="font-size:10px; line-height:10px;border-right:1px solid lightgrey">&nbsp;</td>
				</tr>
				<tr>
					<td align="center" valign="top">
						<table width="600" cellpadding="0" cellspacing="0" border="0" class="container">
							<tr>
								<td width="200" class="mobile" align="center" valign="top" style="border-right:1px solid grey">
									<a style="font-family:'Varela Round', sans-serif; font-weight:bold;text-decoration:none" href="https://kodethon.com">Kodethon</a>	
								</td>
								<td width="200" class="mobile" align="center" valign="top" style="border-right:1px solid grey">
									<a style="font-family:'Varela Round', sans-serif; font-weight:bold;text-decoration:none" href="https://blog.kodethon.com">Blog</a>	
								</td>
								<td width="200" class="mobile" align="center" valign="top">
									<a style="font-family:'Varela Round', sans-serif; font-weight:bold;text-decoration:none" href="https://forum.kodethon.com">Forum</a>	
								</td>
							</tr>
						</table>
					</td>
				</tr>
				<tr>
					<td height="10" style="font-size:10px; line-height:10px;">&nbsp;</td>
				</tr>
			</table>

			<!-- POSTS -->
			<table width="600" cellpadding="0" cellspacing="0" border="0">
				<tr>
					<td height="10" style="font-size:10px; line-height:10px;">&nbsp;</td>
				</tr>
				{% for post in site.posts limit:3 %}
				<tr>
					<td>
					<p style="font-family:'Varela Round', sans-serif; font-weight:bold;">{{ post.title }}<br>
					<small style="color:gray">{{ post.date | date: "%b %-d, %Y" }}
					{% for tag in post.tags %}		
					· <span>{{ tag }}</span>
					{% endfor %}
					</small></p>
					{{ post.excerpt }} 
					<table width="600" height="30" cellpadding="0" cellspacing="0" border="0" bgcolor="#3D85c6" style="">
					<tr>
						<td align="center" valign="middle" height="30" style="family: 'Varela Round', sans-serif; font-size:14px; font-weight:bold;">
							<a href="{{ post.bitly }}" target="_blank" style="font-family: 'Varela Round', sans-serif; color:#ffffff; display: inline-block; text-decoration: none; line-height:30px; width:600px; font-weight:bold;">Read Article</a>
						</td>
					</tr>

					</table>
					</td>
				</tr>
				<tr>
					<td height="20" style="font-size:10px; line-height:10px;">&nbsp;</td>
				</tr>
				{% endfor %}
			</table>
		</td>
	</tr>

  <tr>
    <td height="10" style="font-size:10px; line-height:10px;">&nbsp;</td>
  </tr>
</table>
