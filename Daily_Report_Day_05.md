Daily Report - Day 05
Learn and research about HTML:
* Structure
```<head>...</head>```: contain informations about the document : title, style, character set,descreption, keyword...
```<body>...</body>```:contain content of the decument
*Elements
- Anatomy of an HTML element: [Opening tag]Enclosed text content[Closing tag]
	Block-level elements: are tags represent html elements as blocks, begin on new lines.
	ex: `<header>`, `<footer>`, `<article>`,`<aside>`,`<h>`, `<p>`, `<form>`, `<ul>`, `<ol>`, `<li>`...
	Inline elements: represent html elements inline, can start anywhere in a line.
	ex: <img>, <span>, <input>, <a>, <lable>, <sub>....
	Empty elements: no content, maybe has no closing tag.
	ex: <hr>, <br>, <link>....
*Doctype : not a html tag, required.
In Html5, it written: 
<!DOCTYPE html>
*Layout: 3 parts
-Header:
	<header>
		logo: use <img> or <a><img></a>
		menu: use <nav> or <ul>,<li>
	</header>
-Container:
<section>
on the left: 
<article>
	<h>
	<p>
on the right:
<aside>
<ul> <li> or <a>
</section>
-Footer:
<footer>
</footer>
*Table: <thead>, <tbody>, <tfooter>
- <thead>: 
	theah tag groups header content in an HTML table.
	theah element specifies header of table.
	theah element must have at least one <tr> tags inside.
-<tbody>:
	tbody tag groups body content in an HTML table.
	tbody element specifies body of table.
	tbody element must have at least one <tr> tags inside.
-<tfooter>: 
	tfooter tag is used for adding a footer to a table.
	tfooter element specifies footer of table.
	tfooter element must have at least one <tr> tags inside.
```Ex:
<pre>
<table>
	<thead>
		<tr>
			<th>THead1</th>
			<th>THead2</th>
		</tr>
	<thead>
	<tbody>
		<tr>
			<td>TBody1</td>
			<td>TBody2</td>
		</tr>
	</tbody>
	<tfooter>
		<tr>
			<td>TFooter1</td>
			<td><TFooter2</td>
		</tr>
	</tfooter>
</table>
</pre>```