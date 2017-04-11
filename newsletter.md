---
layout: none
---

<head>
	<link href="https://fonts.googleapis.com/css?family=Varela+Round" rel="stylesheet">
</head>

<body>
<style>
a {
	text-decoration: none
}
a:hover {
	text-decoration: underline
}
.header {
	background-color: #ffffff;
	border-bottom: 1px solid lightgrey;
	padding-left: 1rem;
	padding-top: 1rem;
	padding-bottom: 1rem;
	margin:0;
}

.header h1{
	margin:0;
}

body {
	width:100%;
	margin:0;
	padding: 0;
	background-color: #f7f7f7;
}
.content {
	padding-left: 1rem;
	padding-right: 1rem;
	margin:1rem;
}

img {
	width: 100%;
}

.post {
	/*margin-top: 1rem;
	margin-right: 1rem;
	margin-bottom:1rem;
	margin-left:1rem;*/
	margin-bottom: 1rem;
	padding: 0.5rem;
	background-color: #ffffff;
}

.post h2 {
	font-family:'Varela Round', sans-serif; 
	font-weight:bold;
	margin-top:0;
	margin-bottom:0;
}

hr {
	color: lightgrey;
}

</style>

<!-- site logo -->
<div class="header">
		<h1 style="font-family:'Varela Round', sans-serif; font-weight:bold;">
		<a href="https://kodethon.com">
<span style="color:#3d85c6;font-family:'Varela Round', sans-serif;">{{ "Kode" }}</span><span style="color: #9fc5e8;;font-family:'Varela Round', sans-serif;">{{ "thon" }}</span></a> <span style="color:#F39237">News</span>
</h1>
</div>

<div class="content">
{% for post in site.posts limit:6 %}
<div class="post">	
<h2>{{ post.title }}</h2>
<p style="color:grey;margin-top:0">{{ post.date | date: "%b %-d, %Y" }}</p>
<p>{{ post.excerpt }} <a href="{{post.url | absolute_url }}">Read more &raquo;</a></p>
</div>
{% endfor %}
<p>Kodethon is a cloud development environment.  
<a hfref="https://kodethon.com">Try it out</a>.</p>  
</div>
</body>

