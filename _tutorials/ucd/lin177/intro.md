---
layout: page
title: Computational Linguistics (LIN 177)
---

<table class="table table-condensed table-bordered">
<tr>
<th>University</th>
<td>University of California, Davis</td>
</tr>
<tr>
<th>Professor(s)</th>
<td><a href="http://linguistics.ucdavis.edu/people/fzojeda">Almerindo Ojeda</a></td>
</tr>
<tr>
<th>Textbook(s)</th>
<td>A Computational Introduction to Linguistics:<br>
Describing Language in Plain PROLOG</td>
</tr>
<tr>
<th>Recent Terms</th>
<td>Spring 2017</td>
</tr>

</table>

<h2 class="section-header">Introduction</h2>

Computational Linguistics (LIN 177) is a course taught at University of
California, Davis.  In this course, students use Prolog, a general-purpose logic
programming language.  The professor provides a set of Prolog files that are
used throughout the course.  With Kodethon, students can consult these Prolog
programs easily without having to install any software on their computers which
can often be challenging.

Kodethon is a web application that supports editing and "running" Prolog programs.


<h2 class="section-header">Getting Started</h2>

<ol type="A">
	<li>Create an account
		<ol>
			<li>Go to <a href="https://kodethon.com">https://kodethon.com</a></li>
			<li>Click "Login"</li>
		</ol>
	</li>
	
	<li>Get files: Import the files provided by the instructor from a public project to your private folder.
		<ol>
			<li>Go to
<a href="https://www.kodethon.com/#/CDE?c=9a1c09c1e7aecbc161884c841a80a9bb">https://www.kodethon.com/#/CDE?c=9a1c09c1e7aecbc161884c841a80a9bb</a></li>
			<li>Click the "Fork" button
    		<ul>
					<li>A popup message will tell you where the files were copied to (e.g., "Files forked to folder &lt;FOLDERNAME&gt;")</li>
				</ul>
			</li>
			<li>(Optional) Rename &lt;FOLDERNAME&gt; to LIN177</li>
			<li>Click "OK"</li>
		</ol>
	</li>
</ol>

<h2 class="section-header">Consulting Prolog Programs</h2>

There are two ways you can consult Prolog programs in Kodethon.  There are
tradeoffs in using one method over the other.  The first method is easy but the
interpreter interface does not look as nice as does in the Unix terminal.  The
second method is harder since it requires some knowledge of Unix terminal
commands but this method gives you a direct access to the Prolog interpreter and
it looks better.

<h3>Preliminary Step: Select programming environment</h3>

To consult or "run" a Prolog file, you need a Prolog interpreter.  In this
course, SWI-Prolog is preferred.

1. Click on your NAME, in the top right of the window
2. Click on "Settings"
3. In the Environment section:
    * Select "Prolog"
    * Select "SWI-5.10.4"


<h3>Method #1: The Green Magic Run Button</h3>

1. Click on the Kodethon logo (top left) to return to "My Files" view
2. Open \<FOLDERNAME\>
    * \<FOLDERNAME\> refers to the folder where you imported the files "B. Get Files"
3. Select the file you want to consult
4. Click the "Run" button

<h3>Method #2: The Unix Terminal</h3>

1. Click on the Apps icon
2. Select "CDE Shell"
3. Type **terminal**
    * A new tab or window should open.
    * Troubleshooting: If the terminal does not start, try refreshing.
4. Type **cd \<FOLDERNAME\>**
    * "cd" is a Unix command that changes the current directory to the specified directory.
    * \<FOLDERNAME\> refers to the folder where you imported the files "B. Get Files"
4. In the terminal, type **swipl \<FILENAME\>**
    * \<FILENAME\> is the name of the file you want to consult. 

<h2 class="section-header">Slides</h2>

The following slides provide text and video instructions.

<iframe src="https://docs.google.com/presentation/d/1iSjvPsF6tpkAW87vt3d2xsFxkgQa65RKywgqzXET3kg/embed?start=false&loop=true&delayms=5000" frameborder="0" width="705" height="425" allowfullscreen="true" mozallowfullscreen="true" webkitallowfullscreen="true"></iframe>

