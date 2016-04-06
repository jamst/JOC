<%--
  User: smartclover
--%>
<%@ page contentType="text/html;charset=GBK" language="java" %>
<!DOCTYPE html>
<html>
  <head>
    <title>JavaOnlineComplier</title>
<!--     <form action="complier.action" method="post">
      <textarea name="code">

      </textarea>
      <input type="submit" value="submit">
    </form> -->
    <!-- ���·���;���·�� -->
	<link rel="stylesheet" href="codemirror/lib/codemirror.css">
	<script src="codemirror/lib/codemirror.js"></script>
	<script src="codemirror/mode/clike.js"></script>
	
   <link rel="stylesheet" href="css/bootstrap.min.css">
   <script type="text/javascript"  src="js/jquery-2.2.2.min.js"></script>
   <script type="text/javascript" src="js/bootstrap.min.js"></script>
   <script type="text/javascript">
		function codeData(){
		    //var code = document.getElementById('code').value;
		    document.getElementById("result").value = "compliering......";
		    var code = editor.getValue();
		    var aj = $.ajax( {  
		    	     url:'complier.action',// ��ת�� action  
		    	     data:{code:code},
		    	     type:'post',
		    	     async:true,
		    	     success:function(data) { 
		    	    	 //alert(data);
		    	    	 document.getElementById("result").value = data; 
		    	      },  
		    	      error : function() { 
		    	           alert("�쳣��"); 
		    	      }  
		    	 });
			
		}
    </script>

  </head>
  
  <body>
   <div class="form-group">
        <div class="form-group panel panel-primary code-box col-lg-6 col-md-6 col-sm-6" style="width: 600px;height: 450px;">
            <div class="panel-heading">
                <h3 class="panel-title">����</h3>
            </div>
            <div class="panel-body" >
                <textarea id="code" name="code" class="form-control " rows="18" >
public class HelloWorld{
	public static void main(String[] args){
		System.out.print("HelloWorld");
	}
}                
                </textarea>
            </div>
            <input type="button" value="�ύ����" onclick="javascript:codeData();" class="btn btn-primary" />
        </div>  
        <div class="form-group panel panel-primary result-box col-lg-6 col-md-6 col-sm-6" style="width: 600px;height: 450px;">
            <div class="panel-heading">
                <h3 class="panel-title">���н��</h3>
            </div>
            <div class="panel-body">
                <textarea id="result" class="form-control" rows="18"></textarea>
            </div>
        </div>
    </div>
  </body>
      <!-- Create a simple CodeMirror instance -->
    <script type="text/javascript">
	  var myTextArea = document.getElementById('code');
	  var editor = CodeMirror.fromTextArea(myTextArea, {
	        lineNumbers: true,
	        mode: "text/x-java",
	        smartIndent:true, // �Ƿ���������
	        indentUnit : 2,// ������λ��Ĭ��2
	        tabSize : 4,//Tab������Ĭ��4
	  });
	</script>   
</html>
   