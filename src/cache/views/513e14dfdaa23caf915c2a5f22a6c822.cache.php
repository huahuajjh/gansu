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
                    <ul class="falc-list">
                        <?php $return_item = $this->_listdata("catid=$catid  return=item"); extract($return_item); $count_item=count($return_item); if (is_array($return_item)) { foreach ($return_item as $key_item=>$item) { ?>
                        <li>
                            <img src="<?php echo SITE_THEME; ?>image/d-y.png" class="not-hover" alt="">
                            <img src="<?php echo SITE_THEME; ?>image/d-n.png" class="hover" alt="">
                            <?php echo $item[title]; ?>
                        </li>
                        <?php } } ?>
                    </ul>
                </div>
                <div class="clear"></div>
            </div>
        </div>
    </div>
<?php include $this->_include('temp/footer.html'); ?>