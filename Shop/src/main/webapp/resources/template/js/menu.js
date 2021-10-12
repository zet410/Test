//화면 로딩 후 바로 실행
$(document).ready(function(){
	var loginModal = document.getElementById('loginModal');
	
   	loginModal.addEventListener('hidden.bs.modal', function (event) {
		$('.modal input:not([type="button"])').val('');
	});
	
	
   //$(document).on('click', '선택자', function() { 
   //});
   
});

//함수 선언 영역
(function($){
   
})(jQuery);
















