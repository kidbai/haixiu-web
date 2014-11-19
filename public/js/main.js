
function get_scroll_top()
{
    var scrollTop = 0;
    if(document.documentElement && document.documentElement.scrollTop)
    {
        scrollTop = document.documentElement.scrollTop;
    }
    else if(document.body)
    {
        scrollTop = document.body.scrollTop;
    }
    return scrollTop;
}

function get_client_height()
{
    var clientHeight = 0;
    if(document.body.clientHeight && document.documentElement.clientHeight)
    {
        var clientHeight = (document.body.clientHeight < document.documentElement.clientHeight) ? document.body.clientHeight : document.documentElement.clientHeight;        
    }
    else
    {
        var clientHeight = (document.body.clientHeight > document.documentElement.clientHeight) ? document.body.clientHeight : document.documentElement.clientHeight;    
    }
    return clientHeight;
}

function get_scroll_height()
{
    return Math.max(document.body.scrollHeight, document.documentElement.scrollHeight);
}

function get_client_width()
{
  return document.documentElement.clientWidth;
}


loading_post = false;
var nowPage = 1;
function scrollHandler()
{
  if(get_scroll_height() - get_client_height() - 10 <= get_scroll_top()) {
    $('.spinner').removeClass('hide');
    if (loading_post)
    {
      return false;
    }
    loading_post = true;
    nowPage++;
    console.log('nowPage=' + nowPage);
    $.ajax({
      url: '/load-post',
      data: { page : nowPage },
      success: function (data){
        loading_post = false;
        if(data != null)
        {
          if(data.length > 0){
            var html = $(data);
            html.imagesLoaded(function() {
                container.append(html).masonry('appended', html);
            });
            $('.spinner').addClass('hide');
          }
                
        }
      }
    });
  }
}
$(window).scroll(scrollHandler);

$(function (){

  $('#hot-city li').click(function (){
    var post = $(".post");
    container.masonry('remove', post);  
    var city = $(this).text();
    $.ajax({
      url: 'search-city',
      data:{ city : city },
      success: function(data)
      {
        if(data != null)
        {
          if(data.length > 0)
          {
            
            var html = $(data);
            html.imagesLoaded(function() {
              container.append(html).masonry('appended', html, true);
              container.masonry('layout');
            });
          }
        }
      }
    });
  }); 
  var firstPage = 1;
  $.ajax({
    url: '/init',
    data:{ firstPage : firstPage },
    success: function(data){
      if(data != null)
      {
        if(data.length > 0)
        {
          var html = $(data);
          html.imagesLoaded(function() {
            container.append(html).masonry('appended', html, true);
            container.masonry('layout');
            $('.spinner').addClass("hide");
          });
        }
      }
    }
  });

  $('#search-city').keydown(function(event){
   
    var city;
    if(event.which == 13)
    {
      var post = $(".post");
      container.masonry('remove', post);  
      if($(this).val() == '')
      {
        alert("City can't be null");
        return;
      }
      else
      {
        city = $(this).val();
        $.ajax({
          url: 'search-city',
          data:{ city : city },
          success: function(data)
          {
            if(data != null)
            {
              if(data.length > 0)
              {
                var html = $(data);
                html.imagesLoaded(function() {
                  container.append(html).masonry('appended', html, true);
                  container.masonry('layout');
                });
              }
            }
          }
        });
      }
    }
  });
});