//以下为修改jQuery Validation插件兼容Bootstrap的方法，没有直接写在插件中是为了便于插件升级
        $.validator.setDefaults({
            highlight: function (element) {
                $(element).closest('.form-group').removeClass('has-success').addClass('has-error');
            },
            success: function (element) {
                element.closest('.form-group').removeClass('has-error').addClass('has-success');
            },
            errorElement: "span",
            errorPlacement: function (error, element) {
                if (element.is(":radio") || element.is(":checkbox")) {
                    error.appendTo(element.parent().parent().parent());
                } else {
                    error.appendTo(element.parent());
                }
            },
            errorClass: "help-block m-b-none",
            validClass: "help-block m-b-none"


        });

        //以下为官方示例
        $().ready(function () {
            // validate the comment form when it is submitted
            $("#commentForm").validate();
            // validate signup form on keyup and submit
            var icon = "<i class='fa fa-times-circle'></i> ";
            $("#topicForm").validate({
                rules: {
                    topicname: {
                        required: true,
                        minlength: 2
                    },
                    topicintro: {
                        required: true,
                        minlength: 5
                    },
                    topicimage: {
                        required: true,
                    },
//                    topic: {
//                        required: "#newsletter:checked",
//                        minlength: 2
//                    },
//                    agree: "required"
                },
                messages: {
                	topicname: {
                        required: icon + "请输入专题名称",
                        minlength: icon + "专题名称必须两个字符以上"
                    },
                    topicintro: {
                        required: icon + "请输入专题介绍",
                        minlength: icon + "专题介绍必须5个字符以上"
                    },
                    topicimage: {
                        required: icon + "请上传专题封面",
                    },
                  
                },
                
                submitHandler: function (form) {

                	var topicname=	document.getElementById("topicname").value ;
            		var topicintro=	document.getElementById("topicintro").value ;
            		var topicimage=	document.getElementById("topicimage").value ;
                    alert("6545465415146");
            		$.ajax({
            			type : "POST",
            			url : "/module/share/TopicAdd.do",
            			data: {topicname: topicname, topicintro: topicintro , topicimage:topicimage},
            			async : false,
            			dataType : "text",
            			success : function(data) {
            			 if(data=="ok"){
            					alert("恭喜!!! 创建专题成功！");
            					 window.location.href='/module/share/MyTopic.do';
            				}else {
            					alert("创建专题失败，请稍后在试！");
            				}
            				
            				 
            			}
            		});	
                },
                invalidHandler: function(form, validator) {  //不通过回调
                    return false;
                       }
            });
        });
        
        function submitForm(){
            $("#topicForm").submit();
     }
