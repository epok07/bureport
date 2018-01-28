
(function(){
	var iManage = {

	 	init : function(config){
	 		this.config = config;
	 		this.busy = false;
	 		this.displayed_content_title = "";
	 		this.update_note = $("<p class='update_note'>cet enregistrement a été modifié</i></p>");
	 		this.cancel_note = $("<p class='update_note'>cet enregistrement a été annulé</i></p>");
	 		this.update_data_command = "<span class='glyphicon glyphicon-edit update_data' data-toggle='tooltip' data-placement='top' title='Modifier cet enregistrement'></span>";
	 		this.cancel_data_command = "<span class='glyphicon glyphicon-trash cancel_data' data-toggle='tooltip' data-placement='top' title='Annuler cet enregistrement'></span>";

	 		//$.getScript( "js/scripts/notification_box.js").done(function(){iManage.notification_box.init();}).fail(function(jqXHR, textStatus, errorThrown){console.log(errorThrown);});
	 		//$.getScript( "js/scripts/login_box.js").done(function(){iManage.login_box.init();}).fail(function(jqXHR, textStatus, errorThrown){console.log(errorThrown);});
	 		//$.getScript( "js/scripts/menu.js").done(function(){iManage.menu.init();}).fail(function(jqXHR, textStatus, errorThrown){console.log(errorThrown);});
	 		//$.getScript( "js/scripts/update_box.js").done(function(){iManage.update_box.init();}).fail(function(jqXHR, textStatus, errorThrown){console.log(errorThrown);});
	 		//$.getScript( "js/scripts/confirm_box.js").done(function(){iManage.confirm_box.init();}).fail(function(jqXHR, textStatus, errorThrown){console.log(errorThrown);});
	 		//$.getScript( "js/scripts/processes.js").done(function(){}).fail(function(jqXHR, textStatus, errorThrown){console.log(errorThrown);});

	 		this.behaviour();
	 	},


	 	isEmpty : function (obj) {
	     // null and undefined are "empty"
	     if (obj == null) return true;

	     // Assume if it has a length property with a non-zero value
	     // that that property is correct.
	     if (obj.length > 0)    return false;
	     if (obj.length === 0)  return true;

	     // If it isn't an object at this point
	     // it is empty, but it can't be anything *but* empty
	     // Is it empty?  Depends on your application.
	     if (typeof obj !== "object") return true;

	     // Otherwise, does it have any properties of its own?
	     // Note that this doesn't handle
	     // toString and valueOf enumeration bugs in IE < 9
	     for (var key in obj) {
	         if (hasOwnProperty.call(obj, key)) return false;
	     }

	     return true;
	 	},

	 	behaviour: function(){

	 		$(".ajax-callable").on('submit', function (evt){
	 			$form = $(this);
	 			evt.preventDefault();

	        	// this points to our form
			        var str = $(this).serialize(); // Serialize the data for the POST-request
			        console.log('params', str);
			        var $action = $(this).attr('action');
			        console.log("Button Clicked !!");
			        $.ajax(
			        {
			            type: "POST",
					    //url: "contact.php",
			            url: $action,
			            data: str,
			            success: function (res)
			            {
			                //$("#note-top").ajaxComplete(function (event, request, settings)
			                //{
			                	var result = 'n/a';
			                    if (res.success == true ) // If a message is sent, the user thanks�
			                    {
			                        //result = '<div class="notification_ok">Message was sent to website administrator, thank you!</div>';
			                        result = "Data successfully saved !";
			                        //$("#fields").hide();
			                        $form.reset();
			                        toastr.success('Notice', result);
			                    }
			                    else
			                    {
			                        result = data.message;
			                    }
			                    $(this).html(result);
			                    toastr.error('Warning', result);
			                //});
			            }
			        });
			        return false;
			    });

	 		}
 	};

 	iManage.init();


})();
