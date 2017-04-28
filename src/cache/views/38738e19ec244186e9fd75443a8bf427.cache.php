<?php include $this->_include('temp/header.html'); ?>
<style type="text/css">
    .yqlj-index a {
        margin-right: 29px;
    }
    .yqlj-index a img{
        height: 40px;
    }
    .bottom-dh {
        position: absolute;
        right: -33px;
        top: 0;
    }

    .bottom-dh ul {
        width: 103px;
        float: left;
        margin-top: 13px;
        margin-left: 73px;
    }

    .bottom-dh li{
        margin-bottom: 5px;
    }

    .bottom-dh li.title{
        color: #fff;
        font-size: 18px;
        margin-bottom: 15px;
    }

    .bottom-dh li a{
        color: #fff;
    }
</style>
<link rel="stylesheet" href="<?php echo SITE_THEME; ?>lib/unslider/css/unslider.css">
<script type="text/javascript" src="<?php echo SITE_THEME; ?>lib/unslider/js/unslider.js"></script>
<link rel="stylesheet" href="<?php echo SITE_THEME; ?>lib/Swiper/idangerous.swiper2.7.6.css">
<script type="text/javascript" src="<?php echo SITE_THEME; ?>lib/Swiper/idangerous.swiper2.7.6.min.js"></script>
<div id="banner">
    <ul>
        <?php $return_item = $this->_listdata("catid=1 more=1  return=item"); extract($return_item); $count_item=count($return_item); if (is_array($return_item)) { foreach ($return_item as $key_item=>$item) { ?>
        <li>
            <a href="<?php echo $item['dianjidelianjie']; ?>" style="background-image: url('<?php echo $item['zhanshitupian']; ?>');"></a>
        </li>
        <?php } } ?>
    </ul>
</div>
<h3 class="us-introduce" style="position: relative; z-index: 1;">中小微企业<br>融资方案解决商</h3>
<div class="unified-width index-mk" style="width: 1200px; margin-top: 53px; padding-bottom: 0;">
    <h4>关于我们</h4>
    <hr style="
    margin: 0 auto;
    margin-bottom: 39px;
    margin-top: 20px;
    width: 200px;
">
    <ul class="index-about">
        <li>
            <a href="<?php echo $cats[4]['url']; ?>">
                <img src="<?php echo $cats[4]['image']; ?>" alt="">
                <h4>公司介绍</h4>
                <div class="info">
                    <div class="info-title">
                        <h4>公司介绍</h4>
                        <span><?php echo $cats[4]['meta_description']; ?></span>
                    </div>
                </div>
            </a>
        </li>
        <li>
            <a href="<?php echo $cats[5]['url']; ?>">
                <img src="<?php echo $cats[5]['image']; ?>" alt="">
                <h4>发展历程</h4>
                <div class="info">
                    <div class="info-title">
                        <h4>发展历程</h4>
                        <span><?php echo $cats[5]['meta_description']; ?></span>
                    </div>
                </div>
            </a>
        </li>
        <li>
            <a href="<?php echo $cats[6]['url']; ?>">
                <img src="<?php echo $cats[6]['image']; ?>" alt="">
                <h4>荣誉资质</h4>
                <div class="info">
                    <div class="info-title">
                        <h4>荣誉资质</h4>
                        <span><?php echo $cats[6]['meta_description']; ?></span>
                    </div>
                </div>
            </a>
        </li>
        <li>
            <a href="<?php echo $cats[8]['url']; ?>">
                <img src="<?php echo $cats[8]['image']; ?>" alt="">
                <h4>公司文化</h4>
                <div class="info">
                    <div class="info-title">
                        <h4>公司文化</h4>
                        <span><?php echo $cats[8]['meta_description']; ?></span>
                    </div>
                </div>
            </a>
        </li>
    </ul>
    <div class="clear"></div>
</div>
<div style="
    background: #ddd;
    padding-top: 24px;
    margin-top: 54px;
