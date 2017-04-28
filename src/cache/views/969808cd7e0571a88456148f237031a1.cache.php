<?php include $this->_include('temp/header.html');  $timeArr = array();  $return = $this->_listdata("catid=$catid more=1 order=shijian_desc"); extract($return); $count=count($result); if (is_array($result)) { foreach ($result as $key=>$t) {  $timeYear = date("Y", $t['shijian']);  $timeMouth = date("m", $t['shijian']);  $timeDay = date("d", $t['shijian']);  if (!array_key_exists($timeYear, $timeArr)) {  $timeArr[$timeYear] = array();  }  array_push($timeArr[$timeYear], array('year'=>$timeYear, 'mouth'=> $timeMouth, 'day'=>$timeDay, 'thumb'=> $t['zhanshitupian']));  } } ?>
<link rel="stylesheet" href="<?php echo SITE_THEME; ?>lib/Swiper/idangerous.swiper2.7.6.css">
<script type="text/javascript" src="<?php echo SITE_THEME; ?>lib/Swiper/idangerous.swiper2.7.6.min.js"></script>
<style type="text/css">
    #year-list {
        height: 32px;
    }
    #year-list .swiper-slide{
        font-size: 14px;
        color: #333;
        line-height: 2.4;
        text-align: center;
        cursor: pointer;
    }

    #year-list .swiper-slide.active{
        color: #357aff;
    }

    .topimg-lis {
        height: 156px;
    }
    .topimg-list img {
        width: 173px;
        height: 131px;
        display: block;
        margin: 0 auto;
    }
</style>
<div class="pd-header">
    <div class="page-top-img" style="background-image: url('<?php echo $cats[3]['image']; ?>');"></div>
    <div style="position: relative; overflow: hidden;">
        <img src="<?php echo SITE_THEME; ?>image/page-bg.jpg" style="position: absolute; width: 100%; bottom: 0; left: 0;  height: 100%;">
        <div class="unified-width page-info" style="z-index: 1; position: relative;">
            <?php $zcs = getCatNav(3); ?>
            <div class="page-left-menu">
                <?php if (is_array($zcs)) { $count=count($zcs);foreach ($zcs as $i) { ?>
                <a href="<?php echo $i['url']; ?>" <?php if ($i['catid'] == $catid) { ?>class="active"<?php } ?>><?php echo $i['catname']; ?></a>
                <?php } } ?>
            </div>
            <div class="page-right-content">
                <div class="topyear-list">
                    <div class="swiper-container" id="year-list">
                        <div class="swiper-wrapper">
                            <?php $i = 0;  if (is_array($timeArr)) { $count=count($timeArr);foreach ($timeArr as $k=>$v) { ?>
                            <div class="swiper-slide" onclick="gotoYear(<?php echo $i; ?>)"><?php echo $k; ?></div>
                            <?php $i++;  } } ?>
                        </div>
                    </div>
                    <a href="javascript:;" class="left-btn"></a>
                    <a href="javascript:;" class="right-btn"></a>
                </div>
                <?php if (is_array($timeArr)) { $count=count($timeArr);foreach ($timeArr as $k=>$v) { ?>
                <div class="topimg-list" style="display: none;">
                    <div class="swiper-container">
                        <div class="swiper-wrapper">
                            <?php if (is_array($v)) { $count=count($v);foreach ($v as $kT=>$vT) { ?>
                            <div class="swiper-slide">
                                <img src="<?php echo $vT['thumb']; ?>" alt="<?php echo $kT; ?>">
                            </div>
                            <?php } } ?>
                        </div>
                    </div>
                    <a href="javascript:;" class="left-btn"><span></span></a>
                    <a href="javascript:;" class="right-btn"><span></span></a>
                </div>
                <?php } }  if (is_array($timeArr)) { $count=count($timeArr);foreach ($timeArr as $k=>$v) { ?>
                <div class="images-list" style="display: none;">
                    <?php if (is_array($v)) { $count=count($v);foreach ($v as $kT=>$vT) { ?>
                    <img src="<?php echo $vT['thumb']; ?>" alt="">
                    <?php } } ?>
                </div>
                <?php } } ?>
            </div>
            <div class="clear"></div>
        </div>
    </div>
</div>

<script type="text/javascript">
    var yearSwiper = new Swiper('#year-list', {
        slidesPerView: 7,
        spaceBetween: 30
    });

    var topImgs = [];

    $(".page-right-content .left-btn").on("click", function() {
        yearSwiper.swipePrev();
    });

    $(".page-right-content .right-btn").on("click", function() {
        yearSwiper.swipeNext();
    });

    $(".topimg-list").each(function(index){
        var topImgSwiper = topImgs[index] = new Swiper($(this).find(".swiper-container")[0], {
            slidesPerView: 3,
            slidesPerGroup: 3,
            spaceBetween: 30,
            simulateTouch: false
        });
        function showImage(i) {
            $(".images-list").eq(index).find("> img").css("display", 'none').eq(i).css("display", 'block');
        };
        $(this).find(".left-btn").on("click", function() {
            topImgSwiper.swipePrev();
        });
        $(this).find(".right-btn").on("click", function() {
            topImgSwiper.swipeNext();
        });

        $(".swiper-slide", this).on("click", function() {
            var topimg_list = $(this).closest(".topimg-list");
            var index = $(".swiper-wrapper > .swiper-slide", topimg_list).index($(this));
            topimg_list.find(".swiper-slide").removeClass("active").eq(index).addClass("active");
            showImage(index);
        });

        $(this).find(".swiper-slide").eq(0).addClass("active");
        showImage(0);
    });

    function gotoYear(index) {
        $(".topimg-list").css("display", "none").eq(index).css("display", "block");
        $(".images-list").css("display", "none").eq(index).css("display", "block");
        $("#year-list .swiper-slide").removeClass("active").eq(index).addClass("active");
        topImgs[index].resizeFix();
    }
    gotoYear(0);
</script>
<?php include $this->_include('temp/footer.html'); ?>