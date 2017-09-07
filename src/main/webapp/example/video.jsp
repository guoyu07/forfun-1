<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>

<html>
<head>
<title>视频背景页</title>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<link rel="shortcut icon" type="image/ico" href="/images/favicon.ico" />
<title>Login</title>
<link href="<s:url value="/css/styles.css"/>" type="text/css"
  media="screen" rel="stylesheet" />
<link href="<s:url value="/css/redmond/jquery-ui-1.9.2.custom.css"/>"
  type="text/css" rel="stylesheet" />
<script src="<s:url value="/js/jquery-1.8.3.min.js"/>"></script>
<script src="<s:url value="/js/jquery-ui-1.9.2.custom.min.js"/>"></script>

<script type="text/javascript" src="<s:url value="/js/jquery.easyui.min.js"/>"></script>
<script src="<s:url value="/js/global.js"/>"></script>
</head>
<style>
  #darkbanner{padding: 5px 10px 6px 40px;}
  .video-player{
  	background-color: transparent;
	min-width: 100%;
	min-height: 100%;
	display: block;
	position: absolute;
	left:0;
	z-index: 0;
	top: 0;
  }
</style>
<body id="login" onload="document.f.j_username.focus();">
	
<video preload="auto" class="video-player" autoplay="autoplay" loop="loop" style="width:auto;height: auto">
    <source src="<%= this.getServletContext().getContextPath() %>/images/sea.mp4" type="video/mp4">