">
    <div class="unified-width index-mk" style="width: 1100px; padding-bottom: 28px">
        <h4>新闻中心</h4>
        <hr style="
        margin: 0 auto;
        margin-bottom: 39px;
        margin-top: 20px;
        width: 200px;
    ">
        <div class="index-news">
            <div class="index-news-swiper">
                <div id="indexNewsSwiper">
                    <ul>
                        <?php $return_item = $this->_listdata("catid=22 more=1  return=item"); extract($return_item); $count_item=count($return_item); if (is_array($return_item)) { foreach ($return_item as $key_item=>$item) { ?>
                        <li>
                            <a href="<?php echo $item['dianjitiaozhuan']; ?>" style="background-image: url('<?php echo $item['zhanshitu']; ?>');">
                                <span><?php echo $item['title']; ?></span>
                            </a>
                        </li>
                        <?php } } ?>
                    </ul>
                </div>
            </div>
            <div class="index-news-list">
                <ul>
                    <?php $return_item = $this->_listdata("catid=16 num=5 more=1  return=item"); extract($return_item); $count_item=count($return_item); if (is_array($return_item)) { foreach ($return_item as $key_item=>$item) { ?>
                    <li>
                        <a href="<?php echo $item['url']; ?>">【公司动态】<?php echo $item['title']; ?></a>
                    </li>
                    <?php } } ?>
                </ul>
                <ul>
                    <?php $return_item = $this->_listdata("catid=17 num=5 more=1  return=item"); extract($return_item); $count_item=count($return_item); if (is_array($return_item)) { foreach ($return_item as $key_item=>$item) { ?>
                    <li><a href="<?php echo $item['url']; ?>">【行业资讯】<?php echo $item['title']; ?></a></li>
                    <?php } } ?>
                </ul>
            </div>
            <div class="clear"></div>
        </div>
    </div>
</div>

<div class="unified-width index-mk" style="width: 1200px; margin-top: 37px; padding-bottom: 47px">
    <h4>产品服务</h4>
    <hr style="
    margin: 0 auto;
    margin-bottom: 39px;
    margin-top: 20px;
    width: 200px;
">
    <ul class="index-cpjs">
        <li>
            <a href="<?php echo $cats[13]['url']; ?>">
                <img src="<?php echo $cats[13]['image']; ?>" alt="">
                <h3>融资性担保业务</h3>
                <p><?php echo $cats[13]['meta_description']; ?></p>
                <span>查看详情</span>
            </a>
        </li>
        <li>
            <a href="<?php echo $cats[14]['url']; ?>">
                <img src="<?php echo $cats[14]['image']; ?>" alt="">
                <h3>非融资性担保业务</h3>
                <p><?php echo $cats[14]['meta_description']; ?></p>
                <span>查看详情</span>
            </a>
        </li>
        <li>
            <a href="<?php echo $cats[21]['url']; ?>">
                <img src="<?php echo $cats[21]['image']; ?>" alt="">
                <h3>业务流程</h3>
                <p><?php echo $cats[21]['meta_description']; ?></p>
                <span>查看详情</span>
            </a>
        </li>
    </ul>
    <div class="clear"></div>
</div>
<div style="
    background: #ddd;
    padding-top: 24px;
    margin-top: 54px;
