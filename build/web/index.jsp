<%@page import="Json.*"%>
<%@page import="java.util.ArrayList"%>
<%@page import="javax.servlet.ServletRequest"%>
<!DOCTYPE html>
<html lang="pt">
  <head>
    <!-- Meta, title, CSS, favicons, etc. -->
    <meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="keywords" content="">


<title>
  
    TOPi - Full Stack Developer Test
  
</title>

<link rel="stylesheet" href="dist/css/bootstrap.css">
<link rel="stylesheet" href="dist/css/docs.min.css">
<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/2.0.0/jquery.min.js"></script>
<script type="text/javascript" src="https://netdna.bootstrapcdn.com/bootstrap/3.0.0/js/bootstrap.min.js"></script>
<script type="text/javascript" src="./js/docs.js"></script>

<style>pre code { background: transparent; }</style>

  </head>
  <body>
    <a class="sr-only" href="#content"></a>

    <!-- Docs master nav -->
    <header class="navbar navbar-default navbar-static-top navbar-branded" role="banner">
  <div class="container">
    <div class="navbar-header">
      <button class="navbar-toggle" type="button" data-toggle="collapse" data-target=".navbar-collapse">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      <a href="./index.html" class="navbar-brand navbar-foundation-logo">TOPi - Full Stack Developer Test</a>
    
</header>


    <!-- Docs page layout -->
    <div class="jumbotron jumbotron-inverse jumbotron-center" id="content">
      <div class="container">

        <h1>Most starred repositories Git Hub</h1>
        
      </div>
    </div>
    
 <section class="section" id="standard">
     <div class="container">
     <form action="index.jsp">
         <select name="Language" >
            <option>JavaScript</option>
            <option>Java</option>
            <option>Python</option>
            <option>PHP</option>
            <option>C</option>
            <option>C++</option>
            <option>TypeScript</option>
            <option>Shell</option>
        </select>
         <input type="submit" value="submit" class="btn btn-default"/>
     </form>
     </div>
     
     <p> </p>
     
    <div class="container">
        
        <%
            
        String option = request.getParameter("Language");
        
        JsonParser jp;
         
        if (option == null){
            out.println("<div class='navbar navbar-default'>");
                out.println("<h1> &nbsp&nbsp Select a Language</h1>");
            out.println("</div>");
        } else {
            jp = new JsonParser(option);
            
            out.println("<div class='navbar navbar-default'>");
                out.println("<h1> &nbsp&nbsp" + option + "</h1>");
            out.println("</div>");
            
            ArrayList<GitHubProjectVO> ArrayGitHubProjectVO = jp.getArrayGitHubProjectVO();
        
            int i =  0;
            for (GitHubProjectVO VO : ArrayGitHubProjectVO) {

                if (i == 0){
                  out.println("<div class='row'>");  
                }
                    out.println("<div class='col-md-4'>");
                        out.println("<a href='" + VO.getUrlProject() + "'>");
                        out.println("<div class='page-header page-header-anchor'>");
                            out.println("<img src='" + VO.getUrlPhoto() + "' style='width:100px;height:100px; position:absolute; right:45px'>");
                            out.print("<p>&nbsp</p>");
                            out.println("<h1>"+ VO.getName() + "</h1>");
                            out.println("<p>User: " + VO.getUser() + "</p>");
                            out.println("<p>Stars: " + VO.getStars()+ "</p>");
                            out.println("<p>Forks: " + VO.getForks()+ "</p>");
                        out.println("</div>");
                    out.println("</div>");
                    out.println("</a>");
                i++;

                if (i == 3){
                    out.println("</div>");
                    i = 0;
                }
            }
        }
        
        
        
        
        %>
        
    </div>
     
    
     
     
  
  
</section>



    <!-- Footer
    ================================================== -->
    <footer class="fn-footer" role="contentinfo">
  <div class="container">
    <p>This  project was developed by Felipe Ducheiko, as a part of TOPi Selection Process.</p>
    <p><a href="https://bitbucket.org/topinformation/topi-internal-full-stack-dev-test-felipeducheiko-gmail.com/src/master/">Bitbucket</a> repository</p>
  </div>
</footer>


  </body>
</html>