</video>
	
  <div id="wrappertop"></div>
  <div id="wrapper">
    <div id="content">
      <div id="header">
        <h1>
          <a href=""> <!--؅׃Logo <img src="logo.png"   height="50"  width="100"  alt="logo">--></a>
        </h1>
        <c:if test="${not empty param.login_error}">
          <br />
          <font color="red"><s:text name='error.login.info' /><br />
            <s:text name='error.login.reason' />: <c:out
              value="${SPRING_SECURITY_LAST_EXCEPTION.message}" />. </font>
        </c:if>
      </div>
      <div id="darkbanner" class="banner320">
      <img src="<%= this.getServletContext().getContextPath() %>/images/crm.png" alt="Grass Logo" height="35px" width="101px"/>
      <!-- <h2>
          <s:text name='login.system.label' />
        </h2>-->
      </div>
      <div id="darkbannerwrap"></div>
      <form name="f" action="<c:url value='/j_spring_security_check'/>"
        method="POST">
        <fieldset class="form">
          <p>
            <label class="loginlabel" for="j_username"><s:text
                name='login.username.label' />:</label> <input
              class="logininput ui-keyboard-input ui-widget-content ui-corner-all"
              id="j_username" name="j_username"
              onkeypress="keypressTab();" type="text"
              value='<c:if test="${not empty param.login_error}"><c:out value="${SPRING_SECURITY_LAST_USERNAME}"/></c:if>' />
          </p>
          <p>
            <label class="loginlabel" for="j_password"> <s:text
                name='login.password.label' />:
            </label> <span> <input
              class="logininput ui-keyboard-input ui-widget-content ui-corner-all"
              name="j_password" id="j_password" type="password"
              onkeypress="keypress();" />
            </span>
          </p>
          <p style="display:none">
            <label class="loginlabel" for="j_language"> <s:text
                name='login.language.label' />:
            </label> <span> <select
              class="loginselect ui-widget-content ui-corner-all"
              id="j_language" name="j_language"
              onchange="switchLanguage(this.value)">
               <!-- <option selected="true" value="en_US">English
                  (US)</option>-->
                <option value="zh_CN">简体中文</option>
            </select>
            </span>
          </p>
          <table id="yanzheng" style="margin-left:70px;">
          <tr>
          <td>
          <div>
          	<input type="text" class="logininput" name="check_code"
				id="yzm" maxlength="5" style="width: 88px;" placeholder="验证码"
			 onblur=""/>
          
          </div>
          </td>
          <td>
          <div>
	          <a href="javascript:;" onclick="document.getElementById('img').src='${pageContext.request.contextPath}/CheckCoder?'+Math.random();">
	          	<img href="javascript:;" id="img" alt="验证码" src="${pageContext.request.contextPath}/CheckCoder" style="margin-top: 2px; height: 45px; width: 108px;  vertical-align: middle;">
	          </a>
          </div>
          </td>
          <td>
          <div style="color: #0033FF; font-size: 12px; width: 40px; overflow: hidden">
	          <a href="javascript:;" onclick="document.getElementById('img').src='${pageContext.request.contextPath}/CheckCoder?'+Math.random();">
	        	  看不清换一张
	          </a>
          </div>
          </td>
          <!-- <td>
          <div class="loginerrm">
          	<h4 class="wrongico16" style="color: #cf0000; margin-left: 0px"
							id="codeerror"></h4>
          </div>
          </td> -->
          </tr>
          </table>
          <button id="loginbtn" type="button" class="positive"
            name="Submit" type="button" onclick="f.submit()">
            <img src="<s:url value="/images/key.png"/>"
              alt="Announcement" />
            <s:text name='login.button.label' />
          </button>
        </fieldset>
      </form>
      <%-- <div style="cursor: hand; text-align: right;">
        <a href="<s:url value="/jsp/forgetPassword.jsp"/>"><s:text
            name='login.forgetPassword.label' /></a>&nbsp;
      </div> --%>
    </div>
  </div>
  <div id="wrapperbottom_branding">
    <div id="wrapperbottom_branding_text"></div>
  </div>
  <script type="text/javascript">
  
  
		$(document).ready(function() {
			$(".logininput").blur(function() {
				if ($(this).val() == "") {
					$(this).css("border-color", "red");
				} else
					$(this).css("border-color", "#D9D6C4");
			})
			document.f.j_username.focus();
			var URLParams = new Array();
			var aParams = document.location.search.substr(1).split('&');
			for (i=0; i < aParams.length ; i++){
			   var aParam = aParams[i].split('=');
			   URLParams[aParam[0]] = aParam[1];
			}
			locale=URLParams["request_locale"];
			if (locale != null && locale == "zh_CN"){
				$("#j_language").val("zh_CN");
			} else {
				$("#j_language").val("en_US");
			}
		});

		function keypressTab(){
			var ev=window.event.keyCode;
			if(ev == 13){
				document.f.j_password.focus();
			}
		}

		 function keypress(){
			var ev=window.event.keyCode;
			if(ev == 13){
				
				f.submit();
			}
		} 
		
		function switchLanguage(language){
			f.action= getWebPath() + "/jsp/login.jsp?request_locale="+language;
			f.submit();
		}
		
		
		
		
		
		
		/* function checkCodeAsyn() {//验证异步验证
			var inputcode = $("#yzm").val();
			if (5 != inputcode.length) {
				return;
			}
			var urlStr = "crm/checkCodeAsyn.action?inputcode="
					+ inputcode;
			var headers = {};
	    	headers['__RequestVerificationToken'] = $("#CSRFToken").val();
	    	headers['__RequestType'] = "ajax";
			$.ajax({
				type : "POST",
				url : urlStr,
				heasers : headers,
				dataType : "json",
				contentType : 'application/json',
				success : function(data) {
					var flag = true;
					alert(data.errorMsg);
					if ("" != data.errorMsg) {
						
						$(".wrongico16").each(function(i){
							
							var wrongMsg = $(".wrongico16").eq(i+1).text()
							
							wrongMsg = $.trim(wrongMsg);
							if(wrongMsg==data.errorMsg){
								flag = false;
							}
						});
						if(flag){
							$("#codeerror").text(data.errorMsg);
							$(".loginerrm").css("display", "inline");
						}
					} else {
						$("#codeerror").css("display", "none");
						
						
					}
					
				},
				error : function() {
					$(".loginerrm").css("display", "none");
					
				}
			});
		} */
	</script>
</body>
</html>
