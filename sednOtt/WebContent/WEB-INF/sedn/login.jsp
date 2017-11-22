 <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<section id="login">
            <header>
                <h1>SEDN3.0 ADMIN</h1>
                <p>SEDN 관리자 아이디와 비밀번호를 입력하고 로그인 하면 사용자 사이트를 관리 할 수 있습니다.</p>
            </header>
        
            <div class="clearfix"></div>
            
            <!-- Login -->
            <div class="box tile animated active">
	            <form class="form-validation-1" id="submitAccount"  method="post" action="${pageContext.request.contextPath }/loginProcess.do">
	                <h2 class="m-t-0 m-b-15">Login</h2>
	                <input type="text" name="admin_id" id="adminId" class="input-sm validate[required] form-control login-control m-b-10"  placeholder="관리자 계정" >
	                <input type="password" name="admin_pass" id="adminPass" class="input-sm validate[required] form-control login-control" placeholder="비밀번호">
	               <div class=" m-b-10">
	                     <!-- <label>
	                        <input type="checkbox">
	                        아이디 저장
	                    </label>-->
	                </div>
	                <button data-toggle="modal" class="btn btn-sm m-r-5" >Login</button>
	                
	                
	                <small>
	                    <a class="box-switcher" data-switch="box-register" href="">계정을 원하시나요?</a> |
	                    <a class="box-switcher" data-switch="box-reset" href="">비밀번호를 잊으셨나요??</a>
	                </small>
	            </form>
            </div>
            <!--######## defulet Modal ######-->
             		<div class="modal fade" id="modalNarrower" tabindex="-1" role="dialog" aria-hidden="true">
                        <div class="modal-dialog modal-sm">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                                    <h4 class="modal-title">NOTICE</h4>
                                </div>
                                <div class="modal-body" id="loinAlert"> </div>
                                <div class="modal-footer" >
                                    <!-- <button type="button" class="btn btn-sm">Save changes</button> -->
                                    <button type="button" class="btn btn-sm" data-dismiss="modal"  style="margin-left:40%">Close</button>
                                </div>
                            </div>
                        </div>
                    </div>
              <!--######## defulet Modal ######-->
            <!-- Register -->
            <form class="box animated tile" id="box-register">
                <h2 class="m-t-0 m-b-15">Register</h2>
                <input type="text" class="login-control m-b-10" placeholder="아이디">
                <input type="text" class="login-control m-b-10" placeholder="이름">
                <input type="email" class="login-control m-b-10" placeholder="이메일 주소">    
                <input type="password" class="login-control m-b-10" placeholder="비밀번호">
                <input type="password" class="login-control m-b-20" placeholder="비밀번호 확인">

                <button class="btn btn-sm m-r-5">계정신청</button>

                <small><a class="box-switcher" data-switch="box-login" href="">로그인 페이지 돌아가기 </a></small>
            </form>
            
            <!-- Forgot Password -->
            <form class="box animated tile" id="box-reset">
                <h2 class="m-t-0 m-b-15">Reset Password</h2>
                <p>게정등록시 사용한 이메일을 입력하시면 해당 이메일로 비밀번호를 받아 볼 수 있습니다.</p>
                <input type="email" class="login-control m-b-20" placeholder="이메일 주소">    

                <button class="btn btn-sm m-r-5">Confirm</button>

                <small><a class="box-switcher" data-switch="box-login" href="">로그인 페이지 돌아가기</a></small>
            </form>
        </section>                      
        
        <!-- Javascript Libraries -->
        <!-- jQuery -->
        <script src="${pageContext.request.contextPath}/sednJs/jquery.min.js"></script> <!-- jQuery Library -->
        
        <!-- Bootstrap -->
        <script src="${pageContext.request.contextPath}/sednJs/bootstrap.min.js"></script>
        
        <!--  Form Related -->
        <script src="${pageContext.request.contextPath}/sednJs/validation/validate.min.js"></script> <!-- jQuery Form Validation Library -->
        <script src="${pageContext.request.contextPath}/sednJs/validation/validationEngine.min.js"></script> <!-- jQuery Form Validation Library - requirred with above js -->
        <script src="${pageContext.request.contextPath}/sednJs/icheck.js"></script> <!-- Custom Checkbox + Radio -->
        
        <!-- All JS functions -->
        <script src="${pageContext.request.contextPath}/sednJs/functions.js"></script>
        
        <script>
		$(function(){
			var frm=$("#submitAccount");
			frm.submit(function(ev){
				var vadminId=$("#adminId").val();
				var vadminPass=$("#adminPass").val();
				if(vadminId!=""&&vadminPass!=""){
					$.ajax({
						type: frm.attr("method"),
			            url: frm.attr("action"),
			            data: frm.serialize(),
						success:function(data){
							if(data=="loginSuccess"){
								location.href="${pageContext.request.contextPath }/sedn.do";
							}else if(data=="wrongId"){
								$("#loinAlert").html("일치하는 아이디가 없습니다.");
								$("#modalNarrower").modal();
							}else if(data=="wrongPass"){
								$("#loinAlert").html("비밀번호가 일치하지 않습니다.");
								$("#modalNarrower").modal();
							}else{
								alert(data);
							}
						}
					
					});
					ev.preventDefault();
				}
				return false;
			});
		});
		</script>
        
        
        

        

        
        
