$(function(){
  var now = moment().format('YYYY-MM-DD');

  $('.remove-past-dates [data-on]').each(function(){
    var $el = $(this),
        someDate = $el.data('on');

    if(moment(someDate).isBefore(now)){
      $el.addClass('hide')
    }
  });
});