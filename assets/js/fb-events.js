var token = 'CAAEO9uQ4ryoBAPm0WgM6GJurnH8ChDxSUuodFd07Vptf1nBZCp98ZC2hadh9ZANfhZCTRVnu9rEdrBGoZCmN3whqcavjmM7FVXy3hy4qfsYpYkBjCvgXOnhrTbnb6DlUdpr1GShlQor5RLO5hnKjTpQ7RzcFOZBKWqQM2A8t1Lfm0OMZBYIdV37JFaaYCFyKv5XbNO5LPA9VXoiXqfYOpGk',
	isToday = false,
	findEvent = function(date, events){
    		if(typeof events[date] !== 'undefined'){
    			isToday = true;
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
		$('.fb-event').removeClass('hide');
	}else{
        FB.api(
		    "/"+eventid+"?fields=description,name,start_time,attending_count,photos",
		    function (response) {
		      if (response && !response.error) {
		        $('.fb-event h2').text(response.name);

		        var start = moment(response.start_time).locale('nl'),
		        	    display = isToday ? 'vandaag '+start.format('HH:mm') : start.format('ddd DD/MM HH:mm');

		        $('.fb-event h3').text(display);

		        $('.fb-event img').attr('src', response.photos.data[response.photos.data.length-1].source);

		        $('.fb-event p:first').html(Autolinker.link(response.description));

		        $('.fb-event span').text(response.attending_count);

		        $('.fb-event').removeClass('hide');
		      }
		    },
		    { access_token : token }
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