">
    <div class="unified-width index-mk" style="width: 1100px; margin-top: 25px; padding-bottom: 0;">
        <h4>合作机构</h4>
        <hr style="
        margin: 0 auto;
        margin-bottom: 39px;
        margin-top: 20px;
        width: 200px;
    ">
        <div class="swiper-container" id="hzyhList">
            <div class="swiper-wrapper">
                <div class="swiper-slide">
                    <div class="hzyh-list">
                        <img src="<?php echo SITE_THEME; ?>image/blog1.jpg" alt="">
                            <?php $return_item = $this->_listdata("catid=2 more=1 page=1 pagesize=10  return=item"); extract($return_item); $count_item=count($return_item); if (is_array($return_item)) { foreach ($return_item as $key_item=>$item) { ?>
                            <a href="<?php echo $item['dianjilianjie']; ?>"><img src="<?php echo $item['zhanshiLOGO']; ?>" alt=""></a>
                            <?php } } ?>
                        </ul>
                    </div>
                </div>
                <div class="swiper-slide">
                    <div class="hzyh-list">
                        <img src="<?php echo SITE_THEME; ?>image/blog1.jpg" alt="">
                            <?php $return_item = $this->_listdata("catid=2 more=1 page=2 pagesize=10  return=item"); extract($return_item); $count_item=count($return_item); if (is_array($return_item)) { foreach ($return_item as $key_item=>$item) { ?>
                            <a href="<?php echo $item['dianjilianjie']; ?>"><img src="<?php echo $item['zhanshiLOGO']; ?>" alt=""></a>
                            <?php } } ?>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="unified-width yqlj-index" style="
        padding-top: 50px;
        padding-bottom: 50px;
    ">
        <span style="
        font-size: 18px;
        position: relative;
        top: -6px;
        margin-right: 30px;
    ">链接：</span>
        <a href="http://www.ghatg.com/" target="_bark">
            <img src="<?php echo SITE_THEME; ?>image/bottom-2-logo.png" alt="">
        </a>
        <a href="http://www.gsjrzb.cn/" target="_bark">
            <img src="<?php echo SITE_THEME; ?>image/bottom-1-logo.png" alt="">
        </a>
        <a href="https://www.loanedai.com/" target="_bark">
            <img src="<?php echo SITE_THEME; ?>image/bottom-3-logo.png" alt="">
        </a>
    </div>
</div>
<div style="background-color: #000843;">
    <div style="position: relative; width: 1100px; margin: 0 auto; padding: 20px 0;">
        <div style="padding: 20px 0; position: relative;">
            <p class="lxdz-info">
                <span class="info-title">联系地址：</span>
                <?php echo block(2); ?>
            </p>
            <p class="lxdh-info">
                <span class="info-title">联系电话：</span>
                <?php echo block(3); ?> 传真：<?php echo block(4); ?>
            </p>
            <p class="email-info">
                <span class="info-title">邮&emsp;&emsp;箱：</span>
                <?php echo block(5); ?>
            </p>
            <div class="bottom-dh">
                <ul>
                    <li class="title">关于我们</li>
                    <li><a href="<?php echo $cats[4]['url']; ?>">公司简介</a></li>
                    <li><a href="<?php echo $cats[5]['url']; ?>">发展历程</a></li>
                    <li><a href="<?php echo $cats[6]['url']; ?>">荣誉资质</a></li>
                    <li><a href="<?php echo $cats[7]['url']; ?>">管理团队</a></li>
                    <li><a href="<?php echo $cats[8]['url']; ?>">公司文化</a></li>
                </ul>
                <ul>
                    <li class="title">产品服务</li>
                    <li><a href="<?php echo $cats[13]['url']; ?>">融资性担保业务</a></li>
                    <li><a href="<?php echo $cats[14]['url']; ?>">非融资性担保业务</a></li>
                    <li><a href="<?php echo $cats[21]['url']; ?>">业务流程</a></li>
                </ul>
                <ul>
                    <li class="title">新闻中心</li>
                    <li><a href="<?php echo $cats[16]['url']; ?>">公司动态</a></li>
                    <li><a href="<?php echo $cats[17]['url']; ?>">行业资讯</a></li>
                </ul>
            </div>
        </div>
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
    $('#indexNewsSwiper').unslider({
        speed: 500,
        delay: 3000,
        animation: 'fade',
        arrows: false,
        autoplay: true
    });
    var mySwiper = new Swiper('#hzyhList',{
        autoplay : 3000,
        speed:300,
        loop: true
    })
</script>
<?php include $this->_include('temp/footer.html'); ?>