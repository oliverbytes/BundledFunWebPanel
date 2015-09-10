
$(document).ready(function(){

	function load(element, file){
		$(element).load(file);
	}

	load('#main_content', '../public/table_users.php');

	$('#groups').click(function(){
		load('#main_content', '../public/table_groups.php');
	});


	$('#users').click(function(){
		load('#main_content', '../public/table_users.php');
	});

	$('#questions').click(function(){
		load('#main_content', '../public/table_questions.php');
		$(document).ready();
	});

	$('#logout').click(function(e) {        // Button which will activate our modal
        $('#modal-dialog').reveal({                // The item which will be opened with reveal
            animation: 'fade',              // fade, fadeAndPop, none
            animationspeed: 200,            // how fast animtions are
            closeonbackgroundclick: false,   // if you click background will modal close?
            dismissmodalclass: 'close-reveal-modal'      // the class of a button or element that will close an open modal
        });
    	return false;
    });

    $('#update').click(function(e) {        // Button which will activate our modal
    	alert("update");
    });

    $('#delete').click(function(e) {        // Button which will activate our modal
    	alert("delete");
    });

});



