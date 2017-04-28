<?php include $this->_include('temp/header.html'); ?>
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
                <?php if ($catid == 4) { ?>
                    <img src="<?php echo block(1); ?>" alt="" style="display: block; width: 100%; margin: 7px auto 25px auto;">
                    <div style="padding: 0 40px;">
                        <?php echo $cats[$catid]['content']; ?>
                    </div>
                <?php } else {  echo $cats[$catid]['content'];  } ?>
            </div>
            <div class="clear"></div>
        </div>
    </div>
</div>
<?php include $this->_include('temp/footer.html'); ?>