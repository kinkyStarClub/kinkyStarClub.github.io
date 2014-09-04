{% extends './layout/base.html' %}

{% block navigation %}
{% include "./partials/navigation.html" with {active: "home"} %}
{% endblock %}

{% block content %}
<div id="fb-root"></div>
<div class="row">
	<div class="panel">
        <h1>Nieuwe samenwerking: <a href="{{ siteUrl }}/galaxy/the-road-to-the-academy">The road to the academy</a></h1>
      </div>
</div>


<div class="row">
        <div class="small-12 medium-6 columns">
        	<div class="panel fb-event hide">
			   	<h2></h2>
			   	<h3></h3>
			   	<img>
			   	<p></p>
			   	<p>Mensen die komen: <span></span></p>
		   </div>
        </div>
        <div class="small-12 medium-6 columns">
          <a class="twitter-timeline" href="https://twitter.com/kinky_star_gent" data-widget-id="459537414692679680">Tweets by @kinky_star_gent</a>
<script>!function(d,s,id){var js,fjs=d.getElementsByTagName(s)[0],p='http';if(!d.getElementById(id)){js=d.createElement(s);js.id=id;js.src=p+"://platform.twitter.com/widgets.js";fjs.parentNode.insertBefore(js,fjs);}}(document,"script","twitter-wjs");</script>
        </div>
      </div>
{% endblock %}

{% block scripts %}
<script>
	var FBevents = {
		'03-09-2014': 249006368631294,
		'04-09-2014': 330869763747060,
    	'05-09-2014': 694765677270468,
    	'06-09-2014': 1442926882655451,
    	'07-09-2014': 1450795241873539,
    	'10-09-2014': 300791276760041,
    	'12-09-2014': 525695774230578,
    	'13-09-2014': 604504709669017,
    	'14-09-2014': 1497015567182111
	}
</script>
<script src="{{ siteUrl }}/assets/js/autolinker.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/moment.js/2.8.2/moment-with-locales.min.js"></script>
<script src="{{ siteUrl }}/assets/js/fb-events.js"></script>
{% endblock %}