/**
 * 리포트 정보 불러오기
 */

function modal(id) {
    var zIndex = 9999;
    var modal = $('#' + id);

    // 모달 div 뒤에 희끄무레한 레이어
    var bg = $('<div>')
        .css({
            position: 'fixed',
            zIndex: zIndex,
            left: '0px',
            top: '0px',
            width: '100%',
            height: '100%',
            overflow: 'auto',
            // 레이어 색갈은 여기서 바꾸면 됨
            backgroundColor: 'rgba(0,0,0,0.4)'
        })
        .appendTo('body');

    modal
        .css({
            position: 'fixed',
            boxShadow: '0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19)',

            // 시꺼먼 레이어 보다 한칸 위에 보이기
            zIndex: zIndex + 1,

            // div center 정렬
            top: '50%',
            left: '50%',
            transform: 'translate(-50%, -50%)',
            msTransform: 'translate(-50%, -50%)',
            webkitTransform: 'translate(-50%, -50%)'
        })
        .show()
        // 닫기 버튼 처리, 시꺼먼 레이어와 모달 div 지우기
        .find('.modal_close_btn')
        .on('click', function() {
            bg.remove();
            modal.hide();
            
         
        });
}


$('#search').on('click', function() {
    // 모달창 띄우기
    modal('my_modal');
});


 
$(document).ready(function(){

	$('.modal_close_btn').on('click',function(){
	
	
	       $.ajax({
				url:'/HN-Project/admin/report',
				method:'post',
				data: $("#getInfo").serialize(),
				
				dataType:'json',
				success : function(data){
					alert('dd');
					console.log("ajax sending:"+data);
					
					var html=""
					var date=""
					var phone=""
					
						data.forEach(function(d){
					console.log(d.addr1)
					
					html += d.addr1;
					html += d.addr2;
					html += d.addr3;
					
					date += d.join_date;
					
					phone += d.phone;
					})
					
					
					
				$('#add').append(html);
				$('#date').append(date);
				$('#phone').append(phone);
				}
			})
	})


});

/*pdf save*/



