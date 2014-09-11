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
    	'10-09-2014': 300791276760041,
        '11-09-2014': 1407105989535858,
    	'12-09-2014': 525695774230578,
    	'13-09-2014': 604504709669017,
    	'14-09-2014': 1497015567182111,
        '17-09-2014': 1459459540970899,
        '18-09-2014': 1451798485088073,
        '19-09-2014': 707671569286678,
        '20-09-2014': 243661882509571,
        '21-09-2014': 546933428763390,
        '24-09-2014': 810156405683014,
        '26-09-2014': 362640970551212,
        '27-09-2014': 1484755778440005,
        '28-09-2014': 1448079075470069,
	}
</script>
<script src="{{ siteUrl }}/assets/js/autolinker.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/moment.js/2.8.2/moment-with-locales.min.js"></script>
<script src="{{ siteUrl }}/assets/js/fb-events.js"></script>
{% endblock %}