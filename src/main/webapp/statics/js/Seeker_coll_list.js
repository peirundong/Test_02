/**
 * Created by Tonight on 2017/12/7.
 */

$("#deleteC").on("click",function(){
    var obj = $(this);
    if(confirm("你确定要取消公司【"+obj.attr("companyname")+"】吗？")){
        $.ajax({
            type:"POST",
            url:"/sys/delcoll",
            data:{id:obj.attr("companyid")},
            dataType:"json",
            success:function(data){
                if(data.delResult == "true"){//取消成功
                    /*location.reload();*/
                    location.href = "/sys/connpage.html"
                }else if(data.delResult == "false"){//取消失败

                }
            },
            error:function(data){
                alert("对不起，取消失败了");
            }
        });
    }
});



