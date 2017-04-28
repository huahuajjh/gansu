<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<link href="<?php echo ADMIN_THEME; ?>images/reset.css" rel="stylesheet" type="text/css" />
<link href="<?php echo ADMIN_THEME; ?>images/system.css" rel="stylesheet" type="text/css" />
<link href="<?php echo ADMIN_THEME; ?>images/dialog.css" rel="stylesheet" type="text/css" />
<link href="<?php echo ADMIN_THEME; ?>images/switchbox.css" rel="stylesheet" type="text/css" />
<link href="<?php echo ADMIN_THEME; ?>luos/css/style.min.css?v=4.1.0" rel="stylesheet"><link href="<?php echo ADMIN_THEME; ?>images/table_form.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="<?php echo ADMIN_THEME; ?>js/jquery.min.js"></script>
<script type="text/javascript">var sitepath = "<?php echo SITE_PATH;  echo ENTRY_SCRIPT_NAME; ?>";</script>
<script type="text/javascript" src="<?php echo LANG_PATH; ?>lang.js"></script>
<script type="text/javascript" src="<?php echo ADMIN_THEME; ?>js/core.js"></script>
	<?php include $this->_include('admin/top.html'); ?>
<title>admin</title>
</head>
<body style="font-weight: normal;">
<div class="subnav">
	<div class="content-menu ib-a blue line-x">
		<a href="<?php echo url('admin/category/'); ?>"><em><?php echo lang('a-cat-12'); ?></em></a><span>|</span>
		<?php if (admin_auth($userinfo['roleid'], 'category-add')) { ?><a href="<?php echo url('admin/category/add'); ?>"><em><?php echo lang('a-cat-13'); ?></em></a><span>|</span><?php }  if (admin_auth($userinfo['roleid'], 'category-url')) { ?><a href="<?php echo url('admin/category/url'); ?>" class="on"><em><?php echo lang('a-cat-14'); ?></em></a><span>|</span><?php }  if (admin_auth($userinfo['roleid'], 'category-cache')) { ?><a href="<?php echo url('admin/category/cache'); ?>"><em><?php echo lang('a-cache'); ?></em></a><?php } ?>
	</div>
	<div class="bk10"></div>
	<div class="table-responsive mytable">
		<form method="post" action="" id="myform" name="myform">
		<table width="100%" class="table table-striped">
		<tr>
			<th width="200"><?php echo lang('a-cat-88'); ?>： </th>
			<td>
			<select name="catids[]" id="catid" style="width:200px;" size=15 multiple>
				<?php echo $category; ?>
			</select>
			<div class="onShow"><?php echo lang('a-cat-89'); ?></div>
			</td>
		</tr>
		<tr>
			<th><?php echo lang('a-cat-57'); ?>： </th>
			<td><input name="url[use]" type="radio" value="1" checked onClick="$('#url').show();"> <?php echo lang('a-open'); ?> 
			&nbsp;&nbsp;&nbsp;
			<input name="url[use]" type="radio" value="0" onClick="$('#url').hide();"> <?php echo lang('a-close'); ?></td>
		</tr>
		<tbody id="url">
		<tr>
			<th><?php echo lang('a-cat-58'); ?>： </th>
			<td><input name="url[tohtml]" type="radio" value="1" onClick="$('#html').show()"> <?php echo lang('a-yes'); ?> 
			&nbsp;&nbsp;&nbsp;
			<input name="url[tohtml]" type="radio" value="0" checked onClick="$('#html').hide()"> <?php echo lang('a-no'); ?></td>
		</tr>
		<tr id="html" style="display:none">
			<th><?php echo lang('a-cat-59'); ?>： </th>
			<td><input class="input-text" type="text" name="url[htmldir]" value="html" size="15"/>
			<div class="onShow"><?php echo lang('a-cat-60'); ?></div>
			</td>
		</tr>
		<tr>
			<th><?php echo lang('a-cat-68'); ?>： </th>
			<td>&nbsp;<a href="javascript:import_url();"><?php echo lang('a-cat-90'); ?></a></td>
		</tr>
		<tr>
			<th><?php echo lang('a-cat-61'); ?>： </th>
			<td><input id="url_list" class="input-text" type="text" name="url[list]" value="" size="40"/>
			<div class="onShow">&nbsp;<a href="javascript:win_category();"><?php echo lang('a-cat-62'); ?></a></div>
			</td>
		</tr>
		<tr>
			<th><?php echo lang('a-cat-63'); ?>： </th>
			<td><input id="url_list_page" class="input-text" type="text" name="url[list_page]" value="" size="40"/>
			<div class="onShow">&nbsp;<a href="javascript:win_category();"><?php echo lang('a-cat-62'); ?></a></div>
			</td>
		</tr>
		<tr>
			<th><?php echo lang('a-cat-64'); ?>： </th>
			<td><input id="url_show" class="input-text" type="text" name="url[show]" value="" size="40"/>
			<div class="onShow">&nbsp;<a href="javascript:win_show();"><?php echo lang('a-cat-62'); ?></a></div>
			</td>
		</tr>
		<tr>
			<th><?php echo lang('a-cat-65'); ?>： </th>
			<td><input id="url_show_page" class="input-text" type="text" name="url[show_page]" value="" size="40"/>
			<div class="onShow">&nbsp;<a href="javascript:win_show();"><?php echo lang('a-cat-62'); ?></a></div>
			</td>
		</tr>
		<tr>
			<th><?php echo lang('a-cat-66'); ?>： </th>
			<td><input class="input-text" id="url_catjoin" type="text" name="url[catjoin]" value="/" size="5"/>
			<div class="onShow"><?php echo lang('a-cat-67'); ?></div></td>
		</tr>
		</tbody>
		<tr>
			<th>&nbsp; </th>
			<td><input type="submit" class="btn btn-success btn-sm" value="<?php echo lang('a-submit'); ?>" name="submit"></td>
		</tr>
		</table>
		</form>
	</div>
