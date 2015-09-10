
$(document).ready(function(){

	$('tr').dblclick(function(){
		
		$('#modal-dialog').reveal({
            animation: 'fade',
            animationspeed: 200,
            closeonbackgroundclick: false,
            dismissmodalclass: 'close-reveal-modal'
        });

	});

});



