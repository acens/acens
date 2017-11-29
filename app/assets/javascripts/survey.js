
$(function(){
  $('.panel').lobiPanel({
    sortable: true,
    editTitle: false,
    reload: false,
    unpin: false,
    close: false,
    minimize: {
      icon: 'fa fa-chevron-up',
      icon2: 'fa fa-chevron-down'
    },
    state: "collapsed"
  });

  $('.panel').on('dragged.lobiPanel', function(ev, lobiPanel, result, status, xhr){
    $('#survey_survey_option_id').val($('.panel').attr('value'));
    heading = $('.panel .panel-title h4')
    heading.text("1 &ordf;" heading.text());
    window.console.log("Loaded", ev, lobiPanel, result, status, xhr);
});

});
