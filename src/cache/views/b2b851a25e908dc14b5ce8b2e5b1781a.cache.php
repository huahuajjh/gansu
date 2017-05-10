<?php include $this->_include('temp/header.html'); ?>
<style type="text/css">
    .xinwen-info {
        padding-top: 60px;
    }
    .xinwen-info > h2{
        margin: 0;
        text-align: center;
        color: #0098EF;
        font-size: 30px;
    }

    .xinwen-info > ul{
        text-align: center;
        padding: 20px 0;
    }
    .xinwen-info > ul > li{
        display: inline-block;
        margin: 0 10px;
    }

    .xinwen-info .content{
        padding-bottom: 100px;
    }
    .jiathis_style_32x32 {
        height: 70px;
        display: block;
    }
    .articlebook p{
        margin-bottom: 10px;
        font-size: 15px;
    }
</style>
<div class="pd-header">
    <div class="page-top-img" style="background-image: url('<?php echo $cats[15]['image']; ?>');"></div>
    <div style="position: relative; overflow: hidden;">
        <img src="<?php echo SITE_THEME; ?>image/page-bg.jpg" style="position: absolute; width: 100%; bottom: 0; left: 0;  height: 100%;">
        <div class="unified-width page-info" style="z-index: 1; position: relative;">
            <?php $zcs = getCatNav(15); ?>
            <div class="page-left-menu">
                <?php if (is_array($zcs)) { $count=count($zcs);foreach ($zcs as $i) { ?>
                <a href="<?php echo $i['url']; ?>" <?php if ($i['catid'] == $catid) { ?>class="active"<?php } ?>><?php echo $i['catname']; ?></a>
                <?php } } ?>
            </div>
            <div class="page-right-content xinwen-info">
                <h2><?php echo $title; ?></h2>
                <ul>
                    <li>来源：<?php echo $laiyuan; ?></li>
                    <li>作者：<?php echo $username; ?></li>
                    <li>发布时间：<?php echo date("Y-m-d", $updatetime); ?></li>
                    <li>浏览次数：<?php echo $hits; ?></li>
                </ul>
                <div class="content"><?php echo $content; ?></div>
                <!-- JiaThis Button BEGIN -->
                <div class="jiathis_style_32x32">
                    <a class="jiathis_button_qzone"></a>
                    <a class="jiathis_button_tsina"></a>
                    <a class="jiathis_button_tqq"></a>
                    <a class="jiathis_button_weixin"></a>
                    <a class="jiathis_button_renren"></a>
                    <a href="http://www.jiathis.com/share" class="jiathis jiathis_txt jtico jtico_jiathis" target="_blank"></a>
                    <a class="jiathis_counter_style"></a>
                </div>
                <script type="text/javascript" src="http://v3.jiathis.com/code/jia.js" charset="utf-8"></script>
                <!-- JiaThis Button END -->
                <div class="articlebook">
                    <?php if ($prev_page) { ?><p><strong>上一篇：</strong><a href="<?php echo $prev_page['url']; ?>"><?php echo $prev_page['title']; ?></a> </p><?php }  if ($next_page) { ?><p><strong>下一篇：</strong><a href="<?php echo $next_page['url']; ?>"><?php echo $next_page['title']; ?></a> </p><?php } ?>
                </div>
            </div>
            <div class="clear"></div>
        </div>
    </div>
</div>
<?php include $this->_include('temp/footer.html'); ?>