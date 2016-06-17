/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

$(function() {
    var $formLogin = $('#login-form');
    var $formLost = $('#lost-form');
    var $formRegister = $('#register-form');
    var $divForms = $('#div-forms');
    var $modalAnimateTime = 300;
    var $msgAnimateTime = 150;
    var $msgShowTime = 10000;
    var $msgchange = 0;
    $("form").submit(function () {
        switch(this.id) {
            case "login-form":
                var $lg_username=$('#login_userID').val();
                var $lg_password=$('#login_password').val();
                if ($lg_username == "ERROR") {
                    msgChange($('#div-login-msg'), $('#icon-login-msg'), $('#text-login-msg'), "error", "glyphicon-remove", "Login error");
                } else {
                    //msgChange($('#div-login-msg'), $('#icon-login-msg'), $('#text-login-msg'), "success", "glyphicon-ok", "Login OK");
                }

                $.ajax({
                      type: "get",
                      url: "/suckapp/login.html",
                      data: $formLogin.serialize(),
                      contentType: "application/x-www-form-urlencoded",
                      success: function(responseData, textStatus, jqXHR) {
                    	  msgChange($('#div-login-msg'), $('#icon-login-msg'), $('#text-login-msg'), "success", "glyphicon-ok", jqXHR.responseText);
                      },
                      error: function(jqXHR, textStatus, errorThrown) {
                    	  msgChange($('#div-login-msg'), $('#icon-login-msg'), $('#text-login-msg'), "error", "glyphicon-remove", jqXHR.responseText);
                      }
                  })
                  //return true;

                break;
            case "lost-form":
                var $ls_email=$('#lost_email').val();
                if ($ls_email == "ERROR") {
                    msgChange($('#div-lost-msg'), $('#icon-lost-msg'), $('#text-lost-msg'), "error", "glyphicon-remove", "Send error");
                } else {
                   // msgChange($('#div-lost-msg'), $('#icon-lost-msg'), $('#text-lost-msg'), "success", "glyphicon-ok", "Send OK");
                }
                $.ajax({
                    type: "get",
                    url: "/suckapp/lost.html",
                    data: $formLost.serialize(),
                    contentType: "application/x-www-form-urlencoded",
                    success: function(responseData, textStatus, jqXHR) {
                    	$msgchange = 1;msgChange($('#div-lost-msg'), $('#icon-lost-msg'), $('#text-lost-msg'), "success", "glyphicon-ok", jqXHR.responseText);
                    },
                    error: function(jqXHR, textStatus, errorThrown) {
                    	msgChange($('#div-lost-msg'), $('#icon-lost-msg'), $('#text-lost-msg'), "error", "glyphicon-ok", jqXHR.responseText);
                    }
                })
                return false;
                break;
            case "register-form":
                var $rg_username=$('#register_username').val();
                var $rg_email=$('#register_email').val();
                var $rg_password=$('#register_password').val();
                if ($rg_username == "ERROR") {
                    msgChange($('#div-register-msg'), $('#icon-register-msg'), $('#text-register-msg'), "error", "glyphicon-remove", "Register error");
                } else {
                    //msgChange($('#div-register-msg'), $('#icon-register-msg'), $('#text-register-msg'), "success", "glyphicon-ok", "Register OK");
                }
                $.ajax({
                    type: "get",
                    url: "/suckapp/register.html",
                    data: $formRegister.serialize(),
                    contentType: "application/x-www-form-urlencoded",
                    success: function(responseData, textStatus, jqXHR) {
                    	msgChange($('#div-register-msg'), $('#icon-register-msg'), $('#text-register-msg'), "success", "glyphicon-ok", jqXHR.responseText);
                    },
                    error: function(jqXHR, textStatus, errorThrown) {
                    	msgChange($('#div-register-msg'), $('#icon-register-msg'), $('#text-register-msg'), "error", "glyphicon-remove", jqXHR.responseText);
                    }
                })
                //return false;
                break;
            default:
                return false;
        }
        return false;
    });
    
    $('#login_register_btn').click( function () { modalAnimate($formLogin, $formRegister) });
    $('#register_login_btn').click( function () { modalAnimate($formRegister, $formLogin); });
    $('#login_lost_btn').click( function () { modalAnimate($formLogin, $formLost); });
    $('#lost_login_btn').click( function () { modalAnimate($formLost, $formLogin); });
    $('#lost_register_btn').click( function () { modalAnimate($formLost, $formRegister); });
    $('#register_lost_btn').click( function () { modalAnimate($formRegister, $formLost); });
    
    function modalAnimate ($oldForm, $newForm) {
        var $oldH = $oldForm.height();
        var $newH = $newForm.height();
        $divForms.css("height",$oldH);
        $oldForm.fadeToggle($modalAnimateTime, function(){
            $divForms.animate({height: $newH}, $modalAnimateTime, function(){
                $newForm.fadeToggle($modalAnimateTime);
            });
        });
    }
    
    function msgFade ($msgId, $msgText) {
        $msgId.fadeOut($msgAnimateTime, function() {
            $(this).text($msgText).fadeIn($msgAnimateTime);
        });
    }
    
    function msgChange($divTag, $iconTag, $textTag, $divClass, $iconClass, $msgText) {
        var $msgOld = $divTag.text(); 
        msgFade($textTag, $msgText);
        $divTag.addClass($divClass);
        $iconTag.removeClass("glyphicon-chevron-right");
        $iconTag.addClass($iconClass + " " + $divClass);
        if($divClass == "success" && $msgchange !=1)
		{$msgShowTime = 3000;}
        setTimeout(function() {
        	if($divClass == "success" && $msgchange !=1)
        		{
        		document.getElementById("includedContent").innerHTML="<ul class=\"nav pull-right\"><li class=\"dropdown\"><a href=\"#\" class=\"dropdown-toggle\" data-toggle=\"dropdown\">Welcome," + $msgText + "<b class=\"caret\"></b></a><ul class=\"dropdown-menu\"><li><a href=\"/user/preferences\"><i class=\"icon-cog\"></i> Preferences</a></li><li><a href=\"/help/support\"><i class=\"icon-envelope\"></i> Contact Support</a></li><li class=\"divider\"></li><li><a href=\"/suckapp/logout.html\"><i class=\"icon-off\"></i> Logout</a></li></ul></li></ul>";
        		$('#login-modal').modal('toggle');
        		} else {
        		msgFade($textTag, $msgOld);
        		$divTag.removeClass($divClass);
            	$iconTag.addClass("glyphicon-chevron-right");
            	$iconTag.removeClass($iconClass + " " + $divClass);$msgChange ==0;}
  		}, $msgShowTime);
        
    }
});

