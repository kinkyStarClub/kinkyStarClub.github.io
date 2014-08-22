$(function(){
	var displayLastShow = function(show){
			var html = ['<div class="small-12 columns">',
						'<div class="row">',
						'<div class="small-8 columns">',
						'<img src="'+show.pictures.extra_large+'">',
						'</div>',
						'<div class="small-4 columns">',
						'<h1>'+show.name+'</h1>',
						'<p><a href="'+show.url+'">Beluister</a></p>',
						'<ol>'];

			for(var i = 0; i<show.sections.length; i++){
				var track = show['sections'][i]['track'];

				html.push('<li>'+track.artist.name+' - '+track.name+'</li>');
			}

			html.push('</ol></div></div></div><hr>');

			$('#radio').prepend(html.join(''));
		},
		lastShowAdded = false,
		displayShow = function(i, show){
			if(show.name.match(/KINKY STAR RADIO/)){
				if(lastShowAdded === true){
					var html = ['<div class="small-4 columns">',
								'<a href="'+show.url+'">',
								'<img src="'+show.pictures.large+'"><br>',
								show.name+'</a>',
								'</div>'];

					$('#radio').append(html.join(''));
				}else{
					$.getJSON("http://api.mixcloud.com"+show.key, displayLastShow);
					lastShowAdded = true;
				}
			}
		},
		jsonSuccess = function( data ) {
			$.each(data.data, displayShow);
		};

	$.getJSON( "http://api.mixcloud.com/Kinky_Star_Radio/cloudcasts/", jsonSuccess);
});