{% extends './layout/base.html' %}

{% block navigation %}
{% include "./partials/navigation.html" with {active: "home"} only %}
{% endblock %}

{% block content %}
<div class="row">
	<div class="panel">
        <h1>Het is niet lang meer tot het nieuwe seizoen!</h1>
      </div>
</div>


<div class="row">
        <div class="small-12 medium-6 columns">{% include "./partials/fb-event.html" %}</div>
        <div class="small-12 medium-6 columns">
          <a class="twitter-timeline" href="https://twitter.com/kinky_star_gent" data-widget-id="459537414692679680">Tweets by @kinky_star_gent</a>
<script>!function(d,s,id){var js,fjs=d.getElementsByTagName(s)[0],p=/^http:/.test(d.location)?'http':'https';if(!d.getElementById(id)){js=d.createElement(s);js.id=id;js.src=p+"://platform.twitter.com/widgets.js";fjs.parentNode.insertBefore(js,fjs);}}(document,"script","twitter-wjs");</script>
        </div>
      </div>
{% endblock %}