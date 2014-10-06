{% extends '../../../../layout/gf2014.html' %}

{% block content %}
<div class="performance">
	<div class="row">
		<div class="small-4 columns">
			<a href="{{ siteUrl }}/gentse-feesten/2014/17/2400"><i class="fa fa-arrow-left"></i> <span class="hide-for-small-only">Vorige</span></a>
		</div>
		<div class="small-4 columns">
			<a href="{{ siteUrl }}/gentse-feesten/2014"><span class="hide-for-small-only">Alle</span> <i class="fa fa-arrow-up"></i></a>
		</div>
		<div class="small-4 columns">
			<a href="{{ siteUrl }}/gentse-feesten/2014/18/1800"><span class="hide-for-small-only">Volgende</span> <i class="fa fa-arrow-right"></i></a>
		</div>
	</div>
	{% include '../../../../partials/artists/squib.html' %}
</div>
{% endblock %}