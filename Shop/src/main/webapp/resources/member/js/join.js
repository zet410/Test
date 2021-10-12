//화면 로딩 후 바로 실행
$(document).ready(function(){
	//ID INPUT태그 클릭 시 빨간 글자 지우기
	$(document).on('click', '#id', function() {
		$('#aaa').remove();
		$('#joinBtn').addClass('disabled');
    });
   
   
   
});

//함수 선언 영역
(function($){
	//비밀번호 일치 확인 후 submit
	goJoin = function(){
		var p1 = $('#pw').val();
		var p2 = $('#c_pw').val();
		
		if(p1 != p2){
			alert('비밀번호를 확인하세요.');
			$('input[type="password"]').val('');
			$('#pw').focus();
			
			return ;
		}
		
		$('#joinForm').submit();
					
	};
	
	//ID 중복 체크
	checkId = function(){
		var id = $('#id').val();
		
		if(id == ''){
			var aaa = $('#checkIdDiv').next().attr('id');
			
			if(aaa != 'aaa'){
				//선택한 태그 뒤에 html코드를 넣는다.
				$('#checkIdDiv').after('<div id="aaa" style="color: red; font-size: 12px; margin-top: 2px;">아이디를 입력하세요.</div>');
			}
			
			return ;
		}
		
		//
		$.ajax({
            url: '/member/checkId', //요청경로
            type: 'post',
            data:{'id':id}, //필요한 데이터
            success: function(result) {
				//기가입 : true, 미가입 : false
				
				//아이디 중복 일 때.
				if(result){
					$('#checkIdDiv').after('<div id="aaa" style="color: red; font-size: 12px; margin-top: 2px;">아이디가 중복입니다.</div>');
				}
				else{
					$('#checkIdDiv').after('<div id="aaa" style="color: blue; font-size: 12px; margin-top: 2px;">사용 가능한 아이디입니다.</div>');
					
		 			$('#joinBtn').removeClass('disabled');
				}			
				
            },
            error: function(){
             //ajax 실행 실패 시 실행되는 구간
               alert('실패');
            }
      	});
		
	};
   
})(jQuery);
























