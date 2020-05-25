---
layout: page
rank: 20
type: page
section: Guidance
title: Metadata For Services
---

{% for def in site.defs %}{% if def.section == "Service Metadata" %}
* [{{def.title}}]({{def.url|relative_url}})
{% endif %}{% endfor %}
