{% extends '../../../../layout/gf2014.html' %}

{% block content %}
<div class="performance">
	<div class="row">
		<div class="small-4 columns">
			<a href="{{ siteUrl }}/gentse-feesten/2014/21/1800"><i class="fa fa-arrow-left"></i> <span class="hide-for-small-only">Vorige</span></a>
		</div>
		<div class="small-4 columns">
			<a href="{{ siteUrl }}/gentse-feesten/2014"><span class="hide-for-small-only">Alle</span> <i class="fa fa-arrow-up"></i></a>
		</div>
		<div class="small-4 columns">
			<a href="{{ siteUrl }}/gentse-feesten/2014/21/2400"><span class="hide-for-small-only">Volgende</span> <i class="fa fa-arrow-right"></i></a>
		</div>
	</div>
	<div class="row">
		<div class="small-12 columns">
			<h1>Wheel of Smoke <small>MA 21 22:00</small></h1>
		</div>
	</div>
	{% include '../../../../partials/artists/wheel_of_smoke.html' %}
</div>
{% endblock %}