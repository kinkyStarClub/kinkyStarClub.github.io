$(function(){
	var displayShow = function(i, show){
			var html = ['<div class="small-4 columns">',
						'<a href="'+show.url+'">',
						'<img src="'+show.pictures.large+'"><br>',
						show.name+'</a>',
						'</div>'];

			$('#podcasts').append(html.join(''));
		},
		jsonSuccess = function( data ) {
			$.each(data.data, displayShow);
		};

	$.getJSON( "http://api.mixcloud.com/Jongeduld/cloudcasts/", jsonSuccess);
});