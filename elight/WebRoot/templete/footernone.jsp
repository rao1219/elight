<div class="cover-page-foot fl wfs">
        <p class="subnav">
        
        <a target="_blank" href="#">Contact-us</a>
        <a target="_blank" href="#">Company-info</a>
        <a target="_blank" href="#">Way-to-pay</a>
        <a target="_blank" href="#">Laws</a>
        <a target="_blank" href="#">Cooperation</a>
    </p>
        <p class="copyright">&copy; 2015 BUPT Corporation</p>
</div>
<script src="style/js/zzsc.js"></script>
<script src="style/js/posfixed.js"></script>
<script>
    
    //放大镜效果
$(".j-details-mid-item").jqueryzoom({
    xzoom:440,
    yzoom:440,
    offset:10,
    position:"right",
    preload:1,
    lens:1
});
$(".j-canvas-container li").bind("click",function(){
    var data = '';
    data = $(this).find("img").attr("data");
    if(data){
        var reg = /mp4/;
        if(reg.test(data)){
            $(".j-details-mid-item").html('<div style="width: 400px;height: 400px;overflow:hidden;"><iframe src="player.php/gid//v.swf?width=400&height=400" scrolling="no" allowfullscreen="" frameborder="0" height="400" width="400"></iframe></div>');
        }else{
            $(".j-details-mid-item").html('<embed type="application/x-shockwave-flash" class="edui-faked-video" pluginspage="http://www.macromedia.com/go/getflashplayer" src="'+data+'" width="400" height="400" wmode="transparent" play="true" loop="false" menu="false" allowscriptaccess="never" allowfullscreen="true">');
        }
        return ;
    }
    $(".j-details-mid-item").html('<img src="" jqimg="" alt="">');
    var src=$(this).find("img").attr("src");
    $(".j-details-mid-item img").eq(0).attr({
        src:src.replace("\/n5\/","\/n1\/"),
        jqimg:src.replace("\/n5\/","\/n0\/")
    });
});
    //导航那个悬浮
    $(".j-nav").posfixed({
        distance:0,
        pos:"top",
        type:"while",
        hide:false
    });
    //搜索框下拉框效果
    $(".search-box").mousedown(function(){
        $(".j-search-history").show();
    });
    $("form[name='searchForm']").mouseleave(function(){
        $(".j-search-history").hide();
    })
    function clear_search()
    {
        $.post('search.php?act=clear', '', clear_searchhtml, 'JSON');
    }
    function clear_searchhtml(){
        $('.history-items').html('');
    }
    
    
</script>

<!--[if IE 6]> 
<script src="style/js/ie6-tips.js"></script>
<![endif]-->
    <script src="style/js/jquery.easing.1.3.js"></script>
    <script src="style/js/Animation.js"></script>
    <script>
        //插件点击隐藏或者展示按钮
        $(".j-cover-page-plug-in div").bind("mouseenter mouseleave",function(e){
            if(e.type == "mouseenter"){
                $(this).find(".btn").show();
            }else{
                $(this).find(".btn").hide();
            }
        });
    // 商品动画
      var move=function(wrap,cname){
           
            $("."+wrap).each(function(){
                var obj=$(this).find("."+cname);
                var p=obj.find("p");
                $(this).hover(function(){
                    p.stop().animate({height:20},200);
                    $(this).addClass("active");
                },function(){
                    p.stop().animate({height:0},200);
                    $(this).removeClass("active");
                });
            });
        }
        move("j-items-li","wrap_div");
        // 插件动画
        var run = function() {
            var obj = $(".j-cover-page-plug-in");
            obj.addClass("clearfix");
            obj.find(".fl").css("height", 260);
            obj.find("img").css({
                position: "absolute",
                left: 0,
                top: 0
            });
            obj.find("img").hover(function() {
                $(this).stop().animate({
                    left: '-10px'
                },200);
            }, function() {
                $(this).stop().animate({
                    left: 0
                },200);
            });
        }
        run();
    </script>