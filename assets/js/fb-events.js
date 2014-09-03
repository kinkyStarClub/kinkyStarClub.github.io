var token = 'CAAEO9uQ4ryoBAGmaNZAiZAiRFQi7sjUGgz9ZClSseKKTJQF1YZCs4ryTv4L3OuNT8XhSvbQSQlILGY0IsmKPnHyQom1U2CY07RCw3pkSgQnyluVW9CvAMwJO3KQdYe3OEP04PpgAD2fa3ecpVqRpAmPjkxt9wcybLWGaS0lTClml81aqeYmQIGiwwyb2cZAdHzbYzYZB53uXyFPQq22NrW',
	findEvent = function(date, events){
    		if(typeof events[date] !== 'undefined'){
    			return events[date];
    		}

    		var i = 0;

    		while(i < 360){
    			var start = moment(date, 'DD-MM-YYYY'),
    			    date = start.add(1, 'd').format('DD-MM-YYYY');

    			if(typeof events[date] !== 'undefined'){
	    			return events[date];
	    		}

    			i++;
    		}

    		return 0;
    	};

window.fbAsyncInit = function() {
        FB.init({
          appId      : 297928530374442,
          xfbml      : true,
          version    : 'v2.1'
        });

        var now = moment(),
            nowdate = now.format('DD-MM-YYYY'),
            eventid = findEvent(nowdate, FBevents);

    if(eventid === 0){
		$('.fb-event h2').text('Aan het uitrusten');
		$('.fb-event p:first').text('maar we zijn snel weer!');
		$('.fb-event span').text(0);
	}else{
        	FB.api(
		    "/"+eventid,
		    function (response) {
		      if (response && !response.error) {
		        $('.fb-event h2').text(response.name);
		        $('.fb-event p:first').html(Autolinker.link(response.description));
		      }
		    },
		    {
			  access_token : token
			}
		);

		FB.api(
		    "/"+eventid+"/photos",
		    function (response) {
		      if (response && !response.error) {
		        $('.fb-event img').attr('src', response.data[response.data.length-1].source);
		      }
		    },
		    {
			  access_token : token
			}
		);

		FB.api(
		    "/"+eventid+"/attending",
		    function (response) {
		      if (response && !response.error) {
		        $('.fb-event span').text(response.data.length);
		      }
		    },
		    {
			  access_token : token
			}
		);
	}
};

      (function(d, s, id){
         var js, fjs = d.getElementsByTagName(s)[0];
         if (d.getElementById(id)) {return;}
         js = d.createElement(s); js.id = id;
         js.src = "//connect.facebook.net/en_US/sdk.js";
         fjs.parentNode.insertBefore(js, fjs);
       }(document, 'script', 'facebook-jssdk'));