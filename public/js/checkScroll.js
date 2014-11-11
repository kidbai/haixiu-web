window.onload = function () {
  var nowPage = 1;

  window.onscroll = window.onresize = function () {
    var windowH = $(window).height(); // 浏览器高度
    var documentH = $(document).height(); // 文档高度
    var scrollTop = $(document).scrollTop(); // 滚动条距离顶部的高度
    if(documentH < scrollTop + windowH) {
      nowPage++;
      console.log('nowPage=' + nowPage);
      $.ajax({
        url: '/update?page='+ nowPage,
        success: function (data){
          $("#posts").append(data);
        }
      });
    }
  };
};

