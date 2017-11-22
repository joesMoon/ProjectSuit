//chkSubit(유효성 체크 대상, 메세지 내용)

function chkData(v_item, v_msg) {
	if($(v_item).val().replace(/\s/g,"") == "") {
		alert(v_msg+" 입력해 주세요.");
		$(v_item).val("");
		$(v_item).focus();
		return false;
	} else {
		return true;
	}
}
//유효성체크대상, 출력영역, 메세지 내용
function formCheck(main, item, msg) {
	if(main.val().replace(/\s/g, "") == ""){
		item.html(msg+ "입력해 주세요");
		main.val("");
		main.focus();
		return false;
	} else {
		return true;
	}
}

function chkSubmit(v_item, v_msg){
	if($(v_item).val().replace(/\s/g,"") == "") {
		alert(v_msg+" 입력해 주세요.");
		$(v_item).val("");
		$(v_item).focus();
		return false;
	} else {
		return true;
	}
}

function chkFile(item){
	
//	배열 내의 값을 찾아서 인덱스를 반환합니다.
//	(요소가 없을 경우 -1을 반환)
//	jQuery.inArray(찾을 값, 검색 대상의 배열)
	
	var ext = item.val().split('.').pop().toLowerCase();
	
	if(jQuery.inArray(ext, ['gif', 'png', 'jpg', 'jpeg']) == -1) {
		alert('gif,png,jpg,jpeg 파일만 업로드 할 수 있습니다.');
		item.val("");
		return false;
	} else {
		return true;
	}
}

var pattern = [
	"((?=.*[a-zA-Z])(?=.*[0-9]).{6,10})",
	"((?=.*[a-zA-Z])(?=.*[0-9@#$%]).{8,12})",
	"^[가-힣]*$",
	"(02-[0-9]{3,4}-[0-9]{4})$"
];
function inputVerify(index, data, printarea) {
	var data_regExp = new RegExp(pattern[index]);
	var match = data_regExp.exec($(data).val());
	//맞지않으면 null값
	if(match==null) {
		$(printarea).html("입력값이 형식에 맞지 않습니다. 다시 입력해 주세요");
		$(data).val("")
		$(data).focus();
		return false;
	} else {
		return true;
	}
}

function inputVerifys(index, data) {
	var data_regExp = new RegExp(pattern[index]);
	var match = data_regExp.exec($(data).val());
	//맞지않으면 null값
	if(match==null) {
		alert("입력값이 형식에 맞지 않습니다. 다시 입력해 주세요");
		$(data).val("")
		$(data).focus();
		return false;
	} else {
		return true;
	}
}

