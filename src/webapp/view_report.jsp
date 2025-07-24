
<%@page import="java.util.Map"%>
<%@page import="java.sql.Connection"%>
<%@page import="net.sf.jasperreports.engine.JasperRunManager"%>
<%@page import="java.util.HashMap"%>
<%@page import="java.io.File"%>
<%@page import="java.sql.DriverManager"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
    
       <%
       
       String event=request.getParameter("submit");
       if(event!=null)
       {
           // Normal Report
            if(event.equals("Admin List"))
            {
                Connection cn = null;
                try 
                {
                    Class.forName("com.mysql.jdbc.Driver");
                    cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/online_voting_system","root","root");

                } 
                catch (Exception ex) 
                {
                    ex.printStackTrace();
                }

                File reportFile = new File(application.getRealPath("Report\\Admin_LIst.jasper"));//your report_name.jasper file
                Map parameters = new HashMap();
                byte[] bytes = JasperRunManager.runReportToPdf(reportFile.getPath(), null, cn);

                response.setContentType("application/pdf"); 
                response.setContentLength(bytes.length);
                ServletOutputStream outStream = response.getOutputStream();
                outStream.write(bytes, 0, bytes.length);
                outStream.flush();
                outStream.close();
                       
           }
            
       }
       if(event!=null)
       {
           // Normal Report
            if(event.equals("Candidate List"))
            {
                Connection cn = null;
                try 
                {
                    Class.forName("com.mysql.jdbc.Driver");
                    cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/online_voting_system","root","root");

                } 
                catch (Exception ex) 
                {
                    ex.printStackTrace();
                }

                File reportFile = new File(application.getRealPath("Report\\Add_Candidate.jasper"));//your report_name.jasper file
                Map parameters = new HashMap();
                byte[] bytes = JasperRunManager.runReportToPdf(reportFile.getPath(), null, cn);

                response.setContentType("application/pdf"); 
                response.setContentLength(bytes.length);
                ServletOutputStream outStream = response.getOutputStream();
                outStream.write(bytes, 0, bytes.length);
                outStream.flush();
                outStream.close();
                       
           }
            
       }

       
    if(event!=null)
    {
        // Normal Report
         if(event.equals("Voter List"))
         {
             Connection cn = null;
             try 
             {
                 Class.forName("com.mysql.jdbc.Driver");
                 cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/online_voting_system","root","root");

             } 
             catch (Exception ex) 
             {
                 ex.printStackTrace();
             }

             File reportFile = new File(application.getRealPath("Report\\Voter_list.jasper"));//your report_name.jasper file
             Map parameters = new HashMap();
             byte[] bytes = JasperRunManager.runReportToPdf(reportFile.getPath(), null, cn);

             response.setContentType("application/pdf"); 
             response.setContentLength(bytes.length);
             ServletOutputStream outStream = response.getOutputStream();
             outStream.write(bytes, 0, bytes.length);
             outStream.flush();
             outStream.close();
                    
        }
         
    }
    
    if(event!=null)
    {
        // Normal Report
         if(event.equals("Elections List"))
         {
             Connection cn = null;
             try 
             {
                 Class.forName("com.mysql.jdbc.Driver");
                 cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/online_voting_system","root","root");

             } 
             catch (Exception ex) 
             {
                 ex.printStackTrace();
             }

             File reportFile = new File(application.getRealPath("Report\\Elections_List.jasper"));//your report_name.jasper file
             Map parameters = new HashMap();
             byte[] bytes = JasperRunManager.runReportToPdf(reportFile.getPath(), null, cn);

             response.setContentType("application/pdf"); 
             response.setContentLength(bytes.length);
             ServletOutputStream outStream = response.getOutputStream();
             outStream.write(bytes, 0, bytes.length);
             outStream.flush();
             outStream.close();
                    
        }
         
    }
       if(event!=null)
       {
           // Normal Report
            if(event.equals("Positions"))
            {
                Connection cn = null;
                try 
                {
                    Class.forName("com.mysql.jdbc.Driver");
                    cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/Online_Voting_System","root","root");

                } 
                catch (Exception ex) 
                {
                    ex.printStackTrace();
                }
																	
                File reportFile = new File(application.getRealPath("Report\\Add_Position.jasper"));//your report_name.jasper file
                Map parameters = new HashMap();
                byte[] bytes = JasperRunManager.runReportToPdf(reportFile.getPath(), null, cn);

                response.setContentType("application/pdf"); 
                response.setContentLength(bytes.length);
                ServletOutputStream outStream = response.getOutputStream();
                outStream.write(bytes, 0, bytes.length);
                outStream.flush();
                outStream.close();
                       
           }
            
       }
       if(event!=null)
       {
           // Normal Report
            if(event.equals("Votings"))
            {
                Connection cn = null;
                try 
                {
                    Class.forName("com.mysql.jdbc.Driver");
                    cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/Online_Voting_System","root","root");

                } 
                catch (Exception ex) 
                {
                    ex.printStackTrace();
                }
																	
                File reportFile = new File(application.getRealPath("Report\\Votings.jasper"));//your report_name.jasper file
                Map parameters = new HashMap();
                byte[] bytes = JasperRunManager.runReportToPdf(reportFile.getPath(), parameters
                		, cn);

                response.setContentType("application/pdf"); 
                response.setContentLength(bytes.length);
                ServletOutputStream outStream = response.getOutputStream();
                outStream.write(bytes, 0, bytes.length);
                outStream.flush();
                outStream.close();
                       
           }
            
       }
       
       //*****************  Id wise reports ********************
     
      
       if(event!=null)
       {
           // Normal Report
            if(event.equals("ID wise Admin List"))
            {
                Connection cn = null;
                String id =request.getParameter("id");
                try 
                {
                    Class.forName("com.mysql.jdbc.Driver");
                    cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/online_voting_system","root","root");

                } 
                catch (Exception ex) 
                {
                    ex.printStackTrace();
                }

                File reportFile = new File(application.getRealPath("Report\\Id_Admin_list.jasper"));//your report_name.jasper file
                Map parameters = new HashMap();
                parameters.put("id", id);
                byte[] bytes = JasperRunManager.runReportToPdf(reportFile.getPath(), parameters, cn);
                response.setContentType("application/pdf"); 
                response.setContentLength(bytes.length);
                ServletOutputStream outStream = response.getOutputStream();
                outStream.write(bytes, 0, bytes.length);
                outStream.flush();
                outStream.close();
                       
           }
            
       }
       if(event!=null)
       {
           // Normal Report
            if(event.equals("ID wise Candidate List"))
            {
                Connection cn = null;
                String id= request.getParameter("id");
                try 
                {
                    Class.forName("com.mysql.jdbc.Driver");
                    cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/online_voting_system","root","root");

                } 
                catch (Exception ex) 
                {
                    ex.printStackTrace();
                }

                File reportFile = new File(application.getRealPath("Report\\ID_Add_Candidate.jasper"));//your report_name.jasper file
                Map parameters = new HashMap();
                parameters.put("id", id);
                byte[] bytes = JasperRunManager.runReportToPdf(reportFile.getPath(), parameters, cn);

                response.setContentType("application/pdf"); 
                response.setContentLength(bytes.length);
                ServletOutputStream outStream = response.getOutputStream();
                outStream.write(bytes, 0, bytes.length);
                outStream.flush();
                outStream.close();
                       
           }
       }
              
       if(event!=null)
       {
           // Normal Report
            if(event.equals("ID wise Elections List"))
            {
                Connection cn = null;
                String id =request.getParameter("id");
                try 
                {
                    Class.forName("com.mysql.jdbc.Driver");
                    cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/online_voting_system","root","root");

                } 
                catch (Exception ex) 
                {
                    ex.printStackTrace();
                }

                File reportFile = new File(application.getRealPath("Report\\Id_Election_list.jasper"));//your report_name.jasper file
                Map parameters = new HashMap();
                parameters.put("id", id);
                byte[] bytes = JasperRunManager.runReportToPdf(reportFile.getPath(), parameters, cn);
                response.setContentType("application/pdf"); 
                response.setContentLength(bytes.length);
                ServletOutputStream outStream = response.getOutputStream();
                outStream.write(bytes, 0, bytes.length);
                outStream.flush();
                outStream.close();
                       
           }
       }
              
              
       if(event!=null)
       {
           // Normal Report
            if(event.equals("ID wise Positions"))
            {
                Connection cn = null;
                String id =request.getParameter("id");
                try 
                {
                    Class.forName("com.mysql.jdbc.Driver");
                    cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/online_voting_system","root","root");

                } 
                catch (Exception ex) 
                {
                    ex.printStackTrace();
                }

                File reportFile = new File(application.getRealPath("Report\\Id_positions.jasper"));//your report_name.jasper file
                Map parameters = new HashMap();
                parameters.put("id", id);
                byte[] bytes = JasperRunManager.runReportToPdf(reportFile.getPath(), parameters, cn);
                response.setContentType("application/pdf"); 
                response.setContentLength(bytes.length);
                ServletOutputStream outStream = response.getOutputStream();
                outStream.write(bytes, 0, bytes.length);
                outStream.flush();
                outStream.close();
                       
           }
       }             
              
       if(event!=null)
       {
           // Normal Report
            if(event.equals("ID wise Voter List"))
            {
                Connection cn = null;
                String id =request.getParameter("id");
                try 
                {
                    Class.forName("com.mysql.jdbc.Driver");
                    cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/online_voting_system","root","root");

                } 
                catch (Exception ex) 
                {
                    ex.printStackTrace();
                }

                File reportFile = new File(application.getRealPath("Report\\id_wise_voters.jasper"));//your report_name.jasper file
                Map parameters = new HashMap();
                parameters.put("id", id);
                byte[] bytes = JasperRunManager.runReportToPdf(reportFile.getPath(), parameters, cn);

                response.setContentType("application/pdf"); 
                response.setContentLength(bytes.length);
                ServletOutputStream outStream = response.getOutputStream();
                outStream.write(bytes, 0, bytes.length);
                outStream.flush();
                outStream.close();
                       
           }
       }
      
       if(event!=null)
       {
           // Normal Report
            if(event.equals("ID wise Votings"))
            {
                Connection cn = null;
                String id =request.getParameter("id");
                try 
                {
                    Class.forName("com.mysql.jdbc.Driver");
                    cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/online_voting_system","root","root");

                } 
                catch (Exception ex) 
                {
                    ex.printStackTrace();
                }

                File reportFile = new File(application.getRealPath("Report\\Id_votings.jasper"));//your report_name.jasper file
                Map parameters = new HashMap();
                parameters.put("id", id);
                byte[] bytes = JasperRunManager.runReportToPdf(reportFile.getPath(), parameters, cn);

                response.setContentType("application/pdf"); 
                response.setContentLength(bytes.length);
                ServletOutputStream outStream = response.getOutputStream();
                outStream.write(bytes, 0, bytes.length);
                outStream.flush();
                outStream.close();
                       
           }
       }
      
        %>
    </body>
</html>
