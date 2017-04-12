---
layout: email
---
<style>
</style>

<!-- site logo -->
<div class="header">
		<h1 style="font-family:'Varela Round', sans-serif; font-weight:bold; margin:0">
		<a href="https://kodethon.com">
<span style="color:#3d85c6;font-family:'Varela Round', sans-serif;">{{ "Kode" }}</span><span style="color: #9fc5e8;;font-family:'Varela Round', sans-serif;">{{ "thon" }}</span></a> <span style="color:#F39237">News</span>
</h1>
</div>

<div class="content" style="text-align:left">

	{% for post in site.posts limit:3 %}
		<div class="post">	
			<h2>{{ post.title }}</h2>
			<p style="color:grey;margin-top:0"><small>{{ post.date | date: "%b %-d, %Y" }}
			{% for tag in post.tags %}		
			· <span class="badge badge-default"><i class="fa fa-tag" aria-hidden="true"></i> {{ tag }}</span>
			{% endfor %}
			</small></p>
			{{ post.excerpt }} 
			<p><a class="button" href="{{ post.bitly }}">Read Article</a></p>
		</div>
	{% endfor %}

	<p>Kodethon is a cloud development environment. <a hfref="https://kodethon.com">Try it out</a>.</p>  

</div>
