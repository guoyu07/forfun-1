<!-- 页面顶部进度条示例 -->
<html>
<body>
<div id="pre" style="width: 0%;position: fixed;top: 0;left: 0;height: 3px;background-color: #0A74DA;"></div>

<h2>Hello World!</h2>

<script type="text/javascript">

(function() {
    var $w = $(window);
    var $prog2 = $('#pre');
    var wh = $w.height();
    var h = $('body').height();
    var sHeight = $('body').height() - $w.height();
    $w.on('scroll', function() {
      window.requestAnimationFrame(function(){
      	var sHeight = $('body').height() - $w.height();
        var perc = Math.max(0, Math.min(1, $w.scrollTop() / sHeight));
        updateProgress(perc);
      });
    });

    function updateProgress(perc) {
      $prog2.css({width: perc * 100 + '%'});
    }

  }());

</script>
</body>
</html>
