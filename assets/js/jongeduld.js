$(function(){
	var displayShow = function(i, show){
			var html = ['<div class="small-6 medium-3 columns">',
						'<a href="'+show.url+'">',
						'<img src="'+show.pictures.medium+'"><br>',
						show.name+'</a>',
						'</div>'];

			$('#podcasts').append(html.join(''));
		},
		jsonSuccess = function( data ) {
			$.each(data.data, displayShow);
		};

	$.getJSON( "http://api.mixcloud.com/Jongeduld/cloudcasts/", jsonSuccess);
});