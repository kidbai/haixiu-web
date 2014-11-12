
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
  if(get_scroll_height() - get_client_height() - 50 <= get_scroll_top()) {
    if (loading_post) return;
    loading_post = true;
    console.log(loading_post);
    nowPage++;
    console.log('nowPage=' + nowPage);
    $.ajax({
      url: '/update',
      data: { page : nowPage },
      success: function (data){
        loading_post = false;
        if(data != null)
        {
          if(data.length > 0){
            var html = $(data);
            console.log(html);
            html.imagesLoaded(function() {
                container.append(html).masonry('appended', html);
            });
          }
        else
        {
          // alert('没了');
        }
        
        }
      }
    });
  }
}
$(window).scroll(scrollHandler);

$(function (){
  var firstPage = 1;
  $.ajax({
    url: '/init',
    data:{ firstPage : firstPage },
    success: function(data){
      // console.log(data);
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