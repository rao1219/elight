 <%
   try
  {
   Class.forName("com.mysql.jdbc.Driver").newInstance();
  }
  catch (Exception e)
  {
   System.out.println("Exception ");
  }
  %>