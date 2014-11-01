{% extends './layout/base.html' %}

{% block navigation %}
{% include "./partials/navigation.html" with {active: "home"} %}
{% endblock %}

{% block content %}
<div id="fb-root"></div>
<div class="row">
	<div class="panel">
        <h1>Werk je graag met jonge muzikanten, kijk vlug <a href="http://res.cloudinary.com/kinkystar/image/upload/v1414083841/pdf/vacature_jongeduld.pdf" target="blank">hier</a>.</h1>
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
    	'01-11-2014': 1437524126530111,
        '02-11-2014': 331524053671563,
        '05-11-2014': 613309288787443,
        '07-11-2014': 489061921196464,
        '09-11-2014': 597400583713858,
        '12-11-2014': 663483287073041,
        '13-11-2014': 1480727978860238,
        '14-11-2014': 721115387924885,
        '15-11-2014': 887270721301317,
        '16-11-2014': 494458984022865,
        '19-11-2014': 709002122517838,
        '20-11-2014': 1520492991526770,
        '22-11-2014': 1531068867108224,
        '23-11-2014': 321864647988904,
        '26-11-2014': 750411951698332,
        '29-11-2014': 1504569423132844,
        '30-11-2014': 1526899644207792
	}
</script>
<script src="{{ siteUrl }}/assets/js/autolinker.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/moment.js/2.8.2/moment-with-locales.min.js"></script>
<script src="{{ siteUrl }}/assets/js/fb-events.js"></script>
{% endblock %}