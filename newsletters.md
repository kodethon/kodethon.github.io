---
layout: default
---

<h3>Newsletters</h3>

{% for n in site.newsletters %}
<p><a href="{{ n.url | absolute_url }}">Newsletter #{{ n.title }}</a><br/> 
<time datetime="{{ n.date | date_to_xmlschema }}" itemprop="datePublished">{{ n.date | date: "%b %-d, %Y" }}</time>
</p>
{% endfor %}

