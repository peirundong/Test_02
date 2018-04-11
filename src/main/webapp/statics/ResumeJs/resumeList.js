function deleteResume(obj) {
    if (confirm("你确定要删除该条简历吗")) {
        $.ajax({
            type: "GET",
            url: "/sys/Resume/MyResumeDe.json?resumeid=" + obj,
            // data:{resumeid:obj.attr(obj)},
            dataType: "json",
            success: function (data) {
                if (data.delResult > 0) {//删除成功：移除删除行
                    alert("删除成功");
                    location.href="/sys/Resume/MyResume.html";
                } else {//删除失败
                    alert("对不起，删除简历失败");
                }
            },
            error: function (data) {
                alert("对不起，删除失败");
                // changeDLGContent("对不起，删除失败");
            }
        });
    }
}

