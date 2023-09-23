<%@page import="com.user.Post"%>
<%@include file="user.jsp"%>

<html lang="en">
  <title>Admin Panel</title>
<body>
<main id="main" class="main">
  <div class="pagetitle">
	<h1>Dashboard</h1>
	<nav>
		<ol class="breadcrumb">
			<li class="breadcrumb-item"><a href="dashboard1.jsp">Home</a></li>
			<li class="breadcrumb-item active">Dashboard</li>
		</ol>
	</nav>
</div>

    <section class="section dashboard">
	<div class="row">

		<!-- Left side columns -->
		<div class="col-lg-8">
			<div class="row">
				
				<%
			String id1 = (String) session.getAttribute("id");

			try {
				Connection con = DBConnect.getConn();
				Statement st = con.createStatement();
				 String query = "SELECT COUNT(*) FROM notes";
				    ResultSet rs = st.executeQuery(query);
				    String Countrow="";
				      while(rs.next()){
				      Countrow = rs.getString(1);
				       } 
			%>
				
            <!-- Sales Card 1-->
            <div class="col-xxl-6 col-md-6">
            <a href="shownotes1.jsp">
              <div class="card info-card sales-card">
                <div class="card-body">
                  <h5 class="card-title">Total Notes</h5>

                  <div class="d-flex align-items-center">
                    <div class="card-icon rounded-circle d-flex align-items-center justify-content-center">
                      <i class="bi bi-files"></i>
                    </div>
                    <div class="ps-3">
                      <h6><%out.print(Countrow);%></h6>

                    </div>
                  </div>
                </div>

              </div>
              </a>
            </div><!-- End Sales Card -->
            
            <%
 				} catch (Exception e) {
 					System.out.println(e);
 					}
			 %>
            
            <%								  
				String uid = (String) session.getAttribute("uid");
			try {
				Connection con = DBConnect.getConn();
				Statement st = con.createStatement();
				 String query = "SELECT COUNT(*) FROM post";
				    ResultSet rs = st.executeQuery(query);
				    String Countrow="";
				      while(rs.next()){
				      Countrow = rs.getString(1);
				       } 
			%>
				
             <!-- Sales Card 2-->
            <div class="col-xxl-6 col-md-6">
            <a href="showAssign1.jsp">
              <div class="card info-card sales-card">
                <div class="card-body">
                  <h5 class="card-title">Total Assignments</h5>

                  <div class="d-flex align-items-center">
                    <div class="card-icon rounded-circle d-flex align-items-center justify-content-center">
                      <i class="bi bi-files"></i>
                    </div>
                    <div class="ps-3">
                      <h6><%out.print(Countrow);%></h6>

                    </div>
                  </div>
                </div>

              </div>
              </a>
            </div><!-- End Sales Card -->
            <%
 				} catch (Exception e) {
 					System.out.println(e);
 					}
			 %>
             
          </div>
        </div>
      </div>
</section>

  </main><!-- End #main -->
</body>
</html>