<!DOCTYPE html>
<html lang="zh">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title><?php echo $meta_title; ?></title>
	<meta name="keywords" content="<?php echo $meta_keywords; ?>" />
	<meta name="description" content="<?php echo $meta_description; ?>" />
    <link rel="stylesheet" href="<?php echo SITE_THEME; ?>css/base.css">
    <link rel="stylesheet" href="<?php echo SITE_THEME; ?>css/style.css">
    <script type="text/javascript" src="<?php echo SITE_THEME; ?>js/jquery.1.11.3.js"></script>
</head>
<body>
    <div class="header">
        <div class="unified-width">
            <a href="/" class="logo"><img src="<?php echo SITE_THEME; ?>image/logo.png" alt=""></a>
            <ul class="header-menu">
                <li>
                    <a href="/">首页</a>
                </li>
                <li>
                    <a href="<?php echo $cats[4]['url']; ?>">关于我们</a>
                    <ul>
                        <li><a href="<?php echo $cats[4]['url']; ?>">公司简介</a></li>
                        <li><a href="<?php echo $cats[5]['url']; ?>">发展历程</a></li>
                        <li><a href="<?php echo $cats[6]['url']; ?>">荣誉资质</a></li>
                        <li><a href="<?php echo $cats[7]['url']; ?>">管理团队</a></li>
                        <li><a href="<?php echo $cats[8]['url']; ?>">公司文化</a></li>
                    </ul>
                </li>
                <li>
                    <a href="<?php echo $cats[13]['url']; ?>">产品服务</a>
                    <ul>
                        <li><a href="<?php echo $cats[13]['url']; ?>">融资性担保业务</a></li>
                        <li><a href="<?php echo $cats[14]['url']; ?>">非融资性担保业务</a></li>
                        <li><a href="<?php echo $cats[21]['url']; ?>">业务流程</a></li>
                    </ul>
                </li>
                <li>
                    <a href="<?php echo $cats[16]['url']; ?>">新闻中心</a>
                    <ul>
                        <li><a href="<?php echo $cats[16]['url']; ?>">公司动态</a></li>
                        <li><a href="<?php echo $cats[17]['url']; ?>">行业资讯</a></li>
                    </ul>
                </li>
                <li>
                    <a href="<?php echo $cats[19]['url']; ?>">联系我们</a>
                    <ul>
                        <li><a href="<?php echo $cats[19]['url']; ?>">人力资源</a></li>
                        <li><a href="<?php echo $cats[20]['url']; ?>">分子公司</a></li>
                    </ul>
                </li>
            </ul>
        </div>
    </div>