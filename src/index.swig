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
    	'05-10-2014': 543052642490343,
        '08-10-2014': 279257312257654,
        '09-10-2014': 714224711946437,
        '10-10-2014': 671349726312690,
        '11-10-2014': 889126241116005,
        '12-10-2014': 610971319017427,
        '15-10-2014': 674680119289725,
        '16-10-2014': 743986845639766,
        '17-10-2014': 1407105989535858,
        '18-10-2014': 702877349760571,
        '19-10-2014': 620984658000661,
        '22-10-2014': 510584379072993,
        '23-10-2014': 767214626671314,
        '24-10-2014': 343152645844669,
        '25-10-2014': 1463600877253554,
        '26-10-2014': 1509139775987638,
        '29-10-2014': 556746757781835,
        '31-10-2014': 546208305478785
	}
</script>
<script src="{{ siteUrl }}/assets/js/autolinker.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/moment.js/2.8.2/moment-with-locales.min.js"></script>
<script src="{{ siteUrl }}/assets/js/fb-events.js"></script>
{% endblock %}