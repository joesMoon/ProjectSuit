jQuery('document').ready(function(){
  jQuery('.leftMenu').on('click',function() {
    jQuery('.leftMenu').toggleClass('col-xs-3').toggleClass('gone');    jQuery('.rightContent').toggleClass('col-xs-9').toggleClass('col-xs-12');

  });
  jQuery('.hotdog').on('click',function() {
     jQuery('.leftMenu').toggleClass('col-xs-3').toggleClass('gone');    jQuery('.rightContent').toggleClass('col-xs-9').toggleClass('col-xs-12');
    if(jQuery('.leftMenu').hasClass('gone'))
 {       jQuery('.hotdog').html('>');  
    }
    else {
      jQuery('.hotdog').html('X');  
    }
    
 
  });
}); //DR;