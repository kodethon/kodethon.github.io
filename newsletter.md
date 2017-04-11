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
	width: 70%;
	padding-left: 1rem;
	padding-right: 1rem;
}

img {
	width: 100%;
}

.post {
	margin-top: 1rem;
	margin-bottom: 1rem;
	padding-left: 0.5rem;
	padding-right: 0.5rem;
	border: 1px solid lightgrey;
	background-color: white;
}
</style>

<!-- site logo -->
<div class="header">
		<h1 style="font-family:'Varela Round', sans-serif; font-weight:bold;">
		<a class="" href="{{ "/" | relative_url}}">
<span style="color:#3d85c6;font-family:'Varela Round', sans-serif;">{{ "Kode" }}</span><span style="color: #9fc5e8;;font-family:'Varela Round', sans-serif;">{{ "thon" }}</span><span style="color:#F39237"> News</span></a>
</h1>
</div>

<div class="content">
{% for post in site.posts limit:6 %}
<div class="post">	
<h2>{{ post.title }}</h2>
<p style="color:grey">{{ post.date | date: "%b %-d, %Y" }}</p>
<p>{{ post.excerpt }} <a href="{{post.url | absolute_url }}">Read more &raquo;</a></p>
</div>
{% endfor %}
</div>
</body>
