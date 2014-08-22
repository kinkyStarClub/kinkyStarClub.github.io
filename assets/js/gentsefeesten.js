var dates = {2014: {start: 17, end: 27}},
	text = {passed: {show: 'Voorbeie dagen', hide: 'Verberg voorbeide dagen'}};

$(function(){
	var dateNow = new Date(),
		yearNow = dateNow.getFullYear(), 
		monthNow = dateNow.getMonth(),
		dayNow = dateNow.getDate(),
		kinkyDayOver = dateNow.getHours() >= 8,
		start = dates[yearNow]['start'],
		end = dates[yearNow]['end']+1;

	if(monthNow == 6 && dayNow > start && dayNow < end){
		var days = _.range(start, kinkyDayOver ? dayNow: dayNow-1);

		_.forEach(days, function(day){ $('[data-day="'+day+'"]').hide(); });

		$('[data-day="'+(kinkyDayOver ? dayNow-1: dayNow-2)+'"]').after('<div class="row passed"><p><a class="show">'+text.passed.show+'</a></p></div>');
		
		$('.passed').on('click', '.show', function(){ console.log('show');
				$(this).removeClass('show').addClass('phide').html(text.passed.hide);

				_.forEach(days, function(day){ $('[data-day="'+day+'"]').show(); });
			})
			.on('click', '.phide', function(){ console.log('hide');
				$(this).removeClass('phide').addClass('show').html(text.passed.show);

				_.forEach(days, function(day){ $('[data-day="'+day+'"]').hide(); });
			});
	}
});