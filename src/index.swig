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
    	'2014-10-05': 543052642490343,
        '2014-10-08': 279257312257654,
        '2014-10-09': 714224711946437,
        '2014-10-11': 889126241116005,
        '2014-10-12': 610971319017427,
        '2014-10-15': 674680119289725,
        '2014-10-16': 743986845639766,
        '2014-10-18': 702877349760571,
        '2014-10-19': 620984658000661,
        '2014-10-22': 510584379072993,
        '2014-10-23': 767214626671314,
        '2014-10-24': 343152645844669,
        '2014-10-25': 1463600877253554,
        '2014-10-26': 1509139775987638,
        '2014-10-29': 556746757781835,
        '2014-10-31': 546208305478785
	}
</script>
<script src="{{ siteUrl }}/assets/js/autolinker.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/moment.js/2.8.2/moment-with-locales.min.js"></script>
<script src="{{ siteUrl }}/assets/js/fb-events.js"></script>
{% endblock %}