/**
 * Created by Tonight on 2017/12/5.
 */

/*$(function(){
    $("#queryA").change(function() {
        var categoryLevel1 = $("#categoryLevel1").val();
        if (categoryLevel1 != '' && categoryLevel1 != null) {
            $.ajax({
                type: "GET",//请求类型
                url: "/appinfoaddpage/categorylevellist.json",//请求的url
                data: {pid: categoryLevel1},//请求参数
                dataType: "json",//ajax接口（请求url）返回的数据类型
                success: function (data) {//data：返回数据（json对象）
                    $("#categoryLevel2").html("");
                    var options = "<option value=\"\">--请选择--</option>";
                    for (var i = 0; i < data.length; i++) {
                        options += "<option value=\"" + data[i].id + "\">" + data[i].categoryName + "</option>";
                    }
                    $("#categoryLevel2").html(options);
                },
                error: function (data) {//当访问时候，404，500 等非200的错误状态码
                    alert("分类失败！");
                }
            })
        }

    })


}*/



