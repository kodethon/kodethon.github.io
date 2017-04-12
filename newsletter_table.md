---
layout: email 
---

<table class="row">
	<tbody>
		<tr>
			<th class="small-12 large-12 columns first last">
				<table>
					<tr>
						<th>
							<h1 class="text-center" style="font-family:'Varela Round', sans-serif; font-weight:bold; margin:0"><a href="https://kodethon.com"><span style="color:#3d85c6;font-family:'Varela Round', sans-serif;">{{ "Kode" }}</span><span style="color: #9fc5e8;;font-family:'Varela Round', sans-serif;">{{ "thon" }}</span></a> <span style="color:#F39237">News</span></h1>
							<hr>
							<table class="spacer">
								<tbody>
									<tr>
										<td height="16px" style="font-size:16px;line-height:16px;">&#xA0;</td>
									</tr>
								</tbody>
							</table>
							{% for post in site.posts limit:3 %}
							<h2>{{ post.title }}</h2>
							<p style="color:gray">{{ post.date | date: "%b %-d, %Y" }}
							{% for tag in post.tags %}		
							· <span style="color:gray"><i class="fa fa-tag" aria-hidden="true"></i> {{ tag }}</span>
							{% endfor %}
							</p>
							{{ post.excerpt }} 
							<table class="button primary">
								<tbody>
									<tr>
										<td>
											<table>
												<tbody>
													<tr>
														<td>
															<a href="{{ post.bitly }}">Read Article &raquo;</a>
														</td>
													</tr>
												</tbody>
											</table>
										</td>
									</tr>
								</tbody>
							</table>
							<hr>
							{% endfor %}
						</th>
					</tr>
				</table>
			</th>
		</tr>
	</tbody>
</table>

