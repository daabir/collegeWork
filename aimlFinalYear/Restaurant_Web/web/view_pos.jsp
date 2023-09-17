<%@page import="java.io.FileReader"%>
<%@page import="java.io.BufferedReader"%>
<%@page import="java.io.File"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title><%=Logic.info.pname%>  </title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<link href="style.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="js/jquery-1.3.2.min.js"></script>
<script type="text/javascript" src="js/script.js"></script>
<script type="text/javascript" src="js/cufon-yui.js"></script>
<script type="text/javascript" src="js/arial.js"></script>
<script type="text/javascript" src="js/cuf_run.js"></script>
</head>
<style>
#customers {
  font-family: Arial, Helvetica, sans-serif;
  border-collapse: collapse;
  width: 100%;
}

#customers td, #customers th {
  border: 1px solid #ddd;
  padding: 8px;
}

#customers tr:nth-child(even){background-color: #f2f2f2;}

#customers tr:hover {background-color: #ddd;}

#customers th {
  padding-top: 12px;
  padding-bottom: 12px;
  text-align: left;
  background-color: #04AA6D;
  color: white;
}
</style>
<body>
<div class="main">
  <div class="main_resize">
    <div class="header">
      <div class="logo">
        <h1><a href="#"><%=Logic.info.pname%> </a></h1>
      </div>
      <div class="search">
    
        <!--/searchform -->
        <div class="clr"></div>
      </div>
      <div class="clr"></div>
      <div class="menu_nav">
       
        <div class="clr"></div>
      </div>
      <div class="hbg"><img src="images/header.jpg" width="923" height="291" alt="" /></div>
    </div>
    <div class="content">
      <div class="content_bg">
        
             
           
              <%
                  
                    File file = new File("D:/Restaurant_OCR_py/pos1.txt"); 
  
                    BufferedReader br = new BufferedReader(new FileReader(file)); 
  
                   String st="",data=""; 
                   while ((st = br.readLine()) != null) 
                   {
                   System.out.println(st);
                   data=st;
                   }
                  String p1[]=data.split("##@@");
                  
                  
                  
                  File file1 = new File("D:/Restaurant_OCR_py/pos2.txt"); 
  
                    BufferedReader br1 = new BufferedReader(new FileReader(file1)); 
  
                   String st1="",data1=""; 
                   while ((st1 = br1.readLine()) != null) 
                   {
                   System.out.println(st1);
                   data1=st1;
                   }
                  String p2[]=data1.split("##@@");
                  
                  
                  
                  File file2 = new File("D:/Restaurant_OCR_py/pos3.txt"); 
  
                    BufferedReader br2 = new BufferedReader(new FileReader(file2)); 
  
                   String st2="",data2=""; 
                   while ((st2 = br2.readLine()) != null) 
                   {
                   System.out.println(st);
                   data2=st2;
                   }
                  String p3[]=data2.split("##@@");
                  %>
              
                 <h1>Position 1</h1>
                 <table id="customers">
                     <%
                         for(int i=0;i<p1.length;i++)
                         {
                         %>
                         <tr><td><%=p1[i]%></td></tr>
                         
                         <%}%>
                 </table>
              
                 <h1>Position 2</h1>
                 <table id="customers">
                     <%
                         for(int i=0;i<p2.length;i++)
                         {
                         %>
                         <tr><td><%=p2[i]%></td></tr>
                         
                         <%}%>
                 </table>
              <h1>Position 3</h1>
                 <table id="customers">
                     <%
                         for(int i=0;i<p3.length;i++)
                         {
                         %>
                         <tr><td><%=p3[i]%></td></tr>
                         
                         <%}%>
                 </table>
          </div>
          <div class="article">
            <h2></h2>
            <div class="clr"></div>
            <p class="post-data"></p>
           <div class="clr"></div>
          </div>
          <div class="pagenavi"></div>
        </div>
        <div class="sidebar">
          <div class="gadget">
            <h2 class="star"></h2>
            <div class="clr"></div>
            <ul class="sb_menu">
              
          </div>
          <div class="gadget">
            <h2 class="star"></h2>
            <div class="clr"></div>
        
          </div>
          <div class="gadget">
            <h2 class="star"></h2>
            <div class="clr"></div>
            <div class="testi">
              <p></p>
              <p class="title"></p>
            </div>
          </div>
        </div>
        <div class="clr"></div>
      </div>
    </div>
  </div>
  <div class="fbg">
    <div class="fbg_resize">
      <div class="col c1">
        <h2></h2>
         </div>
     
     
      <div class="clr"></div>
    </div>
  </div>
</div>

</html>