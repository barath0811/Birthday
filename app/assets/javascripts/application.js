// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
// WARNING: THE FIRST BLANK LINE MARKS THE END OF WHAT'S TO BE PROCESSED, ANY BLANK LINE SHOULD
// GO AFTER THE REQUIRES BELOW.
//
//= require jquery
//= require jquery_ujs
//= require twitter/bootstrap
//= require_tree .
//= require jquery_countdown
//= require jquery_cycle
//= require simple_audioplayer
//

$(document).ready(function(){

  $('#allWishes').cycle({ 
      fx:     'shuffle', 
      speed:  'medium', 
      timeout: 0, 
      next:   '#next2', 
      prev:   '#prev2'
  });

  $('#contentDiv').height($(document).height());

  $('#mySchedules_header').click(function(){
        $('#mySchedules').slideToggle('slow', function(){});});

  var flashStopDate = new Date(2014, 03, 02, 10, 0, 0, 0);
  var birthday = new Date(2014, 03, 02, 0, 0, 0, 0);


  if(new Date() < birthday)
  {
      $('#countdown_dashboard').countDown({
                targetDate: {
                  'day':    1,
                  'month':  4,
                  'year':   2014,
                  'hour':   23,
                  'min':    45,
                  'sec':    30
                },
                onComplete:function(){
                  $('#counterDiv').html('<object width="640" height="520" style="visible:none" data="assets/Happybirthday.swf"></object>');
                  
                }
              });
    }
    else if(new Date() < flashStopDate){
      $('#counterDiv').html('<object width="640" height="520" style="visible:none" data="assets/Happybirthday.swf"></object>')
    }
    else{
      if(Math.floor((Math.random()*10)+1)%2)
        $('#counterDiv').html('<img src="/assets/mywish.gif"></img>')
      else
        $('#counterDiv').html('<img src="/assets/mywish1.gif"></img>')
    }
});


// Set by specific date/time
function set_by_date() {
    $('#countdown_dashboard').stopCountDown();
    $('#countdown_dashboard').setCountDown({
        targetDate: {
            'day':      2,
            'month':    4,
            'year':     2014,
            'hour':     0,
            'min':      0,
            'sec':      0
        }
    });
    $('#countdown_dashboard').startCountDown();
}
// Set by date/time offset
function set_by_offset() {
    $('#countdown_dashboard').stopCountDown();
    $('#countdown_dashboard').setCountDown({
        targetOffset: {
            'day':      1,
            'month':    1,
            'year':     0,
            'hour':     1,
            'min':      1,
            'sec':      1
        }
    });
    $('#countdown_dashboard').startCountDown();
}
