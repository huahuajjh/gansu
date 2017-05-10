<?php include $this->_include('temp/header.html');  $timeArr = array();  $return = $this->_sqldata("select * from gs_content_1 where catid=$catid order by updatetime desc"); extract($return); $count=count($result); if (is_array($result)) { foreach ($result as $key=>$t) {  $timeYear = date("Y", $t['updatetime']);  if (!array_key_exists($timeYear, $timeArr)) {  $timeArr[$timeYear] = array();  }  array_push($timeArr[$timeYear], $t['id']);  } } ?>
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
            <div class="page-right-content" style="position: relative;">
                <form class="js-year" id="cx" action="<?php echo $url; ?>" method="GET">
                    按年份检索
                    <select name="year" onchange="goYear(this)">
                        <option value="">全部</option>
                        <?php if (is_array($timeArr)) { $count=count($timeArr);foreach ($timeArr as $k=>$v) { ?>
                            <option value="<?php echo $k; ?>" <?php if ($_GET['year'] == $k) { ?>selected<?php } ?>><?php echo $k; ?></option>
                        <?php } } ?>
                    </select>
                </form>
                <ul class="xinwen-list">
                    <?php if ($_GET['year']) {  $yearArr = join(",", $timeArr[$_GET['year']]);  $return = $this->_listdata("catid=$catid and INid=$yearArr more=1 page=$page pagesize=8 order=updatetime"); extract($return); $count=count($result); if (is_array($result)) { foreach ($result as $key=>$t) { ?>
                        <li>
                            <img src="<?php echo $t['suofangtu']; ?>" alt="">
                            <div class="xinwen-list-info">
                                <h3><?php echo $t['title']; ?></h3>
                                <p><?php echo $t['description']; ?></p>
                                <div>
                                    <span><?php echo date("Y-m-d", $t['updatetime']); ?></span>
                                    <a href="<?php echo $t['url']; ?>">查看详情</a>
                                </div>
                            </div>
                            <div class="clear"></div>
                        </li>
                        <?php } }  } else {  $return = $this->_listdata("catid=$catid more=1 page=$page pagesize=8 order=updatetime"); extract($return); $count=count($result); if (is_array($result)) { foreach ($result as $key=>$t) { ?>
                        <li>
                            <img src="<?php echo $t['suofangtu']; ?>" alt="">
                            <div class="xinwen-list-info">
                                <h3><?php echo $t['title']; ?></h3>
                                <p><?php echo $t['description']; ?></p>
                                <div>
                                    <span><?php echo date("Y-m-d", $t['updatetime']); ?></span>
                                    <a href="<?php echo $t['url']; ?>">查看详情</a>
                                </div>
                            </div>
                            <div class="clear"></div>
                        </li>
                        <?php } }  } ?>
                </ul>
                <?php echo $pagelist; ?>
            </div>
            <div class="clear"></div>
        </div>
    </div>
</div>
<script type="text/javascript">
    function goYear(d) {
        location.href = '<?php echo $url; ?>' + '&year=' + $(d).val();
    }
</script>
<?php include $this->_include('temp/footer.html'); ?>