<?php include $this->_include('temp/header.html'); ?>
<link rel="stylesheet" href="<?php echo SITE_THEME; ?>lib/unslider/css/unslider.css">
<script type="text/javascript" src="<?php echo SITE_THEME; ?>lib/unslider/js/unslider.js"></script>
<div id="banner">
    <ul>
        <?php $return_item = $this->_listdata("catid=1 more=1  return=item"); extract($return_item); $count_item=count($return_item); if (is_array($return_item)) { foreach ($return_item as $key_item=>$item) { ?>
        <li>
            <a href="<?php echo $item['dianjidelianjie']; ?>" style="background-image: url('<?php echo $item['zhanshitupian']; ?>');"></a>
        </li>
        <?php } } ?>
    </ul>
</div>
<div style="position: relative; min-height: 764px; min-width: 1200px;">
    <img src="<?php echo SITE_THEME; ?>image/index-2-bg.png" alt="" style="position: absolute; width: 100%; height: 100%;">
    <h3 class="us-introduce" style="position: relative; z-index: 1;">中小微企业融资<br>方案解决商</h3>
    <div class="unified-width index-mk" style="position: relative; z-index: 1;">
        <h4>公司简介</h4>
        <span class="index-mk-fgx"></span>
        <p style="text-align: center;font-size: 24px; color: #363636; line-height: 1.8;">
            公司成立2012年2月，注册资本11亿元，<br>
            甘肃省工业和信息化委员会批准成立，<br>
            由甘肃省公路航空旅游投资集团公司独家发起设立的（国有）法人机构，<br>
            是甘肃省内资本规模最大的信用担保公司。<br>
            公司全力打造中国西北第一信用担保品牌，<br>
            为甘肃丝绸之路经济带黄金段建设发挥了重要的金融支撑作用。
        </p>
    </div>
</div>
<img src="<?php echo SITE_THEME; ?>image/ditu-index.jpg" class="zisheying-img">
<div class="unified-width index-mk" style="width: 1400px; margin-top: 120px;">
    <h4>合作银行</h4>
    <span class="index-mk-fgx" style="margin-top: 40px;margin-bottom: 50px;"></span>
    <div class="hzyh-list">
        <img src="<?php echo SITE_THEME; ?>image/blog1.jpg" alt="">
        <ul>
            <?php $return_item = $this->_listdata("catid=2 more=1 num=20  return=item"); extract($return_item); $count_item=count($return_item); if (is_array($return_item)) { foreach ($return_item as $key_item=>$item) { ?>
            <li>
                <a href="<?php echo $item['dianjilianjie']; ?>"><img src="<?php echo $item['zhanshiLOGO']; ?>" alt=""></a>
            </li>
            <?php } } ?>
        </ul>
    </div>
</div>
<script type="text/javascript">
    $('#banner').unslider({
        speed: 500,
        delay: 3000,
        animation: 'fade',
        arrows: false,
        autoplay: true
    });
</script>
<?php include $this->_include('temp/footer.html'); ?>