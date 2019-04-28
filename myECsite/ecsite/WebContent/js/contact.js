/**
 *
 */

$ (function(){

	// 入力テキストの値が変わったら、確認画面の項目に同期する
	$('#v1 table tr td .ChangeConfirm').change(function() {
	    relationId = $(this).data('confirm');
	    $("#"+relationId).html($(this).val().replace(/\n/g,"<br>\n"));
	});

	// 「確認へ」ボタン押下
	$("#goConfirm").click(function(){
		// Validationチェック
		checkFlag = valiCheck('contactForm');
		//チェックOKなら、確認表示へ切替
		if(checkFlag){
			$("#v1").hide();
			$("#v2").show(100);
		}
	});

	// 「修正する」ボタンを押下
	$("#goBack").click(function(){
	  	$("#v2").hide();
	    $("#v1").show(100);
	});
});

/*
 * Formのバリデーションチェック
 * formName string Form名前
 * return boolen true：OK false：NG
 */
function valiCheck(formName) {
	checkFlag = true;
	var msg = "";
	$('form[name='+formName+'] .IO').each(function(i, elem) {
    	//console.log(i + ': ' + $(elem).val());
    	var rules = $(elem).data('rule').split(',');
    	for(var j=0; j<rules.length; j++) {
    		// 必須チェックと後続処理
    		if(checkFlag && rules[j] == 'required'){
    			checkFlag = checkRequired(elem);
    			if(!checkFlag) {
    				msg = '#ITEM#は必須です。';
    				break;
    			}
    		}
    		// 電話番号チェックと後続処理
    		if(checkFlag && rules[j] == 'tel') {
    			checkFlag = checkTel(elem);
    			if(!checkFlag) {
    				msg = '#ITEM#は不正です。';
    				break;
    			}
    		}
    		// メアドチェックと後続処理
    		if(checkFlag && rules[j] == 'email') {
    			checkFlag = checkEmail(elem);
    			if(!checkFlag) {
    				//alert($(elem).attr('title') +'は不正です。');
    				msg = '#ITEM#は不正です。'
    				break;
    			}
    		}
    	}

    	if(checkFlag) {
    		$(elem).removeClass('ErrorIo');// if has
    	}else {
    		$(elem).addClass('ErrorIo');
    		alert(msg.replace(/#ITEM#/, $(elem).attr('title')));
    		return false;
    	}

	});

	return checkFlag;
}

/*
 * 必須チェック
 * elem document.element チェック対象
 * return boolen true：OK false：NG
 */
function checkRequired(elem) {
	if($(elem).val() == '') {
		return false;
	}
	return true;

}
/*
 * 電話番号チェック
 * elem document.element チェック対象
 * return boolen true：OK false：NG
 */
function checkTel(elem) {
	if($(elem).val() =='') {return true;}
	if(!$(elem).val().match(/^\d{2,5}\d{1,4}\d{4}$/)) {
		return false;
	}
	return true;
}

/*
 * メールアドレスチェック
 * elem document.element チェック対象
 * return boolen true：OK false：NG
 */
function checkEmail(elem) {
	if($(elem).val() =='') {return true;}
	if(!$(elem).val().match(/^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9-]+(?:\.[a-zA-Z0-9-]+)*$/)) {
		return false;
	}
	return true;
}