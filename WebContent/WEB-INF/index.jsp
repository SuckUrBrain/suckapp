<%@ page session="false" %>
<html lang="en">

    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="description" content="">
        <meta name="author" content="">

        <title>SuckyourBrain - tastes good!</title>

        <!-- Bootstrap Core CSS -->
        <link href="<%=request.getContextPath()%>/assets/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css">

        <!-- Font Awesome CSS -->
        <link href="<%=request.getContextPath()%>/assets/css/font-awesome.min.css" rel="stylesheet" type="text/css">
		
		<!-- Custom CSS -->
        <link href="<%=request.getContextPath()%>/assets/css/animate.css" rel="stylesheet" type="text/css">
        <link href="<%=request.getContextPath()%>/assets/css/style.css" rel="stylesheet" type="text/css">
        <!-- Custom Fonts -->
        <link href='http://fonts.googleapis.com/css?family=Lobster' rel='stylesheet' type='text/css'>


        <!-- Template js -->
        <script src="<%=request.getContextPath()%>/assets/js/jquery-2.1.1.min.js"></script>
        <script src="<%=request.getContextPath()%>/assets/bootstrap/js/bootstrap.min.js"></script>
        <script src="<%=request.getContextPath()%>/assets/js/jquery.appear.js"></script>
        <script src="<%=request.getContextPath()%>/assets/js/contact_me.js"></script>
        <script src="<%=request.getContextPath()%>/assets/js/jqBootstrapValidation.js"></script>
        <script src="<%=request.getContextPath()%>/assets/js/modernizr.custom.js"></script>
        <script src="<%=request.getContextPath()%>/assets/js/script.js"></script>

        <!--[if lt IE 9]>
            <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
            <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
        <![endif]-->
        <script>
    
        $(function(){
          $("#includedContent").load("<%=request.getContextPath()%>/pages/modal_login_with_jquery_effects.html"); 
        });

        function randNext(start,end) {
            if (start == 1 && end == 9) {
              do
              {
                var randNum = [1,2,3,4,5,6,7,8,9][Math.floor(Math.random()*10)];
              } while (randNum == undefined);
              //document.write(randNum);
              return randNum;
            } else if (start == 1 && end == 4) {
              do
              {
                var randNum = [1,2,3,4][Math.floor(Math.random()*10)];
              } while (randNum == undefined);
              //document.write(randNum);
              return randNum;
            } else if (start == 3 && end == 8) {
              do
              {
                var randNum = [3,4,5,6,7,8][Math.floor(Math.random()*10)];
              } while (randNum == undefined);
              //document.write(randNum);
              return randNum;
            } else if (start == 3 && end == 7) {
              do
              {
                var randNum = [3,4,5,6,7][Math.floor(Math.random()*10)];
              } while (randNum == undefined);
              //document.write(randNum);
              return randNum;
            } 
          }
          function creatExpression(option) {
              do {
              var expression = "";
              var numOfOperand = randNext(1,4);
              //document.write("numOfOperand:"+numOfOperand);
              for (var i=0; i<numOfOperand; i++) {
                  randomNumber = randNext(1,9);

                  expression = expression + randomNumber;
                  var randomOperand = randNext(1, 4);

                  switch (randomOperand)
                  {
                      case 1:
                          operand = "+";
                      break;
                      case 2:
                          operand = "-";
                      break;
                      case 3:
                          operand = "*";
                      break;
                      case 4:
                          operand = "/";
                      break;
                  }
                  expression = expression + operand;
              }
              randomNumber = randNext(1,9);
              expression = expression + randomNumber;
              //document.write("expression:"+expression);
              var result = eval(expression)%.25;
          } while ( result != "0" );
              //var x = 1.5%1;
              //document.write(x);
                if (option == 2) {      
                    document.getElementById("smQ").value= expression;
                    var randomOperand = randNext(1, 4);

                  switch (randomOperand)
                  {
                      case 1:
                          document.getElementById("optionA").value= eval(expression);
                          document.getElementById("optionB").value= eval(expression)+1;
                          document.getElementById("optionC").value= eval(expression)-1;
                          document.getElementById("optionD").value= eval(expression)+2;
                      break;
                      case 2:
                          document.getElementById("optionB").value= eval(expression);
                          document.getElementById("optionA").value= eval(expression)-1;
                          document.getElementById("optionC").value= eval(expression)-2;
                          document.getElementById("optionD").value= eval(expression)+1;
                      break;
                      case 3:
                          document.getElementById("optionC").value= eval(expression);
                          document.getElementById("optionB").value= eval(expression)+1;
                          document.getElementById("optionA").value= eval(expression)+2;
                          document.getElementById("optionD").value= eval(expression)-1;
                      break;
                      case 4:
                          document.getElementById("optionD").value= eval(expression);
                          document.getElementById("optionA").value= eval(expression)-1;
                          document.getElementById("optionB").value= eval(expression)-2;
                          document.getElementById("optionC").value= eval(expression)+1;
                      break;
                  }       
            //document.write("expression:"+expression);
                } else {
                    return expression;
                }
          }
          
          function createTable(option) {
              var numOfRow = randNext(3,7);
              var numOfCol= "";
              do {
                 numOfCol = randNext(3,8);
                 cell = numOfRow*numOfCol;
              } while(cell < 4);
            wcol = Math.floor(Math.random()*numOfCol) + 1;
            wrow = Math.floor(Math.random()*numOfRow) + 1;     
              //document.write("numOfOperand:"+numOfRow*numOfCol);
              var theader = '<table class="tg">\n';
              var tbody="";
              var i = 1;
            for(var u=1; u<=numOfRow; u++){
              tbody += '<tr>';
                for( var j=1; j<=numOfCol; j++)
                {   
                    
                    if (u== wrow&& j==wcol){tbody += '<td class="tg-ut29">';
                    tbody += '&nbsp';
                    tbody += '</td>';
                    } else {
                    tbody += '<td class="tg-ut28"">';
                    tbody += '&nbsp';
                    tbody += '</td>';
                    }
                    i++;
                }
                tbody += '</tr>\n';
            }
            var tfooter = '</table> ';
            document.getElementById('tbQ').innerHTML = "";
            document.getElementById('tbQ').innerHTML = theader+tbody+tfooter;
              
       //             document.getElementById("smQ").value= expression;
                    var randomOperand = randNext(1, 4);
                  switch (randomOperand)
                  {
                      case 1:
                          document.getElementById("optionTA").value= wrow+"x"+wcol;
                          document.getElementById("optionTB").value= (wrow+1)+"x"+wcol;
                          document.getElementById("optionTC").value= wrow+"x"+(wcol+1);
                          document.getElementById("optionTD").value= (wrow+1)+"x"+(wcol+1);
                      break;
                      case 2:
                          document.getElementById("optionTB").value= wrow+"x"+wcol;
                          document.getElementById("optionTA").value= (wrow+1)+"x"+wcol;
                          document.getElementById("optionTC").value= wrow+"x"+(wcol+1);
                          document.getElementById("optionTD").value= (wrow+1)+"x"+(wcol+1);
                      break;
                      case 3:
                          document.getElementById("optionTC").value= wrow+"x"+wcol;
                          document.getElementById("optionTD").value= (wrow+1)+"x"+wcol;
                          document.getElementById("optionTB").value= wrow+"x"+(wcol+1);
                          document.getElementById("optionTA").value= (wrow+1)+"x"+(wcol+1);
                      break;
                      case 4:
                          document.getElementById("optionTD").value= wrow+"x"+wcol;
                          document.getElementById("optionTB").value= (wrow+1)+"x"+wcol;
                          document.getElementById("optionTA").value= wrow+"x"+(wcol+1);
                          document.getElementById("optionTC").value= (wrow+1)+"x"+(wcol+1);
                      break;
                  }       
            //document.write("expression:"+expression);
          }
          
          function createColor(option) {
              
            var colrs = ["Red #C91111", "Orange #FF8000", "Yellow #F6EB20", "Green #1C8E0D", "Sky #09C5F4", "Blue #2862B9", "Violet #7E44BC", "White #FFFFFF", "Brown #943F07", "Black #000000", "Gray #808080","Magenta #F863CB","Pink #FCA8CC","Maroon #A32E12","Navy #00003B"];
            
            while(1)
            {
                wcol = Math.floor(Math.random()*colrs.length);
                wfont = Math.floor(Math.random()*colrs.length);
                wnam = Math.floor(Math.random()*colrs.length);
                wop = Math.floor(Math.random()*colrs.length);
                if(!((wcol == wfont)|| (wfont== wnam)||(wnam == wop) ||(wop==wcol)|| (wfont== wop)||(wcol== wnam))) {
                    break;
                }
            }
            document.getElementById("colQ").value= colrs[wcol].split(" ")[0];
            $("#colQ").css("background",colrs[wnam].split(" ")[1]);
            $("#colQ").css("color",colrs[wfont].split(" ")[1]);
            
            var randomOperand = Math.floor(Math.random()*3) + 1;
                  switch (randomOperand)
                  {
                      case 1:
                        document.getElementById("qA").innerHTML= " Text Colour !";
                      break;
                      case 2:
                        document.getElementById("qA").innerHTML= " Background Colour !";  
                      break;
                      case 3:
                        document.getElementById("qA").innerHTML= " Read Colour !";  
                      break;
                  }
            
            var randomOperand = randNext(1, 4);
                  switch (randomOperand)
                  {
                      case 1:
                          document.getElementById("optionCA").value= colrs[wcol].split(" ")[0];
                          document.getElementById("optionCB").value= colrs[wnam].split(" ")[0];
                          document.getElementById("optionCC").value= colrs[wfont].split(" ")[0];
                          document.getElementById("optionCD").value= colrs[wop].split(" ")[0];
                      break;
                      case 2:
                          document.getElementById("optionCB").value= colrs[wcol].split(" ")[0];
                          document.getElementById("optionCA").value= colrs[wnam].split(" ")[0];
                          document.getElementById("optionCC").value= colrs[wop].split(" ")[0];
                          document.getElementById("optionCD").value= colrs[wfont].split(" ")[0];
                      break;
                      case 3:
                          document.getElementById("optionCC").value= colrs[wnam].split(" ")[0];
                          document.getElementById("optionCD").value= colrs[wcol].split(" ")[0];
                          document.getElementById("optionCB").value= colrs[wop].split(" ")[0];
                          document.getElementById("optionCA").value= colrs[wfont].split(" ")[0];
                      break;
                      case 4:
                          document.getElementById("optionCD").value= colrs[wnam].split(" ")[0];
                          document.getElementById("optionCB").value= colrs[wfont].split(" ")[0];
                          document.getElementById("optionCA").value= colrs[wop].split(" ")[0];
                          document.getElementById("optionCC").value= colrs[wcol].split(" ")[0];
                      break;
                  }
            //document.write("expression:"+expression);
          }
          
          function displayExpression(){
              document.write("<div class=\"section-modal modal fade\" id=\"feature-modal\" data-keyboard=\"true\" data-backdrop=\"static\" tabindex=\"-1\" role=\"dialog\" aria-hidden=\"true\">");
              document.write("<div class=\"modal-content\">");                    
              document.write("<div class=\"container\">");
              document.write("<div class=\"row\"><div class=\"col-md-4 col-sm-5 col-xs-12\"><div style=\"padding: 0px 10px;; font-weight: bold;font-size:40px;\"class=\"label-option\" id=\"Timer\"></div></div></div>");
              document.write("<div class=\"row\"><div class=\"col-md-4 col-sm-5 col-xs-12\"><div class=\"feature\"><div class=\"feature-content\"><div class=\"hidden-xs\"><br><br><br><br></div><input type=\"button\" id=\"smQ\" class=\"btn-block button\" value=");
              document.write("></div></div></div>"); 
              document.write("<div class=\"col-md-8 col-sm-7 col-xs-12\">");
                            document.write("<div class=\"feature\">");
                                document.write("<div class=\"feature-content\">");
                                    document.write("<div class=\"row\">");
                                        document.write("<div class=\"col-md-3 col-sm-2 col-xs-4\"><label class=\"label-option\">A.</label></div>");
                                        document.write("<div class=\"col-md-8 col-sm-9 col-xs-7\"><input type=\"button\" id=\"optionA\" onclick = \"creatExpression(2);\" class=\"button-option\" value=\"9\"><br></div>");
                                    document.write("</div>");
                                    document.write("<div class=\"row\">");
                                        document.write("<div class=\"col-md-3 col-sm-2 col-xs-4\"><label class=\"label-option\">B.</label></div>");
                                        document.write("<div class=\"col-md-8 col-sm-9 col-xs-7\"><input type=\"button\" id=\"optionB\" onclick = \"creatExpression(2);\" class=\"button-option\" value=\"10\"><br></div>");
                                    document.write("</div>");
                                    document.write("<div class=\"row\">");
                                        document.write("<div class=\"col-md-3 col-sm-2 col-xs-4\"><label class=\"label-option\">C.</label></div>");
                                        document.write("<div class=\"col-md-8 col-sm-9 col-xs-7\"><input type=\"button\" id=\"optionC\" onclick = \"creatExpression(2);\" class=\"button-option\" value=\"8\"><br></div>");
                                    document.write("</div>");
                                    document.write("<div class=\"row\">");
                                        document.write("<div class=\"col-md-3 col-sm-2 col-xs-4\"><label class=\"label-option\">D.</label></div>");
                                        document.write("<div class=\"col-md-8 col-sm-9 col-xs-7\"><input type=\"button\" id=\"optionD\" onclick = \"creatExpression(2);\" class=\"button-option\" value=\"11\"></div>");
                                    document.write("</div>");
                                document.write("</div>");
                            document.write("</div>");
                    document.write("</div>");
                document.write("</div>");
            document.write("</div>");
            document.write("</div>");           
            document.write("</div>");   

            creatExpression(2);
          }
          
          function displayTable(){
              document.write("<div class=\"section-modal modal fade\" id=\"cell-chooser-modal\"  data-keyboard=\"true\" data-backdrop=\"static\" tabindex=\"-1\" role=\"dialog\" aria-hidden=\"true\">");
              document.write("<div class=\"modal-content\">");                    
              document.write("<div class=\"container\">");
              document.write("<div class=\"row\"><div class=\"col-md-5 col-sm-7 col-xs-12\"><div style=\"padding: 0px 10px;; font-weight: bold;font-size:40px;\"class=\"label-option\" id=\"TimerT\"></div></div></div>");
              document.write("<div class=\"row\"><div class=\"col-md-5 col-sm-7 col-xs-12\"><div class=\"hidden-xs\"></div><div class=\"col-centered\" id=\"tbQ\"");
              document.write("></div><br></div>"); 
              document.write("<div class=\"col-md-7 col-sm-5 col-xs-12\">");
                            document.write("<div class=\"feature\">");
                                document.write("<div class=\"feature-content\">");
                                    document.write("<div class=\"row\">");
                                        document.write("<div class=\"col-md-3 col-sm-3 col-xs-4\"><label class=\"label-option\">A.</label></div>");
                                        document.write("<div class=\"col-md-8 col-sm-9 col-xs-7\"><input type=\"button\" id=\"optionTA\" onclick = \"createTable(2);\" class=\"button-option\" value=\"9\"><br></div>");
                                    document.write("</div>");
                                    document.write("<div class=\"row\">");
                                        document.write("<div class=\"col-md-3 col-sm-3 col-xs-4\"><label class=\"label-option\">B.</label></div>");
                                        document.write("<div class=\"col-md-8 col-sm-9 col-xs-7\"><input type=\"button\" id=\"optionTB\" onclick = \"createTable(2);\" class=\"button-option\" value=\"10\"><br></div>");
                                    document.write("</div>");
                                    document.write("<div class=\"row\">");
                                        document.write("<div class=\"col-md-3 col-sm-3 col-xs-4\"><label class=\"label-option\">C.</label></div>");
                                        document.write("<div class=\"col-md-8 col-sm-9 col-xs-7\"><input type=\"button\" id=\"optionTC\" onclick = \"createTable(2);\" class=\"button-option\" value=\"8\"><br></div>");
                                    document.write("</div>");
                                    document.write("<div class=\"row\">");
                                        document.write("<div class=\"col-md-3 col-sm-3 col-xs-4\"><label class=\"label-option\">D.</label></div>");
                                        document.write("<div class=\"col-md-8 col-sm-9 col-xs-7\"><input type=\"button\" id=\"optionTD\" onclick = \"createTable(2);\" class=\"button-option\" value=\"11\"></div>");
                                    document.write("</div>");
                                document.write("</div>");
                            document.write("</div>");
                    document.write("</div>");
                document.write("</div>");
            document.write("</div>");
            document.write("</div>");           
            document.write("</div>");   

            createTable(2);
          }
          
          function displayColor(){
              document.write("<div class=\"section-modal modal fade\" id=\"color-modal\"  data-keyboard=\"true\" data-backdrop=\"static\" tabindex=\"-1\" role=\"dialog\" aria-hidden=\"true\">");
              document.write("<div class=\"modal-content\">");                    
              document.write("<div class=\"container\">");
              document.write("<div class=\"row\"><div class=\"col-md-4 col-sm-5 col-xs-12\"><div style=\"padding: 0px 10px;; font-weight: bold;font-size:40px;\"class=\"label-option\" id=\"TimerC\"></div></div></div>");
              document.write("<div class=\"row\"><div class=\" col-md-5 col- col-sm-7 col-xs-12\"><div class=\"feature\"><div class=\"feature-content\"><div class=\"hidden-xs\"><br></div><input type=\"button\" id=\"colQ\" class=\"btn-block colorbutton\" value=");
              document.write("></div><br><div style=\"font-weight: bold; color:#FF432E; background-color: transparent; font-size:28px;\"class=\"label-option\" id=\"qA\"></div></div></div>"); 
              document.write("<div class=\"col-md-7 col-sm-5 col-xs-12\">");
                            document.write("<div class=\"feature\">");
                                document.write("<div class=\"feature-content\">");
                                    document.write("<div class=\"row\">");
                                        document.write("<div class=\"col-md-3 col-sm-3 col-xs-4\"><label class=\"label-option\">A.</label></div>");
                                        document.write("<div class=\"col-md-8 col-sm-8 col-xs-7\"><input type=\"button\" id=\"optionCA\" onclick = \"createColor(2);\" class=\"button-option\" value=\"9\"><br></div>");
                                    document.write("</div>");
                                    document.write("<div class=\"row\">");
                                        document.write("<div class=\"col-md-3 col-sm-3 col-xs-4\"><label class=\"label-option\">B.</label></div>");
                                        document.write("<div class=\"col-md-8 col-sm-8 col-xs-7\"><input type=\"button\" id=\"optionCB\" onclick = \"createColor(2);\" class=\"button-option\" value=\"10\"><br></div>");
                                    document.write("</div>");
                                    document.write("<div class=\"row\">");
                                        document.write("<div class=\"col-md-3 col-sm-3 col-xs-4\"><label class=\"label-option\">C.</label></div>");
                                        document.write("<div class=\"col-md-8 col-sm-8 col-xs-7\"><input type=\"button\" id=\"optionCC\" onclick = \"createColor(2);\" class=\"button-option\" value=\"8\"><br></div>");
                                    document.write("</div>");
                                    document.write("<div class=\"row\">");
                                        document.write("<div class=\"col-md-3 col-sm-3 col-xs-4\"><label class=\"label-option\">D.</label></div>");
                                        document.write("<div class=\"col-md-8 col-sm-8 col-xs-7\"><input type=\"button\" id=\"optionCD\" onclick = \"createColor(2);\" class=\"button-option\" value=\"11\"></div>");
                                    document.write("</div>");
                                document.write("</div>");
                            document.write("</div>");
                    document.write("</div>");
                document.write("</div>");
            document.write("</div>");
            document.write("</div>");           
            document.write("</div>");   

            createColor(2);
          }
          
          
          
          function CreateTimer(Time) {
            Timer = document.getElementById(Time);
            TotalMilliSeconds = 0;

            UpdateTimer()
            window.setTimeout("Tick()", 100);
            
          }
          
          function Tick() {
            if (TotalMilliSeconds >= 120000) {
            alert("Time's up!")
            return;
            }

            TotalMilliSeconds += 100;
            UpdateTimer()
            window.setTimeout("Tick()", 100);
          }
          
          function UpdateTimer() {
                var milliSeconds = TotalMilliSeconds;
                var Days = Math.floor(milliSeconds / 86400000);
                milliSeconds -= Days * 86400000;

                var Hours = Math.floor(milliSeconds / 3600000);
                milliSeconds -= Hours * (3600000);

                var Minutes = Math.floor(milliSeconds / 60000);
                milliSeconds -= Minutes * (60000);
                var Seconds = Math.floor(milliSeconds / 1000);
                milliSeconds -= Seconds * (1000);


                var TimeStr = ((Days > 0) ? Days + " days " : "") + ((LeadingZero(Hours) > 0) ? LeadingZero(Hours) + ":" : "") + ((LeadingZero(Minutes) > 0) ? LeadingZero(Minutes) + ":" : "") + LeadingZero(Seconds) + ":" + LeadingMilliZero(milliSeconds)


                Timer.innerHTML = TimeStr;
                }


          function LeadingZero(Time) {

            return (Time < 10) ? "0" + Time : + Time;

          }
          function LeadingMilliZero(Time) {
               return "0" + Time/100;
          }
        </script>
    </head>
    
    <body>
        
        <!-- Start Logo Section -->
        <section id="logo-section" class="text-center">
            <div class="container">
                <div class="row">
                    <div class="col-md-3">
                        <div class="logo text-center">
                            <span>SuckyourBrain...</span><span class="subtle hidden-xs">&nbsp;It&nbsp;tastes&nbsp;GOOD!</span>
                        </div>
                    </div>
                    <div class="col-md-2">
                        <div class="logo">
                              
                        </div>
                    </div>
                    <div class="col-md-7">
                    <% 
                    String username = (String)request.getAttribute("state");
                    if (username.equals("Login"))
                    {
                    	out.print("<div style=\"padding-top:10px;\" id=\"includedContent\"></div>/");
                    }
                    else
                    {
                    	out.print("<ul class=\"nav pull-right\"><li class=\"dropdown\"><a href=\"#\" class=\"dropdown-toggle\" data-toggle=\"dropdown\">Welcome,"+request.getAttribute("state"));
                    	out.print("<b class=\"caret\"></b></a><ul class=\"dropdown-menu\"><li><a href=\"/user/preferences\"><i class=\"icon-cog\"></i> Preferences</a></li><li><a href=\"/help/support\"><i class=\"icon-envelope\"></i> Contact Support</a></li><li class=\"divider\"></li><li><a href=\"/suckapp/logout.html\"><i class=\"icon-off\"></i> Logout</a></li></ul></li></ul>");
                    }
                   	%>
                        
                    </div>
                </div>
            </div>
        </section>
        <!-- End Logo Section -->
        
        
        <!-- Start Main Body Section -->
        <div class="mainbody-section text-center">
            <div class="container">
                <div class="row">
                    
                    <div class="col-md-3">
                        
                        <div class="menu-item blue">
                            <a href="#feature-modal" onclick="CreateTimer('Timer');" data-toggle="modal">
                                <i class="fa fa-magic"></i>
                                <p>Simple Math</p>
                            </a>
                        </div>
                        
                        <div class="menu-item green">
                            <a href="#cell-chooser-modal" onclick="CreateTimer('TimerT');" data-toggle="modal">
                                <i class="fa fa-file-photo-o"></i>
                                <p>Cell Chooser</p>
                            </a>
                        </div>
                        
                        <div class="menu-item light-red">
                            <a href="#color-modal" onclick="CreateTimer('TimerC');" data-toggle="modal">
                                <i class="fa fa-user"></i>
                                <p>Play With Color</p>
                            </a>
                        </div>
                        
                    </div>
                    
                    <div class="col-md-6">
                        
                        <!-- Start Carousel Section -->
                        <div class="home-slider">
                            <div id="carousel-example-generic" class="carousel slide" data-ride="carousel" style="padding-bottom: 30px;">
                                <!-- Indicators -->
                                <ol class="carousel-indicators">
                                    <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
                                    <li data-target="#carousel-example-generic" data-slide-to="1"></li>
                                    <li data-target="#carousel-example-generic" data-slide-to="2"></li>
                                </ol>

                                <!-- Wrapper for slides -->
                                <div class="carousel-inner">
                                    <div class="item active">
                                        <img src="<%=request.getContextPath()%>/assets/images/about-03.jpg" class="img-responsive" alt="">
                                    </div>
                                    <div class="item">
                                        <img src="<%=request.getContextPath()%>/assets/images/about-02.jpg" class="img-responsive" alt="">
                                    </div>
                                    <div class="item">
                                        <img src="<%=request.getContextPath()%>/assets/images/about-01.jpg" class="img-responsive" alt="">
                                    </div>

                                </div>

                            </div>
                        </div>
                        <!-- Start Carousel Section -->
                        
                        <div class="row">
                            <div class="col-md-6">
                                <div class="menu-item color responsive">
                                    <a href="#service-modal" data-toggle="modal">
                                        <i class="fa fa-area-chart"></i>
                                        <p>Coming soon</p>
                                    </a>
                                </div>
                            </div>
                            
                            <div class="col-md-6">
                                <div class="menu-item light-orange responsive-2">
                                    <a href="#team-modal" data-toggle="modal">
                                        <i class="fa fa-users"></i>
                                        <p>Team</p>
                                    </a>
                                </div>
                            </div>
                            
                        </div>
                        
                    </div>
                    
                    <div class="col-md-3">
                        
                        <div class="menu-item light-red">
                            <a href="#contact-modal" data-toggle="modal">
                                <i class="fa fa-envelope-o"></i>
                                <p>soon</p>
                            </a>
                        </div>
                        
                        <div class="menu-item color">
                            <a href="#testimonial-modal" data-toggle="modal">
                                <i class="fa fa-comment-o"></i>
                                <p>Coming soon</p>
                            </a>
                        </div>
                        
                        <div class="menu-item blue">
                            <a href="#news-modal" data-toggle="modal">
                                <i class="fa fa-mortar-board"></i>
                                <p>Latest News</p>
                            </a>
                        </div>
                        
                    </div>
                </div>
            </div>
        </div>
        <!-- End Main Body Section -->
        
        <!-- Start Copyright Section -->
        <div class="copyright text-center">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <div>Design & Developed by <a href="https://www.facebook.com/Shahriyar.Ahmed.Sohel" target="_blank">Shahriyar Ahmed</a> for <a href="http://graygrids.com">GrayGrids</a></div>
                    </div>
                </div>
            </div>
        </div>
        <!-- End Copyright Section -->
        
        
        <!-- Start Feature Section -->
        
            
                
               
        <script LANGUAGE="JavaScript" type="text/javascript">                                        

            displayExpression();
            displayTable();
            displayColor();

        </script><!-- /.col-md-3 -->
                
            
        
        <!-- End Feature Section -->
        
        
        
        <!-- Start Portfolio Section -->
        <div class="section-modal modal fade" id="portfolio-modal" tabindex="-1" role="dialog" aria-hidden="true">
            <div class="modal-content">
                <div class="close-modal" data-dismiss="modal">
                    <div class="lr">
                        <div class="rl">
                        </div>
                    </div>
                </div>
                
                <div class="container">
                    <div class="row">
                        <div class="section-title text-center">
                            <h3>Our Portfolio</h3>
                            <p>Duis aute irure dolor in reprehenderit in voluptate</p>
                        </div>
                    </div>
                    <div class="row">
                        
                        <div class="col-md-4">
                            <div class="portfolio-item">
                                <img src="<%=request.getContextPath()%>/assets/images/portfolio/1.png" class="img-responsive" alt="...">
                                <div class="portfolio-details text-center">
                                    <h4>Project Name</h4>
                                    <a href="#"><i class="fa fa-link"></i></a>
                                </div>
                            </div>
                        </div>
                        
                        <div class="col-md-4">
                            <div class="portfolio-item">
                                <img src="<%=request.getContextPath()%>/assets/images/portfolio/2.png" class="img-responsive" alt="...">
                                <div class="portfolio-details text-center">
                                    <h4>Project Name</h4>
                                    <a href="#"><i class="fa fa-link"></i></a>
                                </div>
                            </div>
                        </div>
                        
                        <div class="col-md-4">
                            <div class="portfolio-item">
                                <img src="<%=request.getContextPath()%>/assets/images/portfolio/3.png" class="img-responsive" alt="...">
                                <div class="portfolio-details text-center">
                                    <h4>Project Name</h4>
                                    <a href="#"><i class="fa fa-link"></i></a>
                                </div>
                            </div>
                        </div>
                        
                        <div class="col-md-4">
                            <div class="portfolio-item">
                                <img src="<%=request.getContextPath()%>/assets/images/portfolio/4.png" class="img-responsive" alt="...">
                                <div class="portfolio-details text-center">
                                    <h4>Project Name</h4>
                                    <a href="#"><i class="fa fa-link"></i></a>
                                </div>
                            </div>
                        </div>
                        
                        <div class="col-md-4">
                            <div class="portfolio-item">
                                <img src="<%=request.getContextPath()%>/assets/images/portfolio/5.png" class="img-responsive" alt="...">
                                <div class="portfolio-details text-center">
                                    <h4>Project Name</h4>
                                    <a href="#"><i class="fa fa-link"></i></a>
                                </div>
                            </div>
                        </div>
                        
                        <div class="col-md-4">
                            <div class="portfolio-item">
                                <img src="<%=request.getContextPath()%>/assets/images/portfolio/6.png" class="img-responsive" alt="...">
                                <div class="portfolio-details text-center">
                                    <h4>Project Name</h4>
                                    <a href="#"><i class="fa fa-link"></i></a>
                                </div>
                            </div>
                        </div>
                        
                        <div class="col-md-4">
                            <div class="portfolio-item">
                                <img src="<%=request.getContextPath()%>/assets/images/portfolio/7.png" class="img-responsive" alt="...">
                                <div class="portfolio-details text-center">
                                    <h4>Project Name</h4>
                                    <a href="#"><i class="fa fa-link"></i></a>
                                </div>
                            </div>
                        </div>
                        
                        <div class="col-md-4">
                            <div class="portfolio-item">
                                <img src="<%=request.getContextPath()%>/assets/images/portfolio/8.png" class="img-responsive" alt="...">
                                <div class="portfolio-details text-center">
                                    <h4>Project Name</h4>
                                    <a href="#"><i class="fa fa-link"></i></a>
                                </div>
                            </div>
                        </div>
                        
                        <div class="col-md-4">
                            <div class="portfolio-item">
                                <img src="<%=request.getContextPath()%>/assets/images/portfolio/9.png" class="img-responsive" alt="...">
                                <div class="portfolio-details text-center">
                                    <h4>Project Name</h4>
                                    <a href="#"><i class="fa fa-link"></i></a>
                                </div>
                            </div>
                        </div>
                        
                        <div class="col-md-4">
                            <div class="portfolio-item">
                                <img src="<%=request.getContextPath()%>/assets/images/portfolio/10.png" class="img-responsive" alt="...">
                                <div class="portfolio-details text-center">
                                    <h4>Project Name</h4>
                                    <a href="#"><i class="fa fa-link"></i></a>
                                </div>
                            </div>
                        </div>
                        
                        <div class="col-md-4">
                            <div class="portfolio-item">
                                <img src="<%=request.getContextPath()%>/assets/images/portfolio/11.png" class="img-responsive" alt="...">
                                <div class="portfolio-details text-center">
                                    <h4>Project Name</h4>
                                    <a href="#"><i class="fa fa-link"></i></a>
                                </div>
                            </div>
                        </div>
                        
                        <div class="col-md-4">
                            <div class="portfolio-item">
                                <img src="<%=request.getContextPath()%>/assets/images/portfolio/12.png" class="img-responsive" alt="...">
                                <div class="portfolio-details text-center">
                                    <h4>Project Name</h4>
                                    <a href="#"><i class="fa fa-link"></i></a>
                                </div>
                            </div>
                        </div>
                        
                    </div><!-- /.row -->
                </div>
                
            </div>
        </div>
        <!-- End Portfolio Section -->
        
        
        <!-- Start About Us Section -->
        <div class="section-modal modal fade" id="about-modal" tabindex="-1" role="dialog" aria-hidden="true">
            <div class="modal-content">
                <div class="close-modal" data-dismiss="modal">
                    <div class="lr">
                        <div class="rl">
                        </div>
                    </div>
                </div>
                
                <div class="container">
                    <div class="row">
                        <div class="section-title text-center">
                            <h3>About Us</h3>
                            <p>Duis aute irure dolor in reprehenderit in voluptate</p>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-12">
                            <div class="about-text">
                                <p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident. It has roots in a piece of classical Latin literature from 45 BC</p>
                                <div class="row">
                                    <div class="col-md-4 col-sm-6">
                                        <ul>
                                            <li><i class="fa fa-check-square"></i>Sed ut perspiciatis unde omnis iste natus</li>
                                            <li><i class="fa fa-check-square"></i>Nor again is there anyone who loves</li>
                                            <li><i class="fa fa-check-square-o"></i>At vero eos et accusamus et iusto odio</li>
                                            <li><i class="fa fa-check-square-o"></i>Et harum quidem rerum facilis</li>
                                        </ul>
                                    </div>
                                    <div class="col-md-4 col-sm-6">
                                        <ul>
                                            <li><i class="fa fa-check-square"></i>Nor again is there anyone who loves</li>
                                            <li><i class="fa fa-check-square"></i>Nor again is there anyone who loves</li>
                                            <li><i class="fa fa-check-square-o"></i>Et harum quidem rerum facilis</li>
                                            <li><i class="fa fa-check-square-o"></i>At vero eos et accusamus et iusto odio</li>
                                        </ul>
                                    </div>
                                    <div class="col-md-4 col-sm-6">
                                        <ul>
                                            <li><i class="fa fa-check-square"></i>Nor again is there anyone who loves</li>
                                            <li><i class="fa fa-check-square"></i>Nor again is there anyone who loves</li>
                                            <li><i class="fa fa-check-square-o"></i>Et harum quidem rerum facilis</li>
                                            <li><i class="fa fa-check-square-o"></i>At vero eos et accusamus et iusto odio</li>
                                        </ul>
                                    </div>
                                </div><!-- /.row -->
                            </div>
                        </div>
                    </div><!-- /.row -->
                    <div class="row">
                        <div class="col-md-6 col-sm-6">
                            <div class="skill-shortcode">
                        
                                <!-- Progress Bar -->
                                <div class="skill">
                                    <p>Web Design</p>          
                                    <div class="progress">         
                                        <div class="progress-bar" role="progressbar"  data-percentage="60">
                                            <span class="progress-bar-span" >60%</span>
                                            <span class="sr-only">60% Complete</span>
                                        </div>
                                    </div>  
                                </div>

                                <!-- Progress Bar -->
                                <div class="skill">
                                    <p>HTML & CSS</p>          
                                    <div class="progress">         
                                        <div class="progress-bar" role="progressbar"  data-percentage="95">
                                            <span class="progress-bar-span" >95%</span>
                                            <span class="sr-only">95% Complete</span>
                                        </div>
                                    </div>  
                                </div>

                                <!-- Progress Bar -->
                                <div class="skill">
                                    <p>Wordpress</p>          
                                    <div class="progress">         
                                        <div class="progress-bar" role="progressbar"  data-percentage="80">
                                            <span class="progress-bar-span" >80%</span>
                                            <span class="sr-only">80% Complete</span>
                                        </div>
                                    </div>  
                                </div>

                                <!-- Progress Bar -->
                                <div class="skill">
                                    <p>Joomla</p>          
                                    <div class="progress">         
                                        <div class="progress-bar" role="progressbar"  data-percentage="100">
                                            <span class="progress-bar-span" >100%</span>
                                            <span class="sr-only">100% Complete</span>
                                        </div>
                                    </div>  
                                </div>

                                <!-- Progress Bar -->
                                <div class="skill">
                                    <p>Extension</p>          
                                    <div class="progress">         
                                        <div class="progress-bar" role="progressbar"  data-percentage="70">
                                            <span class="progress-bar-span" >70%</span>
                                            <span class="sr-only">70% Complete</span>
                                        </div>
                                    </div>  
                                </div>

                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="custom-tab">
                        
                                <ul class="nav nav-tabs nav-justified" role="tablist">
                                    <li class="active"><a href="#tab-1" role="tab" data-toggle="tab">Our Mission</a></li>
                                    <li><a href="#tab-2" role="tab" data-toggle="tab">Our Vission</a></li>
                                    <li><a href="#tab-3" role="tab" data-toggle="tab">Company History</a></li>
                                </ul>

                                <div class="tab-content">

                                    <div class="tab-pane active" id="tab-1">
                                        <p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio.</p>
                                        <p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident.</p>
                                     </div>


                                    <div class="tab-pane" id="tab-2">
                                        <p>Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus.</p>
                                        <p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident.</p>
                                    </div>


                                    <div class="tab-pane" id="tab-3">
                                        <p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt.</p>
                                        <p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident.</p>
                                    </div>

                                </div><!-- /.tab-content -->

                            </div>
                        </div>
                    </div>
                </div>
                
            </div>
        </div>
        <!-- End About Us Section -->
        
        
        <!-- Start Service Section -->
        <div class="section-modal modal fade" id="service-modal" tabindex="-1" role="dialog" aria-hidden="true">
            <div class="modal-content">
                <div class="close-modal" data-dismiss="modal">
                    <div class="lr">
                        <div class="rl">
                        </div>
                    </div>
                </div>
                
                <div class="container">
                    <div class="row">
                        <div class="section-title text-center">
                            <h3>Our Services</h3>
                            <p>Duis aute irure dolor in reprehenderit in voluptate</p>
                        </div>
                    </div>
                    <div class="row">
                        
                        <div class="col-md-4 col-sm-6 col-xs-12">
                            <div class="feature-2">
                                <div class="media">
                                    <i class="fa fa-magic pull-left"></i>
                                    <div class="media-body">
                                        <h4 class="media-heading">Web Design</h4>
                                        <p>Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Lorem ipsum dolor. reprehenderit</p>
                                    </div>
                                </div>
                            </div>
                        </div><!-- /.col-md-4 -->
                        <div class="col-md-4 col-sm-6 col-xs-12">
                            <div class="feature-2">
                                <div class="media">
                                    <i class="fa fa-css3 pull-left"></i>
                                    <div class="media-body">
                                        <h4 class="media-heading">HTML5 & CSS3</h4>
                                        <p>Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Lorem ipsum dolor. reprehenderit</p>
                                    </div>
                                </div>
                            </div>
                        </div><!-- /.col-md-4 -->
                        <div class="col-md-4 col-sm-6 col-xs-12">
                            <div class="feature-2">
                                <div class="media">
                                    <i class="fa fa-wordpress pull-left"></i>
                                    <div class="media-body">
                                        <h4 class="media-heading">Wordpress Theme</h4>
                                        <p>Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Lorem ipsum dolor. reprehenderit</p>
                                    </div>
                                </div>
                            </div>
                        </div><!-- /.col-md-4 -->
                        <div class="col-md-4 col-sm-6 col-xs-12">
                            <div class="feature-2">
                                <div class="media">
                                    <i class="fa fa-plug pull-left"></i>
                                    <div class="media-body">
                                        <h4 class="media-heading">Wordpress Plugin</h4>
                                        <p>Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Lorem ipsum dolor. reprehenderit</p>
                                    </div>
                                </div>
                            </div>
                        </div><!-- /.col-md-4 -->
                        <div class="col-md-4 col-sm-6 col-xs-12">
                            <div class="feature-2">
                                <div class="media">
                                    <i class="fa fa-joomla pull-left"></i>
                                    <div class="media-body">
                                        <h4 class="media-heading">Joomla Template</h4>
                                        <p>Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Lorem ipsum dolor. reprehenderit</p>
                                    </div>
                                </div>
                            </div>
                        </div><!-- /.col-md-4 -->
                        <div class="col-md-4 col-sm-6 col-xs-12">
                            <div class="feature-2">
                                <div class="media">
                                    <i class="fa fa-cube pull-left"></i>
                                    <div class="media-body">
                                        <h4 class="media-heading">Joomla Extension</h4>
                                        <p>Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Lorem ipsum dolor. reprehenderit</p>
                                    </div>
                                </div>
                            </div>
                        </div><!-- /.col-md-4 -->
                        
                    </div><!-- /.row -->
                </div>
                
                <div class="pricing-section">
                    <div class="container">
                        <div class="row">
                            <div class="col-md-3 col-sm-6">
                                <div class="pricing-table">
                                    <div class="plan-name">
                                        <h3>Free</h3>
                                    </div>
                                    <div class="plan-price">
                                        <div class="price-value">$49<span>.00</span></div>
                                        <div class="interval">per month</div>
                                    </div>
                                    <div class="plan-list">
                                        <ul>
                                            <li>40 GB Storage</li>
                                            <li>40GB Transfer</li>
                                            <li>10 Domains</li>
                                            <li>20 Projects</li>
                                            <li>Free installation</li>
                                        </ul>
                                    </div>
                                    <div class="plan-signup">
                                        <a href="#" class="btn-system btn-small">Sign Up Now</a>
                                    </div>
                                </div>
                            </div>

                            <div class="col-md-3 col-sm-6">
                                <div class="pricing-table">
                                    <div class="plan-name">
                                        <h3>Standard</h3>
                                    </div>
                                    <div class="plan-price">
                                        <div class="price-value">$49<span>.00</span></div>
                                        <div class="interval">per month</div>
                                    </div>
                                    <div class="plan-list">
                                        <ul>
                                            <li>40 GB Storage</li>
                                            <li>40GB Transfer</li>
                                            <li>10 Domains</li>
                                            <li>20 Projects</li>
                                            <li>Free installation</li>
                                        </ul>
                                    </div>
                                    <div class="plan-signup">
                                        <a href="#" class="btn-system btn-small">Sign Up Now</a>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-3 col-sm-6">
                                <div class="pricing-table">
                                    <div class="plan-name">
                                        <h3>Premium</h3>
                                    </div>
                                    <div class="plan-price">
                                        <div class="price-value">$49<span>.00</span></div>
                                        <div class="interval">per month</div>
                                    </div>
                                    <div class="plan-list">
                                        <ul>
                                            <li>40 GB Storage</li>
                                            <li>40GB Transfer</li>
                                            <li>10 Domains</li>
                                            <li>20 Projects</li>
                                            <li>Free installation</li>
                                        </ul>
                                    </div>
                                    <div class="plan-signup">
                                        <a href="#" class="btn-system btn-small">Sign Up Now</a>
                                    </div>
                                </div>
                            </div>

                            <div class="col-md-3 col-sm-6">
                                <div class="pricing-table">
                                    <div class="plan-name">
                                        <h3>Professional</h3>
                                    </div>
                                    <div class="plan-price">
                                        <div class="price-value">$49<span>.00</span></div>
                                        <div class="interval">per month</div>
                                    </div>
                                    <div class="plan-list">
                                        <ul>
                                            <li>40 GB Storage</li>
                                            <li>40GB Transfer</li>
                                            <li>10 Domains</li>
                                            <li>20 Projects</li>
                                            <li>Free installation</li>
                                        </ul>
                                    </div>
                                    <div class="plan-signup">
                                        <a href="#" class="btn-system btn-small">Sign Up Now</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                
            </div>
        </div>
        <!-- End Service Section -->
        
        
        <!-- Start Team Member Section -->
        <div class="section-modal modal fade" id="team-modal" tabindex="-1" role="dialog" aria-hidden="true">
            <div class="modal-content">
                <div class="close-modal" data-dismiss="modal">
                    <div class="lr">
                        <div class="rl">
                        </div>
                    </div>
                </div>
                
                <div class="container">
                    <div class="row">
                        <div class="section-title text-center">
                            <h3>Our Expert Team</h3>
                            <p>Duis aute irure dolor in reprehenderit in voluptate</p>
                        </div>
                    </div>
                    <div class="row">
                        
                        <div class="col-md-3 col-sm-6">
                            <div class="team-member">
                                <img src="<%=request.getContextPath()%>/assets/images/team/manage-1.png" class="img-responsive" alt="">
                                <div class="team-details">
                                    <h4>John Doe</h4>
                                    <div class="designation">Senior Web Developer</div>
                                    <ul style="text-align: center;">
                                        <li><a href="#"><i class="fa fa-facebook"></i></a></li>
                                        <li><a href="#"><i class="fa fa-twitter"></i></a></li>
                                        <li><a href="#"><i class="fa fa-linkedin"></i></a></li>
                                        <li><a href="#"><i class="fa fa-dribbble"></i></a></li>
                                        <li><a href="#"><i class="fa fa-google-plus"></i></a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>

                        <div class="col-md-3 col-sm-6">
                            <div class="team-member">
                                <img src="<%=request.getContextPath()%>/assets/images/team/manage-2.png" class="img-responsive" alt="">
                                <div class="team-details">
                                    <h4>John Doe</h4>
                                    <div class="designation">Senior Web Developer</div>
                                    <ul style="text-align: center;">
                                        <li><a href="#"><i class="fa fa-facebook"></i></a></li>
                                        <li><a href="#"><i class="fa fa-twitter"></i></a></li>
                                        <li><a href="#"><i class="fa fa-linkedin"></i></a></li>
                                        <li><a href="#"><i class="fa fa-dribbble"></i></a></li>
                                        <li><a href="#"><i class="fa fa-google-plus"></i></a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>

                        <div class="col-md-3 col-sm-6">
                            <div class="team-member">
                                <img src="<%=request.getContextPath()%>/assets/images/team/manage-3.png" class="img-responsive" alt="">
                                <div class="team-details">
                                    <h4>John Doe</h4>
                                    <div class="designation">Senior Web Developer</div>
                                    <ul style="text-align: center;">
                                        <li><a href="#"><i class="fa fa-facebook"></i></a></li>
                                        <li><a href="#"><i class="fa fa-twitter"></i></a></li>
                                        <li><a href="#"><i class="fa fa-linkedin"></i></a></li>
                                        <li><a href="#"><i class="fa fa-dribbble"></i></a></li>
                                        <li><a href="#"><i class="fa fa-google-plus"></i></a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>

                        <div class="col-md-3 col-sm-6">
                            <div class="team-member">
                                <img src="<%=request.getContextPath()%>/assets/images/team/manage-4.png" class="img-responsive" alt="">
                                <div class="team-details">
                                    <h4>John Doe</h4>
                                    <div class="designation">Senior Web Developer</div>
                                    <ul style="text-align: center;">
                                        <li><a href="#"><i class="fa fa-facebook"></i></a></li>
                                        <li><a href="#"><i class="fa fa-twitter"></i></a></li>
                                        <li><a href="#"><i class="fa fa-linkedin"></i></a></li>
                                        <li><a href="#"><i class="fa fa-dribbble"></i></a></li>
                                        <li><a href="#"><i class="fa fa-google-plus"></i></a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>

                        <div class="col-md-3 col-sm-6">
                            <div class="team-member">
                                <img src="<%=request.getContextPath()%>/assets/images/team/team-1.jpg" class="img-responsive" alt="">
                                <div class="team-details">
                                    <h4>John Doe</h4>
                                    <div class="designation">Senior Web Developer</div>
                                    <ul style="text-align: center;">
                                        <li><a href="#"><i class="fa fa-facebook"></i></a></li>
                                        <li><a href="#"><i class="fa fa-twitter"></i></a></li>
                                        <li><a href="#"><i class="fa fa-linkedin"></i></a></li>
                                        <li><a href="#"><i class="fa fa-dribbble"></i></a></li>
                                        <li><a href="#"><i class="fa fa-google-plus"></i></a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>

                        <div class="col-md-3 col-sm-6">
                            <div class="team-member">
                                <img src="<%=request.getContextPath()%>/assets/images/team/team-2.jpg" class="img-responsive" alt="">
                                <div class="team-details">
                                    <h4>John Doe</h4>
                                    <div class="designation">Senior Web Developer</div>
                                    <ul style="text-align: center;">
                                        <li><a href="#"><i class="fa fa-facebook"></i></a></li>
                                        <li><a href="#"><i class="fa fa-twitter"></i></a></li>
                                        <li><a href="#"><i class="fa fa-linkedin"></i></a></li>
                                        <li><a href="#"><i class="fa fa-dribbble"></i></a></li>
                                        <li><a href="#"><i class="fa fa-google-plus"></i></a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        
                        <div class="col-md-3 col-sm-6">
                            <div class="team-member">
                                <img src="<%=request.getContextPath()%>/assets/images/team/team-3.jpg" class="img-responsive" alt="">
                                <div class="team-details">
                                    <h4>John Doe</h4>
                                    <div class="designation">Senior Web Developer</div>
                                    <ul style="text-align: center;">
                                        <li><a href="#"><i class="fa fa-facebook"></i></a></li>
                                        <li><a href="#"><i class="fa fa-twitter"></i></a></li>
                                        <li><a href="#"><i class="fa fa-linkedin"></i></a></li>
                                        <li><a href="#"><i class="fa fa-dribbble"></i></a></li>
                                        <li><a href="#"><i class="fa fa-google-plus"></i></a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        
                        <div class="col-md-3 col-sm-6">
                            <div class="team-member">
                                <img src="<%=request.getContextPath()%>/assets/images/team/team-4.jpg" class="img-responsive" alt="">
                                <div class="team-details">
                                    <h4>John Doe</h4>
                                    <div class="designation">Senior Web Developer</div>
                                    <ul style="text-align: center;">
                                        <li><a href="#"><i class="fa fa-facebook"></i></a></li>
                                        <li><a href="#"><i class="fa fa-twitter"></i></a></li>
                                        <li><a href="#"><i class="fa fa-linkedin"></i></a></li>
                                        <li><a href="#"><i class="fa fa-dribbble"></i></a></li>
                                        <li><a href="#"><i class="fa fa-google-plus"></i></a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        
                    </div><!-- /.row -->
                </div>
                
            </div>
        </div>
        <!-- End Team Member Section -->
        
        
        <!-- Start Latest News Section -->
        <div class="section-modal modal fade" id="news-modal" tabindex="-1" role="dialog" aria-hidden="true">
            <div class="modal-content">
                <div class="close-modal" data-dismiss="modal">
                    <div class="lr">
                        <div class="rl">
                        </div>
                    </div>
                </div>
                
                <div class="container">
                    <div class="row">
                        <div class="section-title text-center">
                            <h3>Exclusive News</h3>
                            <p>Duis aute irure dolor in reprehenderit in voluptate</p>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-6">
                            <div class="latest-post">
                                <img src="<%=request.getContextPath()%>/assets/images/blog-01.jpg" class="img-responsive" alt="">
                                <h4><a href="#">Standard Post with Image</a></h4>
                                <div class="post-details">
                                    <ul>
                                        <li><i class="fa fa-user"></i> Auther : iThemesLab</li>
                                        <li><i class="fa fa-calendar"></i> 07 Aug, 2014</li>
                                        <li><i class="fa fa-tag"></i> Music</li>
                                    </ul>
                                </div>
                                <p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur. Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur.</p>
                                
                            </div>
                        </div>
                        
                        <div class="col-md-6">
                            <div class="latest-post">
                                <img src="<%=request.getContextPath()%>/assets/images/blog-02.jpg" class="img-responsive" alt="">
                                <h4><a href="#">Standard Post with Image</a></h4>
                                <div class="post-details">
                                    <ul>
                                        <li><i class="fa fa-user"></i> Auther : iThemesLab</li>
                                        <li><i class="fa fa-calendar"></i> 07 Aug, 2014</li>
                                        <li><i class="fa fa-tag"></i> Music</li>
                                    </ul>
                                </div>
                                <p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur. Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur.</p>
                                
                            </div>
                        </div>
                        
                        <div class="col-md-6">
                            <div class="latest-post">
                                <img src="<%=request.getContextPath()%>/assets/images/blog-03.jpg" class="img-responsive" alt="">
                                <h4><a href="#">Standard Post with Image</a></h4>
                                <div class="post-details">
                                    <ul>
                                        <li><i class="fa fa-user"></i> Auther : iThemesLab</li>
                                        <li><i class="fa fa-calendar"></i> 07 Aug, 2014</li>
                                        <li><i class="fa fa-tag"></i> Music</li>
                                    </ul>
                                </div>
                                <p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur. Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur.</p>
                                
                            </div>
                        </div>
                        
                        <div class="col-md-6">
                            <div class="latest-post">
                                <img src="<%=request.getContextPath()%>/assets/images/blog-04.jpg" class="img-responsive" alt="">
                                <h4><a href="#">Standard Post with Image</a></h4>
                                <div class="post-details">
                                    <ul>
                                        <li><i class="fa fa-user"></i> Auther : iThemesLab</li>
                                        <li><i class="fa fa-calendar"></i> 07 Aug, 2014</li>
                                        <li><i class="fa fa-tag"></i> Music</li>
                                    </ul>
                                </div>
                                <p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur. Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur.</p>
                                
                            </div>
                        </div>
                        
                    </div>
                </div>
                
            </div>
        </div>
        <!-- End Latest News Section -->
        
        
        
        <!-- Start Contact Section -->
        <div class="section-modal modal fade contact" id="contact-modal" tabindex="-1" role="dialog" aria-hidden="true">
            <div class="modal-content">
                <div class="close-modal" data-dismiss="modal">
                    <div class="lr">
                        <div class="rl">
                        </div>
                    </div>
                </div>
                
                <div class="container">
                    <div class="row">
                        <div class="section-title text-center">
                            <h3>Contact With Us</h3>
                            <p>Duis aute irure dolor in reprehenderit in voluptate</p>
                        </div>
                    </div>
                    <div class="row">
                        
                        <div class="col-md-4">
                            <div class="footer-contact-info">
                                <h4>Contact info</h4>
                                <ul>
                                    <li><strong>E-mail :</strong> your-email@mail.com</li>
                                    <li><strong>Phone :</strong> +8801-6778776</li>
                                    <li><strong>Mobile :</strong> +8801-45565378</li>
                                    <li><strong>Web :</strong> yourdomain.com</li>
                                </ul>
                            </div>
                        </div>
                        
                        <div class="col-md-4">
                            <div class="footer-social text-center">
                                <ul>
                                    <li><a href="#"><i class="fa fa-twitter"></i></a></li>
                                    <li><a href="#"><i class="fa fa-facebook"></i></a></li>
                                    <li><a href="#"><i class="fa fa-linkedin"></i></a></li>
                                    <li><a href="#"><i class="fa fa-google-plus"></i></a></li>
                                    <li><a href="#"><i class="fa fa-dribbble"></i></a></li>
                                </ul>
                            </div>
                        </div>
                        
                        <div class="col-md-4">
                            <div class="footer-contact-info">
                                <h4>Working Hours</h4>
                                <ul>
                                    <li><strong>Mon-Wed :</strong> 9 am to 5 pm</li>
                                    <li><strong>Thurs-Fri :</strong> 12 pm to 10 pm</li>
                                    <li><strong>Sat :</strong> 9 am to 3 pm</li>
                                    <li><strong>Sunday :</strong> Closed</li>
                                </ul>
                            </div>
                        </div>
                        
                    </div><!--/.row -->
                    <div class="row" style="padding-top: 80px;">
                        <div class="col-md-12">
                            <form name="sentMessage" id="contactForm" novalidate>
                                <div class="row">
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <input type="text" class="form-control" placeholder="Your Name *" id="name" required data-validation-required-message="Please enter your name.">
                                            <p class="help-block text-danger"></p>
                                        </div>
                                        <div class="form-group">
                                            <input type="email" class="form-control" placeholder="Your Email *" id="email" required data-validation-required-message="Please enter your email address.">
                                            <p class="help-block text-danger"></p>
                                        </div>
                                        <div class="form-group">
                                            <input type="tel" class="form-control" placeholder="Your Phone *" id="phone" maxlength="10" required data-validation-required-message="Please enter your phone number.">
                                            <p class="help-block text-danger"></p>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <textarea class="form-control" placeholder="Your Message *" id="message" required data-validation-required-message="Please enter a message."></textarea>
                                            <p class="help-block text-danger"></p>
                                        </div>
                                    </div>
                                    <div class="clearfix"></div>
                                    <div class="col-lg-12 text-center">
                                        <div id="success"></div>
                                        <button type="submit" class="btn btn-primary">Send Message</button>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
                
            </div>
        </div>
        <!-- End Contact Section -->
        
        
         <!-- Start Testimonial Section -->
        <div class="section-modal modal fade contact" id="testimonial-modal" tabindex="-1" role="dialog" aria-hidden="true">
            <div class="modal-content">
                <div class="close-modal" data-dismiss="modal">
                    <div class="lr">
                        <div class="rl">
                        </div>
                    </div>
                </div>
                
                <div class="container">
                    <div class="row">
                        <div class="section-title text-center">
                            <h3>Client's Speech About Us</h3>
                            <p>Duis aute irure dolor in reprehenderit in voluptate</p>
                        </div>
                    </div>
                    <div class="row">
                        
                        <div class="col-md-6">
                            <div class="testimonial">
                                <img src="<%=request.getContextPath()%>/assets/images/team/manage-1.png" class="img-responsive" alt="...">
                                <h4>John Doe</h4>
                                <div class="speech">
                                    <p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt.</p>
                                </div>
                            </div>
                        </div>
                        
                        <div class="col-md-6">
                            <div class="testimonial">
                                <img src="<%=request.getContextPath()%>/assets/images/team/manage-2.png" class="img-responsive" alt="...">
                                <h4>John Doe</h4>
                                <div class="speech">
                                    <p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt.</p>
                                </div>
                            </div>
                        </div>
                        
                        <div class="col-md-6">
                            <div class="testimonial">
                                <img src="<%=request.getContextPath()%>/assets/images/team/manage-3.png" class="img-responsive" alt="...">
                                <h4>John Doe</h4>
                                <div class="speech">
                                    <p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt.</p>
                                </div>
                            </div>
                        </div>
                        
                        <div class="col-md-6">
                            <div class="testimonial">
                                <img src="<%=request.getContextPath()%>/assets/images/team/manage-4.png" class="img-responsive" alt="...">
                                <h4>John Doe</h4>
                                <div class="speech">
                                    <p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt.</p>
                                </div>
                            </div>
                        </div>
                        
                    </div><!--/.row -->
                    
                </div>
                
            </div>
        </div>
        <!-- End Testimonial Section -->
        
    </body>
    
</html>
