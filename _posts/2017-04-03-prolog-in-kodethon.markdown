---
layout: post
title:  A Brief Introduction to Prolog
date:   2017-04-03 17:00:00 -0700
categories: ["New Feature", "Prolog"]
tags: ["New Feature", "Prolog"]
---

<style>

	.section {
		margin-top:25px;
		margin-bottom:25px;
	}

	.section-header {
		margin-top:35px;
		padding-bottom: 10px;
		border-bottom:1px solid lightgrey;
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

Kodethon provides an environment to program in Prolog.  Prolog is a
general-purpose logic programming language.  Prolog is a relatively old
programming language developed in 1972 by Alain Colmerauer and Philippe
Roussel.  Despite its age, Prolog is a relatively obscure programming language.

Nonetheless, it is still useful.  For example, in 2005, NASA used Prolog to
write the natural language interface for International Space Station.  Also,
IBM coded parts of its Watson supercomputer in Prolog.

Generally, Prolog is a suitable choice for applications where objects and their
relations are important.  For example, it is easy to write a natural language
parser in Prolog because each word in a sentence is some type of object and
those objects follow certain rules.

<h2 class="section-header">Syntax</h2>
A Prolog program is a collection of <em>clauses</em>.  There are two types of
clauses, facts and rules.

A <em>rule</em> has the form ` Head :- Body.`  This is read as "Head is true if
Body is true.".   
```prolog
cat(tom) :- true.
```

A <em>fact</em> is a clause with an empty body.
```prolog
cat(tom).
```

A fact can be written simply as


Generally, most people start
learning how to program with a language like C, Java, or Python.  Java is an
example of the Object-Oriented programming   

Programming in Prolog requires a vastly different mindset than programming in languages like C and Python. 


```prolog
	cat(tom).
	cat(tom) :- true.
```



Want to display code snippets and allow your viewers to run and edit them? Here's a new feature we think may help. 

<div class="highlight">
With this feature you can embed a Kodethon project directly into
any webpage. Below is a quick demo video of what it looks like:
</div>


As shown from the video, there are two tabs: <b>files</b> and <b>code</b>. The files tab shows the available files in the project.
Following the files tab is the code tab. Here the viewers can see your amazing code and along with your awesome description. 
But perhaps the most appealing feature is that:

<div class="highlight">
	You can allow your viewers to edit and run code directly in your blog.
</div>

Before we play with some examples, you may have some questions...


<h2 class="section-header">Did you enjoy this post?</h2>

<div class="margin-top-bottom-20" style="margin-bottom:50px;">
	Let us know what you think in our 
<a href="https://forum.kodethon.com">forum</a>!
</div>
