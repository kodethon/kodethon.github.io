---
layout: post
comments: true
title:  A Brief Introduction to Prolog
date:   2017-04-06 12:00:00 -0700
categories: ["New Feature", "Prolog"]
tags: ["New Environment", "Prolog", "Tutorial"]
bitly: http://bit.ly/2o2oDw2-kodethon
---

<img src="{{site.url}}{{site.baseurl}}/images/prolog_factorial.png" alt="Factorial Recursion in Prolog" class="img-fluid mx-auto d-block" style="border: 1px solid lightgrey"/>

<div style="text-align:center">
<p style="color: gray;margin-bottom:0px">Left: The factorial function implemented in Prolog.</p>
<p style="color: gray;margin-top:0px">Right: A tree representation of the goal factorial(3,6).</p>
</div>


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
write a natural language interface for International Space Station.[^1]  Also,
IBM coded parts of its Watson supercomputer in Prolog.

Generally, Prolog is a suitable choice for applications where objects and their
relations are important.  For example, parsing natural languages is relatively
simple in Prolog.  Creating and searching databases is also relatively easy.

<h2 class="section-header">Syntax</h2>
A Prolog program is a collection of <em>clauses</em>.  There are two types of
clauses, facts and rules.

A <b><em>rule</em></b> has the form `Head :- Body.`  This means that `Head` is
true if `Body` is true. The following are example rules. 

```prolog
male(james) :- true.
male(charles) :- true.
female(elizabeth) :- true.
```

A <b><em>fact</em></b> is a clause with an empty body.  The following are example facts.
```prolog
female(sophia).
parent(charles, james).
parent(elizabeth, james).
```
Alternatively, you can think of a fact as rule where the body is the built-in term `true`. For example, the two following clauses are equivalent. 
```prolog
female(sophia).
female(sophia) :- true.
```
Prolog has a single data type called a <em>term</em>.  A term can be:
* an atom,
* a number,
* a variable,
* or a compound term.

An **atom** is a string of characters that represents an object.  For example,
x, red, 'Taco', and 'some atom' are all atoms.  In the snippets above, sophia, charles, james, and elizabeth are all atoms.

A **number** is either an integer or a float.  For example, 42 and 3.14 are both numbers.

A **variable** is a string of characters that serve as placeholders for arbitrary terms.  For example, in `male(X)`, X is a variable.

A **compound term** is composed of an atom called a functor and a number of "arguments".  For example, `truck\_year('Mazda', 1986)`, `female(sophia)`, and `parent(charles, james)` are all compound terms.

<h2 class="section-header">A Complete Prolog Program</h2>

The following code is a complete Prolog program.  
```prolog
male(james).
male(charles).
female(elizabeth).
parent(charles, james).
parent(elizabeth, james).
```

This program does not print anything to the computer.  It does not compute any
fancy math equation but it is complete and does several things.  It introduces
several objects, for example, `james` and `charles`.  It declares certain
properties about those objects, for example, `male(james)`.  And it declares a
relationship between some of those objects, for example, `parent(charles,james)`.


<h2 class="section-header">Prolog Interpreters</h2>

To execute Prolog programs you need to install a Prolog interpreter, like <a
href="http://www.gprolog.org/">GNU Prolog</a> or <a
href="http://www.swi-prolog.org/">SWI-Prolog</a>. You can install the
interpreter yourself or simply use Kodethon.  Kodethon provides environments
that allow you to use these interpreters.

In Kodethon, to use GNU Prolog, 
1. Select the Prolog/gnu-1.4.4 environment.
2. In the CDE Shell, type <b>terminal</b>. A new window/tab will open.
3. In the terminal window, type <b>gprolog</b>.

In Kodethon, to use SWI-Prolog, 
1. Select the Prolog/swi-7.4.1 environment.
2. In the CDE Shell, type <b>terminal</b>. A new window/tab will open.
3. In the terminal window, type <b>swipl</b>.

<h2 class="section-header">Loading a Prolog Program</h2>

