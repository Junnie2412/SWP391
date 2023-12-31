<%-- 
    Document   : slidebar
    Created on : Oct 10, 2023, 8:19:54 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<head>

    <meta charset="utf-8" />
    <title>ArtCenter - Online Drawing Course</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta content="Premium Multipurpose Admin & Dashboard Template" name="description" />
    <meta content="Themesbrand" name="author" />
    <!-- App favicon -->
    <link rel="shortcut icon" href="assets/images/favicon.ico">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script> 

    <!-- Sweet Alert css-->
    <link href="admin/assets/libs/sweetalert2/sweetalert2.min.css" rel="stylesheet" type="text/css" />

    <!-- Layout config Js -->
    <script src="admin/assets/js/layout.js"></script>
    <!-- Bootstrap Css -->
    <link href="admin/assets/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <!-- Icons Css -->
    <link href="admin/assets/css/icons.min.css" rel="stylesheet" type="text/css" />
    <!-- App Css-->
    <link href="admin/assets/css/app.min.css" rel="stylesheet" type="text/css" />
    <!-- custom Css-->
    <link href="admin/assets/css/custom.min.css" rel="stylesheet" type="text/css" />
    <style>
        /* Adjust styles as needed */
        body {
            font-family: 'Arial', sans-serif;
        }
        .sidebar {
            position: fixed;
            top: 0;
            left: 0;
            bottom: 0;
            width: 250px;
            padding: 20px;
            background-color: #333;
            color: white;
        }
        .sidebar a {
            color: white;
            text-decoration: none;
        }
        .sidebar a:hover {
            color: #ddd;
        }
        .sidebar .submenu {
            display: none;
            padding-left: 20px;
        }
        .sidebar .submenu.active {
            display: block;
        }
    </style>
</head>

<!DOCTYPE html>
<div class="app-menu navbar-menu">
    <!-- LOGO -->
    <div class="navbar-brand-box">        
        <div class="text-center mt-sm-5 mb-4 text-white-50">
            <div>
                <a href="../index.jsp"class="d-inline-block auth-logo">
                    <img src="/Wedproject2_temp1/admin/assets/images/art1.png" alt="logo" height="70" >
                </a>                          
            </div>
        </div>
        <!-- Light Logo-->
        <a href="index.jsp" class="logo logo-light">
            <span class="logo-sm">

            </span>
            <span class="logo-lg">

            </span>
        </a>
        <button type="button" class="btn btn-sm p-0 fs-20 header-item float-end btn-vertical-sm-hover" id="vertical-hover">
            <i class="ri-record-circle-line"></i>
        </button>
    </div>


    <div id="scrollbar">
        <div class="container-fluid">

            <div id="two-column-menu">
            </div>
            <ul class="navbar-nav" id="navbar-nav">
                <li class="menu-title"><span data-key="t-menu">Menu</span></li>
                <li class="nav-item">
                    <a class="nav-link menu-link" href="#sidebarDashboards" data-bs-toggle="collapse" role="button" aria-expanded="false" aria-controls="sidebarDashboards">
                        <i class="mdi mdi-speedometer"></i> <span data-key="t-dashboards">Dashboard</span>
                    </a>
                    <div class="collapse menu-dropdown" id="sidebarDashboards">
                        <ul class="nav nav-sm flex-column">
                            <li class="nav-item">
                                <a href="/Wedproject2_temp1/admin/admin.jsp" class="nav-link" data-key="t-ecommerce">View static</a>
                            </li>
                            <li class="nav-item">
                                <a href="/Wedproject2_temp1/admin/viewAllOrder.jsp" class="nav-link" data-key="t-ecommerce">View all order</a>
                            </li>
                        </ul>
                    </div>
                </li> <!-- end Dashboard Menu -->

                <li class="menu-title"><i class="ri-more-fill"></i> <span data-key="t-pages">Account</span></li>
                <li class="nav-item">
                    <a class="nav-link menu-link" href="#sidebarAuth" data-bs-toggle="collapse" role="button" aria-expanded="false" aria-controls="sidebarAuth">
                        <i class="mdi mdi-account-circle-outline"></i> <span data-key="t-authentication">Manager Staff account</span>
                    </a>

                    <div class="collapse menu-dropdown" id="sidebarAuth">
                        <ul class="nav nav-sm flex-column">
                            <li class="nav-item">
                                <form action="/Wedproject2_temp1/MainController" method="POST">
                                    <input style="background-color: #333;" type="submit" name="action" value="All Staff" class="custom-button">
                                </form>
                                
                            </li>
                            <li class="nav-item" style="margin-top: 20px;">
                                <form action="/Wedproject2_temp1/LoadCustomerController" method="POST">
                                    <input style="background-color: #333;" type="submit" name="action" value="All Customer" class="custom-button">
                                </form>
                               
                            </li>
                        </ul>
                    </div>
                </li>


            </ul>
        </div>
    </div> 






    <div class="sidebar-background"></div>
    <div class="vertical-overlay"></div>
</div>
<!-- Left Sidebar End -->
<!-- Vertical Overlay-->



</body>
