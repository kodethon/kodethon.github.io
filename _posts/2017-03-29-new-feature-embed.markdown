---
layout: post
title:  "Embedding Kodethon Projects In Webpages"
date:   2017-03-29 15:58:16 -0700
categories: ['Announcements', 'New Feature']
tags: ['New Feature', 'Embed'] 
#author: Martin Velez and Michael Yen

---

<style>
	body {
		/*line-height:2em;*/
		/*font-size:18px;*/
	}

	.section {
		margin-top:25px;
		margin-bottom:25px;
	}

	.section-header {
		margin-top:35px;
		padding-bottom: 10px;
		border-bottom:1px solid lightgrey;
	}

	.highlight {
		background:rgb(244,244,244);
		padding: 30px 35px;
	}

	.padding-top-bottom-10 {
		padding-top: 10px;
		padding-bottom: 10px;
	}

	.margin-top-bottom-20 {
		margin-top:20px;
		margin-bottom:20px;
	}

	.border-bottom-1 {
		border-bottom:1px solid lightgrey;
	}

	.kodethon-iframe {
		border:1px solid lightgrey;
	}
</style>

Want to display code snippets and allow your viewers to run and edit them? Here's a new feature we think may help. 

<div class="highlight">
With this feature you can embed a Kodethon project directly into
any webpage. Below is a quick demo video of what it looks like:
</div>

<div class="padding-top-bottom-10">
<video width="100%" controls>
  <source src="{{site.url}}{{site.baseurl}}/videos/kodethon_embed_demo.mp4" type="video/mp4">
  <!--<source src="{{site.url}}{{site.baseurl}}/videos/kodethon_embed_demo.ogg" type="video/ogg">-->
  Your browser does not support HTML5 video.
</video>
</div>

As shown from the video, there are two tabs: <b>files</b> and <b>code</b>. The files tab shows the available files in the project.
In the code tab, viewers can see both your amazing code and your awesome description of it. 
But perhaps the most appealing feature is that:

<div class="highlight">
	You can allow your viewers to edit and run code directly in your blog.
</div>

Before we play with some examples, you may have some questions...

<h2 class="section-header">
Answering Questions
</h2>

<div class="margin-top-bottom-20">
<em>Q: Who can use this feature?</em> <br/>
A: <b>Anyone!</b>  All you have to do is create a
Kodethon project.  And get its embed link.  We believe that anyone who writes
regularly about programming subjects like bloggers, tutorial writers, teachers,
and researchers will find this feature useful.  <a href="https://3b5d30f75af09e6233bd7b4ce3853de8-environ.kodethon.com/demo/index.html" target="_blank">Here is an example of how you might incorporate this into a blog.</a>
</div>

<div class="margin-top-bottom-20">
<em>Q: When would I use this feature? </em><br/> 
A: <b>Anytime</b> you want to share code in a webpage and want your users to play with the code.  In other words, when you want them to edit the code and run it to see the effect of their changes. 
</div>

<div class="margin-top-bottom-20">
<em>Q: How does this compare to similar tools?</em><br/> 
A: Currently, there a few code syntax highlighters out there: <a
href="http://alexgorbatchev.com/SyntaxHighlighter/">SyntaxHighlighter</a>, <a
href="https://highlightjs.org/">highlight.js</a>, <a
href="http://prismjs.com/">Prism</a>, and many others. But perhaps a more similar
comparison is with <a href="https://jsfiddle.net">JSFiddle</a>. JSFiddle provides a
way of embedding small HTML/CSS projects. In comparison, our embedding
allows you to embed any type of project currently supported by Kodethon. This
includes projects which normally do not run in the browser like C, Python, Java
programs.
</div>

And now let's with play with some examples:

<h2 class="section-header">
Examples of Embedding
</h2>
<p>Below are examples of what embedding Kodethon in your blog could look like. 
Feel free to edit the files and click the 'Run' button.</p>

<div class="section">
<h3>1. Square Root in C</h3>
<iframe width="100%" height="230"  frameborder="0" class="kodethon-iframe"
	src="https://www.kodethon.com/#/embed?c=3b5d30f75af09e6233bd7b4ce3853de8&e=javascript&v=node-5.6.0&f=/C/math.c"></iframe>
<div style="text-align:center">
</div>

<h3>2. Square Root in Python</h3>
<iframe width="100%" height="230" src="https://www.kodethon.com/#/embed?c=3b5d30f75af09e6233bd7b4ce3853de8&e=python&v=2.7.9&f=/python/sq.py" style="border:1px solid lightgrey"></iframe>
<div style="text-align:center">
</div>

<h3>3. A Simple Java Hello World</h3>

<iframe width="100%" height="230" src="https://www.kodethon.com/#/embed?c=3b5d30f75af09e6233bd7b4ce3853de8&e=java&v=1.8.0&f=/java/HelloWorld.java" style="border:1px solid lightgrey"></iframe>
<div style="text-align:center">
</div>
</div>

Ready to create an embed? Let's create one in three easy steps!

<h2 class="section-header">Creating an Embed</h2>

<div class="margin-top-bottom-20">
<div class="padding-top-bottom-10">
<p><b>Step 1: Log in to your Kodethon account</b></p>
If you haven't already, create an account with <a href="https://www.kodethon.com">Kodethon</a>.
</div>

<div class="padding-top-bottom-10">
<p><b>Step 2: Create a Kodethon Project</b></p>
The following link provides instructions on creating a project in Kodethon: <a href="https://forum.kodethon.com/d/2-how-to-create-a-project">https://forum.kodethon.com/d/2-how-to-create-a-project</a>
</div>

<div class="padding-top-bottom-10">
<p><b>Step 3: Get the Embed Link from your project 'Settings'</b></p>
The following link provides instructions on embedding a project: <a href="https://forum.kodethon.com/d/22-how-to-embed-files">https://forum.kodethon.com/d/22-how-to-embed-files</a>
</div>

</div>

<h2 class="section-header">Did you enjoy this post?</h2>

<div class="margin-top-bottom-20" style="margin-bottom:50px;">
	Let us know what you think in our 
<a href="https://forum.kodethon.com">forum</a>!
</div>
