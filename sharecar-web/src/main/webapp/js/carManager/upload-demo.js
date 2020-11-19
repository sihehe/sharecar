//上传图片
var wuploader;
$(document).ready(function() {
    // 初始化上传插件
    initWebUploaderUI();

});

//初始化上传插件
function initWebUploaderUI(){
    // WebUploader实例
    wuploader = CommonWebUploader.initWebUploader('#uploader', '#filePicker', '#filePicker2', 'uploadModuleOrFunctionFile');
    // 所有文件上传结束时
    wuploader.on( 'uploadFinished', function() {
        var stats = wuploader.getStats();
        // 全部上传成功
        if (!stats.uploadFailNum) {

            alert("保存成功！");
        }
    });

}

function editModule(moduleID){
    $.ajax({
        cache: true,
        type: "POST",
        url:"module/getModuleFunctionByID",
        data:{
            moduleID:moduleID
        },
        error: function(request) {
            alert("连接失败！");
        },
        success: function(data){


            // 现有图片
            $('#moduleGallery').editableGallery({                 //此处可根据自己的需要进行修改参数，我这里第一个参数：一条数据的ID，第二个参数：这条数据的类型（不需要，可不要），第三个参数：这条数据对应的多张图片的路径集合
                urls: handleFileUrl(moduleID, 2, data.moduleFilePathList),    //2表示模块:文件类型
                canDelete: true        //这个参数定义，鼠标移动到图片上时，显示删除按钮 （查看时，不需要编辑图片，可不要这个属性）
            });

        }
    });

}

function handleFileUrl(ownerID,fileType, paths) {
    var result = [];
    if (paths) {
        $.each(paths, function(index, value) {
            result.push("seeModuleOrFunctionFile/" + ownerID + "/" +fileType+ "/" + value);    //seeModuleOrFunctionFile为后台请求图片的方法
        });
    }
    return result;
}