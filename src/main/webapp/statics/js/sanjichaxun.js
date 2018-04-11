$("#cat1").change(function(){
    var id = $("#cat1").val();
    console.log(id);
    $.ajax({
        type:"GET",//请求类型
        url:"/sys/getlist",//请求的url
        data:{id:id},//请求参数
        dataType:"json",//ajax接口（请求url）返回的数据类型
        success:function(data){//data：返回数据（json对象）
            $("#cat2").html("");
            var options = "<option value=\"\">--请选择--</option>";
            for(var i = 0; i < data.length; i++){
                options += "<option value=\""+data[i].id+"\">"+data[i].name+"</option>";
            }
            $("#cat2").html(options);
        },
        error:function(data){//当访问时候，404，500 等非200的错误状态码
            alert("加载二级分类失败！");
        }
    });
});
$("#cat2").change(function () {
    var id = $("#cat2").val();
    console.log(id);
    $.ajax({
        type:"GET",//请求类型
        url:"/sys/getlist",//请求的url
        data:{id:id},//请求参数
        dataType:"json",//ajax接口（请求url）返回的数据类型
        success:function(data){//data：返回数据（json对象）
            $("#cat3").html("");
            var options = "<option value=\"\">--请选择--</option>";
            for(var i = 0; i < data.length; i++){
                options += "<option value=\""+data[i].id+"\">"+data[i].name+"</option>";
            }
            $("#cat3").html(options);
        },
        error:function(data){//当访问时候，404，500 等非200的错误状态码
            alert("加载二级分类失败！");
        }
    });
});

$("#cat4").change(function(){
    var parentno = $("#cat4").val();
    console.log(parentno);
    $.ajax({
        type:"GET",//请求类型
        url:"/sys/categorylevellist.json",//请求的url
        data:{parentno:parentno},//请求参数
        dataType:"json",//ajax接口（请求url）返回的数据类型
        success:function(data){//data：返回数据（json对象）
            $("#cat5").html("");
            var options = "<option value=\"\">--请选择--</option>";
            for(var i = 0; i < data.length; i++){
                options += "<option value=\""+data[i].id+"\">"+data[i].industryname+"</option>";
            }
            $("#cat5").html(options);
        },
        error:function(data){//当访问时候，404，500 等非200的错误状态码
            alert("加载二级分类失败！");
        }
    });
});