We save the Prolog program above in a file named <b>sample.pl</b>.
```bash
kodethon@kodethon:~/prolog$ cat sample.pl 
male(james).
male(charles).
female(elizabeth).
parent(charles, james).
parent(elizabeth, james).
```

We run GNU Prolog.  Then we consult the file by typing `['sample.pl'].`.
If the file does not contain any syntax errors, then the interpreter will output `yes`.
```bash
kodethon@kodethon:~/prolog$ gprolog
GNU Prolog 1.4.4 (64 bits)
Compiled Apr  4 2017, 05:52:23 with gcc
By Daniel Diaz
Copyright (C) 1999-2013 Daniel Diaz
| ?- ['sample.pl'].
compiling /home/kodethon/prolog/sample.pl for byte code...
/home/kodethon/prolog/sample.pl compiled, 5 lines read - 686 bytes written, 3 ms
(4 ms) yes
| ?- 
```

<h2 class="section-header">Consulting a Prolog Program</h2>

Prolog interpreters, generally, have two modes: <b><em>definition</em></b> and
<b><em>query</em></b> mode.  In definition mode, you can define new facts and
rules.  In query mode, you cannot define new facts or rules; you can only query
the collection of clauses you have defined. By default, the interpreter starts
in query mode.  At the prompt (`| ?-`), you enter a <b><em>goal</em></b>, also
called a <b><em>query</em></b>.  

Prolog uses SLD Resolution to determine if a given goal is a logical
consequence of the program.  The interpreter will report <b>yes</b> if it
determines that the goal is satisfiable and report generated variable bindings.
The interpreter will report <b>no</b> otherwise.


Below, for example, we enter the goal `male(james)`.  Prolog searches the facts
we loaded and reports `yes` since it can conclude that fact from the program.

```prolog 
| ?- male(james).  
yes 
```

As the second goal, we enter `male(X)`.  Using the first fact, the interpreter
binds james to X.  It reports the binding, and prompts the user for next
action.  The semicolon (`;`) tells Prolog to unbind X and continue searching
the database for more possible unifications of X.  Prolog uses the second fact
to bind charles to X.  It responds `yes` to indicate that there are no more
possible unifications with X.

```prolog 
| ?- male(X).  
X = james ? ; 
X = charles 
yes
```

In the example below, we enter the goal `male(elizabeth)`.  Prolog responds
with `no`.  This fact is not in the database. 
```prolog
| ?- male(elizabeth).
no
| ?- 
```

At a high level, you can see that the simple Prolog program was just a database
of facts and that we can query it with a Prolog interpreter to get answers.

<h2 class="section-header">Summary</h2>

To summarize, in this article, we have:
1. Introduced you to Prolog, a logic programming language.  
2. Shown you its basic syntax.
3. Discussed two interpreters.
4. Shown you how to load a prolog program.
5. Shown you how to make queries.

There is a lot more to learn.  Here are some resources:

1. [https://en.wikipedia.org/wiki/Prolog](https://en.wikipedia.org/wiki/Prolog)
2. [http://www.learnprolognow.org/](http://www.learnprolognow.org/)
3. [https://www.cpp.edu/~jrfisher/www/prolog_tutorial/contents.html](https://www.cpp.edu/~jrfisher/www/prolog_tutorial/contents.html)
4. [http://www.doc.gold.ac.uk/~mas02gw/prolog_tutorial/prologpages/](http://www.doc.gold.ac.uk/~mas02gw/prolog_tutorial/prologpages/)
5. [https://bernardopires.com/2013/10/try-logic-programming-a-gentle-introduction-to-prolog/](https://bernardopires.com/2013/10/try-logic-programming-a-gentle-introduction-to-prolog/)
6. [https://www.metalevel.at/prolog](https://www.metalevel.at/prolog)

We plan on building our own tutorial to take advatange of Kodethon's Embed feature.  Stay tuned!

<h2 class="section-header">Footnotes</h2>
[^1]: [https://pdfs.semanticscholar.org/d0df/2fa0d0ebbcbeb20c922fad507c1be55371f8.pdf](https://pdfs.semanticscholar.org/d0df/2fa0d0ebbcbeb20c922fad507c1be55371f8.pdf)
