<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<link href="<?php echo ADMIN_THEME; ?>images/reset.css" rel="stylesheet" type="text/css" />
<link href="<?php echo ADMIN_THEME; ?>images/system.css" rel="stylesheet" type="text/css" />
<link href="<?php echo ADMIN_THEME; ?>images/dialog.css" rel="stylesheet" type="text/css" />
<link href="<?php echo ADMIN_THEME; ?>images/main.css" rel="stylesheet" type="text/css" />
<link href="<?php echo ADMIN_THEME; ?>images/switchbox.css" rel="stylesheet" type="text/css" />
<link href="<?php echo ADMIN_THEME; ?>luos/css/style.min.css?v=4.1.0" rel="stylesheet"><link href="<?php echo ADMIN_THEME; ?>images/table_form.css" rel="stylesheet" type="text/css" />
	<?php include $this->_include('admin/top.html'); ?>
<script type="text/javascript" src="<?php echo ADMIN_THEME; ?>js/jquery.min.js"></script>
<script type="text/javascript" src="<?php echo ADMIN_THEME; ?>js/dialog.js"></script>
<script type="text/javascript" src="<?php echo LANG_PATH; ?>lang.js"></script>
<title>admin</title>
</head>
<body style="font-weight: normal;">
<div class="subnav">
	<div class="content-menu ib-a blue line-x">
		<a href="<?php echo url('admin/block'); ?>" class="on"><em><?php echo lang('a-men-30'); ?></em></a><span>|</span>
		<?php if (admin_auth($userinfo['roleid'], 'block-add')) { ?><a href="<?php echo url('admin/block/add'); ?>"><em><?php echo lang('a-add'); ?></em></a><span>|</span><?php }  if (admin_auth($userinfo['roleid'], 'block-cache')) { ?><a href="<?php echo url('admin/block/cache'); ?>"><em><?php echo lang('a-cache'); ?></em></a><?php } ?>
	</div>
	<div class="bk10"></div>
	<div class="table-responsive mytable">
	<form action="" method="post" name="myform">
	<table class="table table-striped" width="100%">
	<thead>
	<tr>
		<th width="20" align="right"><input name="deletec" id="deletec" type="checkbox" onClick="setC()" /></th>
		<th width="250" align="left"><?php echo lang('a-name'); ?></th>
		<th width="90" align="left">&nbsp;</th>
		<th align="left"><?php echo lang('a-option'); ?></th>
	</tr>
	</thead>
	<tbody>
	<?php if (is_array($list)) { $count=count($list);foreach ($list as $t) { ?>
	<tr height="25">
		<td align="right"><input name="del_<?php echo $t['id']; ?>" type="checkbox" class="deletec" /></td>
		<td align="left"><?php echo $t['name']; ?></td>
		<td align="left"><?php echo $type[$t['type']]; ?></td>
		<td align="left">
		<?php $del = url('admin/block/del/',array('id'=>$t['id']));?>
		<a href="javascript:;" onClick="getViewData('<?php echo $t['id']; ?>');"><?php echo lang('a-blo-6'); ?></a> | 
		<a href="javascript:;" onClick="getViewName('<?php echo $t['id']; ?>');"><?php echo lang('a-blo-7'); ?></a> |
		<?php if (admin_auth($userinfo['roleid'], 'block-edit')) { ?><a href="<?php echo url('admin/block/edit',array('id'=>$t['id'])); ?>"><?php echo lang('a-edit'); ?></a> | <?php }  if (admin_auth($userinfo['roleid'], 'block-del')) { ?><a href="javascript:;" onClick="if(confirm('<?php echo lang('a-confirm'); ?>')){ window.location.href='<?php echo $del; ?>'; }"><?php echo lang('a-del'); ?></a><?php } ?>
		</td>
	</tr>
	<?php } } ?>
	<tr height="25">
	    <td colspan="4" align="left"> <input <?php if (!admin_auth($userinfo['roleid'], 'block-del')) { ?>disabled<?php } ?> type="submit" class="btn btn-success btn-sm" value="<?php echo lang('a-del'); ?>" name="submit_del" onclick="return confirm_del()" />&nbsp;</td>
	</tr>
	</table>
	<?php echo $pagelist; ?>
	</form>
	</div>
</div>
<script type="text/javascript">
function confirm_del() {
    if (confirm('<?php echo lang('a-confirm'); ?>')) { 
		return true; 
	} else {
	    return false;
	}
}
function setC() {
	if($("#deletec").attr('checked')) {
		$(".deletec").attr("checked",true);
	} else {
		$(".deletec").attr("checked",false);
	}
}
function getViewData(id) {
	var url = '<?php echo url("admin/block/ajaxview/",array("id"=>"")); ?>'+id;
	window.top.art.dialog(
	    {id:"ajaxview", okVal:fc_lang[6], cancelVal:fc_lang[7], iframe:url, title:'<?php echo lang('a-blo-6'); ?>', width:'250', height:'100', lock:true,
		button: [
            {
				name: '<?php echo lang('a-copy'); ?>',
				callback: function () {
					 var d = window.top.art.dialog({id:"ajaxview"}).data.iframe;
			         var c = d.document.getElementById('block_'+id).value;
					 copyToClipboard(c);
					 return false;
				},
				focus: true
            }, {
                name: '<?php echo lang('a-close'); ?>'
            }
        ]
		
		}
	);
}
function getViewName(id) {
	var url = '<?php echo url("admin/block/ajaxviewname/",array("id"=>"")); ?>'+id;
	window.top.art.dialog(
	    {id:"ajaxview", okVal:fc_lang[6], cancelVal:fc_lang[7], iframe:url, title:'<?php echo lang('a-blo-6'); ?>', width:'250', height:'100', lock:true,
		button: [
            {
				name: '<?php echo lang('a-copy'); ?>',
				callback: function () {
					 var d = window.top.art.dialog({id:"ajaxview"}).data.iframe;
			         var c = d.document.getElementById('block_'+id).value;
					 copyToClipboard(c);
					 return false;
				},
				focus: true
            }, {
                name: '<?php echo lang('a-close'); ?>'
            }
        ]

		}
	);
}
function copyToClipboard(meintext) {
    if (window.clipboardData){
        window.clipboardData.setData("Text", meintext);
    } else if (window.netscape){
        try {
            netscape.security.PrivilegeManager.enablePrivilege("UniversalXPConnect");
        } catch (e) {
            alert("<?php echo lang('a-att-18'); ?>"); 
		} 
        var clip = Components.classes['@mozilla.org/widget/clipboard;1'].
        createInstance(Components.interfaces.nsIClipboard);
        if (!clip) return;
        var trans = Components.classes['@mozilla.org/widget/transferable;1'].
        createInstance(Components.interfaces.nsITransferable);
        if (!trans) return;
        trans.addDataFlavor('text/unicode');
        var len = new Object();
        var str = Components.classes["@mozilla.org/supports-string;1"].
        createInstance(Components.interfaces.nsISupportsString);
        var copytext=meintext;
        str.data=copytext;
        trans.setTransferData("text/unicode",str,copytext.length*2);
        var clipid=Components.interfaces.nsIClipboard;
        if (!clip) return false;
        clip.setData(trans,null,clipid.kGlobalClipboard);
    }
    alert("<?php echo lang('a-att-19'); ?>");
    return false;
}
</script>
</body>
</html>