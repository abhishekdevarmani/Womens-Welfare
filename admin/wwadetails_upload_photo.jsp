<title>Uploading...</title>
<%@page import="java.io.*"%>

<%@page import="java.sql.*"%>
<%@page import="wwa.dbconnect"%>
<jsp:useBean id="s" class="wwa.dbconnect"/>
<jsp:getProperty name="s" property="conn"/>

<%
String s1;
s1=request.getParameter("photo");

String saveFile="";
    String contentType = request.getContentType();
    if((contentType != null)&&(contentType.indexOf("multipart/form-data") >= 0)){
    DataInputStream in = new DataInputStream(request.getInputStream());
    int formDataLength = request.getContentLength();
    byte dataBytes[] = new byte[formDataLength];
    int byteRead = 0;
    int totalBytesRead = 0;
    while(totalBytesRead < formDataLength){
    byteRead = in.read(dataBytes, totalBytesRead,formDataLength);
    totalBytesRead += byteRead;
   }
    String file = new String(dataBytes);
    saveFile = file.substring(file.indexOf("filename=\"") + 10);
    saveFile = saveFile.substring(0, saveFile.indexOf("\n"));
    saveFile = saveFile.substring(saveFile.lastIndexOf("\\") + 1,saveFile.indexOf("\""));
    int lastIndex = contentType.lastIndexOf("=");
    String boundary = contentType.substring(lastIndex + 1,contentType.length());
    int pos;
    pos = file.indexOf("filename=\"");
    pos = file.indexOf("\n", pos) + 1;
    pos = file.indexOf("\n", pos) + 1;
    pos = file.indexOf("\n", pos) + 1;
    int boundaryLocation = file.indexOf(boundary, pos) - 4;
    int startPos = ((file.substring(0, pos)).getBytes()).length;
    int endPos = ((file.substring(0, boundaryLocation)).getBytes()).length;
    File ff = new File(getServletContext().getRealPath("/")+"womens_wwf/uploads/"+saveFile);
    FileOutputStream fileOut = new FileOutputStream(ff);
    fileOut.write(dataBytes, startPos, (endPos - startPos));
    fileOut.flush();
	
	String id=session.getAttribute("phtid").toString();
	
	int k=s.stm.executeUpdate("update wwa_details set w_associationlogo='"+saveFile+"' where w_id='"+id+"'");
   
    fileOut.close();

  }

%>

<script>
alert("Photo Uploaded Successfully.");
document.location="wwadetails_view.jsp";
</script>