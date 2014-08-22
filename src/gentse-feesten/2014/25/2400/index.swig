{% extends '../../../../layout-gf2014.html' %}

{% block content %}
<div class="performance">
	<div class="row">
		<div class="small-4 columns">
			<a href="{{ siteUrl }}/gentse-feesten/2014/25/2200"><i class="fa fa-arrow-left"></i> <span class="hide-for-small-only">Vorige</span></a>
		</div>
		<div class="small-4 columns">
			<a href="{{ siteUrl }}/gentse-feesten/2014"><span class="hide-for-small-only">Alle</span> <i class="fa fa-arrow-up"></i></a>
		</div>
		<div class="small-4 columns">
			<a href="{{ siteUrl }}/gentse-feesten/2014/26/0300"><span class="hide-for-small-only">Volgende</span> <i class="fa fa-arrow-right"></i></a>
		</div>
	</div>
	<div class="row">
		<div class="small-12 columns">
			<h1>Go March <small>VR 25 24:00</small></h1>
		</div>
	</div>
	{% include '../../../../artists/go_march.html' %}
</div>
{% endblock %}