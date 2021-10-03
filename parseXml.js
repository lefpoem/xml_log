function loadDoc(){
    var xhttp;
    if(window.XMLHttpRequest){
        //code for IE7+,Firefox,Chorme,Opera,Safari
        xhttp = new XMLHttpRequest();
    }
    else{
        //code for IE6,IE5
        xhttp = new ActiveXObject("Microsoft.XMLHTTP");
    }
    xhttp.open("GET","breakfast.xml",false);
    xhttp.send();
    XMLDoc = xhttp.responseXML;//load()用于加载文件,loadXML()方法用于加载字符串(文本)
}
