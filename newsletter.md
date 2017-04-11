---
layout: none
---

<head>
	<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
	<link href="https://fonts.googleapis.com/css?family=Varela+Round" rel="stylesheet">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.6/css/bootstrap.min.css" integrity="sha384-rwoIResjU2yc3z8GV/NPeZWAv56rSmLldC3R/AZzGRnGxQQKnKkoFVhFQhNUwEyJ" crossorigin="anonymous">
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
	margin-top: 1rem;
	margin-bottom: 1rem;
}
</style>

<div class="container-fluid" style="background-color: #f7f7f7">
<!-- site logo -->
<div class="container-fluid header">
	<div class="container">	
		<h1 style="font-family:'Varela Round', sans-serif; font-weight:bold;">
		<a class="" href="{{ "/" | relative_url}}">
<span style="color:#5cb85c">The </span>
<span style="color:#3d85c6;font-family:'Varela Round', sans-serif;">{{ "Kode" }}</span><span style="color: #9fc5e8;;font-family:'Varela Round', sans-serif;">{{ "thon" }}</span><span style="color:#F39237"> Weekly</span></a>
</h1>
	</div>
</div>

<div class="container">

{% for post in site.posts limit:6 %}
<div class="card">
<div class="card-block">
<h2>{{ post.title }}</h2>
<p>{{ post.excerpt }} <a href="{{post.url | absolute_url }}">Read more &raquo;</a></p>
</div>
</div>
<br/>
{% endfor %}

<!-- advertising -->
</div>
</div>
</body>