</div>
</body>
</html>
<script type="text/javascript">
function win_category() {
    var body = '<style>.table-list td,.table-list th{ padding-left:12px; font-weight:normal;}.table-list thead th{ height:30px; background:#eef3f7; border-bottom:1px solid #d5dfe8; font-weight:normal}.table-list tbody td,.table-list .btn{ border-bottom: #eee 1px solid; padding-top:5px; padding-bottom:5px}</style><table width="350" border="0" cellpadding="1" cellspacing="0" class="table-list"><tr><td width="15%"><?php echo lang('a-cat-70'); ?></td><td width="85%">&nbsp;</td></tr><tr><td>{dir}</td><td><?php echo lang('a-cat-71'); ?></td></tr><tr><td>{pdir}</td><td><?php echo lang('a-cat-72'); ?></td></tr><tr><td>{page}</td> <td><?php echo lang('a-cat-73'); ?></td></tr><tr><td>{id}</td><td><?php echo lang('a-cat-74'); ?></td></tr><tr><td><?php echo lang('a-mod-154'); ?></td><td>&nbsp;</td></tr><tr><td colspan="2">1、<?php echo lang('a-mod-155'); ?><br>2、<?php echo lang('a-mod-156'); ?><br>3、<?php echo lang('a-mod-157'); ?><br></td></tr><tr><td><?php echo lang('a-cat-75'); ?></td><td>&nbsp;</td></tr><tr><td colspan="2">1、<?php echo lang('a-cat-77'); ?><br>2、<?php echo lang('a-cat-78'); ?><br>3、<?php echo lang('a-cat-79'); ?><br></td></tr><tr><td><?php echo lang('a-cat-81'); ?></td><td>&nbsp;</td></tr><td colspan="2"><?php echo lang('a-cat-82'); ?>：{pdir}/ <?php echo lang('a-cat-83'); ?>：news/china/。<br><?php echo lang('a-cat-82'); ?>：list-{dir}.html <?php echo lang('a-cat-83'); ?>：list-china.html。<br><?php echo lang('a-cat-82'); ?>：list-{id}-{page}.html <?php echo lang('a-cat-83'); ?>：list-1-1.html。<br></td></tr></table>';
    window.top.art.dialog({title:'<?php echo lang('a-cat-82'); ?>',fixed:true, content: body});
}
function win_show() {
    var body = '<style>.table-list td,.table-list th{ padding-left:12px; font-weight:normal;}.table-list thead th{ height:30px; background:#eef3f7; border-bottom:1px solid #d5dfe8; font-weight:normal}.table-list tbody td,.table-list .btn{ border-bottom: #eee 1px solid; padding-top:5px; padding-bottom:5px}</style><table width="350" border="0" cellpadding="1" cellspacing="0" class="table-list"><tr><td width="15%"><?php echo lang('a-cat-70'); ?></td><td width="85%">&nbsp;</td></tr><tr><td>{dir}</td><td><?php echo lang('a-cat-71'); ?></td></tr><tr><td>{pdir}</td><td><?php echo lang('a-cat-72'); ?></td></tr><tr><td>{page}</td> <td><?php echo lang('a-cat-73'); ?></td></tr><tr><td>{id}</td><td><?php echo lang('a-cat-76'); ?></td></tr><tr><tr><td>{y}</td><td><?php echo lang('a-cat-84'); ?></td></tr><tr><tr><td>{m}</td><td><?php echo lang('a-cat-85'); ?></td></tr><tr><tr><td>{d}</td><td><?php echo lang('a-cat-86'); ?></td></tr><tr><td><?php echo lang('a-mod-154'); ?></td><td>&nbsp;</td></tr><tr><td colspan="2">1、<?php echo lang('a-mod-155'); ?><br>2、<?php echo lang('a-mod-156'); ?><br>3、<?php echo lang('a-mod-157'); ?><br></td></tr><tr><td><?php echo lang('a-cat-75'); ?></td><td>&nbsp;</td></tr><td colspan="2">1、<?php echo lang('a-cat-77'); ?><br>2、<?php echo lang('a-cat-78'); ?><br>3、<?php echo lang('a-cat-80'); ?><br></td></tr><tr><td><?php echo lang('a-cat-81'); ?></td><td>&nbsp;</td></tr><td colspan="2"><?php echo lang('a-cat-82'); ?>：{pdir}/{id}.html <?php echo lang('a-cat-83'); ?>：news/china/10.html。<br><?php echo lang('a-cat-82'); ?>：show-{dir}.html <?php echo lang('a-cat-83'); ?>：show-10.html。<br><?php echo lang('a-cat-82'); ?>：show-{id}-{page}.html <?php echo lang('a-cat-83'); ?>：show-10-1.html。<br></td></tr></table>';
    window.top.art.dialog({title:'<?php echo lang('a-cat-82'); ?>',fixed:true, content: body});
}
function import_url() {
    var catid = $('#catid').val();
	if (catid == null || catid == '') {
	    alert('<?php echo lang('a-cat-9'); ?>');
	} else {
		$.getJSON('<?php echo url('admin/category/ajaximport'); ?>&catid='+catid+'&'+Math.random(), function(data){
			if (data.status==1) {
				$('#url_list').val(data.list);
				$('#url_list_page').val(data.list_page);
				$('#url_show').val(data.show);
				$('#url_show_page').val(data.show_page);
				$('#url_catjoin').val(data.catjoin);
			} else {
				alert('<?php echo lang('a-cat-87'); ?>');
			}
		});
	}
}
</script>
