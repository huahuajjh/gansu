<?php include $this->_include('temp/header.html'); ?>
<link rel="stylesheet" href="<?php echo SITE_THEME; ?>lib/touchTouch/touchTouch.css">
<script type="text/javascript" src="<?php echo SITE_THEME; ?>lib/touchTouch/touchTouch.js"></script>
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
            <div class="page-right-content" style="padding-left: 53px;padding-right: 53px;">
                <div class="wenhua-item-info">
                    <h3>企业期刊</h3>
                    <hr>
                    <ul class="qiyeqikan-list">
                        <?php $return_item = $this->_listdata("catid=9 more=1  return=item"); extract($return_item); $count_item=count($return_item); if (is_array($return_item)) { foreach ($return_item as $key_item=>$item) { ?>
                        <li>
                            <div>
                                <img src="<?php echo $item['zhanshitu']; ?>" alt="">
                                <h4><?php echo $item['title']; ?> <a href="<?php echo $item['wenjian']; ?>" target="__bark"></a></h4>
                                <p><?php echo $item['description']; ?></p>
                            </div>
                        </li>
                        <?php } } ?>
                    </ul>
                    <div class="clear"></div>
                </div>
                <div class="clear"></div>
                <div class="wenhua-item-info"  style="padding-top: 130px;">
                    <h3>员工天地</h3>
                    <hr>
                    <ul class="ygtd-list">
                        <?php $return_item = $this->_listdata("catid=10 more=1  return=item"); extract($return_item); $count_item=count($return_item); if (is_array($return_item)) { foreach ($return_item as $key_item=>$item) { ?>
                        <li><img src="<?php echo $item['suofangtu']; ?>" alt="" onclick="showImageModal(['<?php echo $item['zhanshitu']; ?>']);"></li>
                        <?php } } ?>
                    </ul>
                    <div class="clear"></div>
                </div>
                <div class="wenhua-item-info"  style="padding-top: 50px;">
                    <h3 style="border: 0;">视频</h3>
                    <ul class="sp-list">
                        <?php $return_item = $this->_listdata("catid=11 more=1  return=item"); extract($return_item); $count_item=count($return_item); if (is_array($return_item)) { foreach ($return_item as $key_item=>$item) { ?>
                        <li>
                            <a onclick="showVedioModal('<?php echo $item['url']; ?>');">
                                <img src="<?php echo $item['suofangtu']; ?>" alt="">
                                <span></span>
                            </a>
                        </li>
                        <?php } } ?>
                    </ul>
                    <div class="clear"></div>
                </div>
            </div>
            <div class="clear"></div>
        </div>
    </div>
</div>

<style type="text/css">
    .sp-modal {
        position: fixed;
        width: 100%;
        height: 100%;
        top: 0;
        left: 0;
        background: #ccc;
        background: rgba(0, 0, 0, 0.7);
        z-index: 99999;
        display: none;
    }
    .sp-modal .modal-content {
        width: 1000px;
        margin: 30px auto;
        position: relative;
        background-color: #fff;
        border-radius: 6px;
        -webkit-box-shadow: 0 3px 9px rgba(0,0,0,0.5);
        box-shadow: 0 3px 9px rgba(0,0,0,0.5);
        border: 1px solid #999;
        border: 1px solid rgba(0,0,0,0.2);
    }
    .sp-modal .modal-content .modal-header{
        min-height: 16.428571429px;
        padding: 15px;
        border-bottom: 1px solid #e5e5e5;
        box-sizing: border-box;
    }
    .sp-modal .modal-content .modal-header .close {
        margin-top: -2px;
        padding: 0;
        cursor: pointer;
        background: transparent;
        border: 0;
        -webkit-appearance: none;
        float: right;
        font-size: 21px;
        font-weight: bold;
        line-height: 1;
        color: #000;
        text-shadow: 0 1px 0 #fff;
        opacity: .2;
        filter: alpha(opacity=20);
    }
    .sp-modal .modal-content .modal-body {
        height: 600px;
    }
    .sp-modal .modal-content .modal-body iframe{
        display: block;
        width: 100%;
        height: 100%;
        border: 0;
    }
</style>
<div class="sp-modal">
    <div class="modal-content">
        <div class="modal-header">
            <button type="button" class="close" onclick="closeVedioModal()">×</button>
            <h4 class="modal-title">播放视频</h4>
        </div>
        <div class="modal-body">
            <iframe></iframe>
        </div>
    </div>
</div>
<script>
    function showVedioModal(url) {
        $(".sp-modal iframe")[0].src = url;
        $(".sp-modal").fadeIn();
    }
    function closeVedioModal() {
        $(".sp-modal iframe")[0].src = '';
        $(".sp-modal").fadeOut();
    }
</script>
<?php include $this->_include('temp/footer.html'); ?>