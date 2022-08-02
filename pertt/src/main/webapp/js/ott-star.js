$(function(){
	let user_num = $('#user_num').val();
	let starCheck = $('#starCheck').val();
	let reviewCheck = $('#reviewCheck').val();
   
   $('#ottLike_form').submit(function(event){
		let form_data = $(this).serialize();
		
		$.ajax({
			url:'writeOttStar.do',
			type:'post',
			data:form_data,
			dataType:'json',
			cache:false,
			timeout:30000,
			success:function(param){
				if(param.result == 'logout'){
					alert('로그인해야 작성할 수 있습니다.');
				}else if(param.result == 'success'){
					alert('등록이 완료되었습니다.');
					//별점 총점을 다시 호출함
					$('#star_avg').text('평균별점 : ★'+param.starAvg);
					starCheck = 1;

					showOttReviewForm(user_num,starCheck,reviewCheck);
				}
			},
			error:function(){
				alert('별점 등록에서 네트워크 오류 발생');	
			}
		});
		
		
		//기본 이벤트 제거
		event.preventDefault();
	});
   
   
   
});
