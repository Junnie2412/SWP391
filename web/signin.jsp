<!doctype html>
<html lang="en" data-layout="vertical" data-topbar="light" data-sidebar="dark" data-sidebar-size="lg" data-sidebar-image="none" data-preloader="disable">

    <head>

        <meta charset="utf-8" />
        <title>Login</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta content="Premium Multipurpose Admin & Dashboard Template" name="description" />
        <meta content="Themesbrand" name="author" />
        <!-- App favicon -->
        <link rel="shortcut icon" href="assets/images/art1.png">

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


    </head>

    <body>

        <div class="auth-page-wrapper pt-5">
            <!-- auth page bg -->
            <div class="auth-one-bg-position auth-one-bg" id="auth-particles">
                <div class="bg-overlay"></div>

                <div class="shape">
                    <svg xmlns="http://www.w3.org/2000/svg" version="1.1" xmlns:xlink="http://www.w3.org/1999/xlink" viewBox="0 0 1440 120">
                    <path d="M 0,36 C 144,53.6 432,123.2 720,124 C 1008,124.8 1296,56.8 1440,40L1440 140L0 140z"></path>
                    </svg>
                </div>
            </div>

            <!-- auth page content -->
            <div class="auth-page-content">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-12">
                            <div class="text-center mt-sm-5 mb-4 text-white-50">
                                <div>
                                    <a href="index.jsp" class="d-inline-block auth-logo">
                                        <img src="admin/assets/images/logomain.png" alt="logo" height="90">
                                    </a>

                                </div>
                            </div>
                            <!-- end row -->

                            <div class="row justify-content-center">
                                <div class="col-md-8 col-lg-6 col-xl-5">
                                    <div class="card mt-4">

                                        <div class="card-body p-4">
                                            <div class="text-center mt-2">
                                                <h5 class="text-primary">Welcome Back !</h5>
                                                <p class="text-muted">Sign in to continue to ArtCenter.</p>
                                            </div>
                                            <div class="p-2 mt-4">
                                                <form action="MainController">

                                                    <%
                                                        String notication = (String) request.getAttribute("SUCCESS");
                                                        if (notication != null) {
                                                            out.print("<h6>" + notication + "</h6>");
                                                        }
                                                    %>

                                                    <div class="mb-3">
                                                        <label for="username" class="form-label">Username</label>
                                                        <input type="text" class="form-control" id="username" placeholder="Enter username" name="userName">
                                                    </div>

                                                    <div class="mb-3">
                                                        <div class="float-end">

                                                        </div>
                                                        <label class="form-label" for="password-input">Password</label>
                                                        <div class="position-relative auth-pass-inputgroup mb-3">
                                                            <input type="password" class="form-control pe-5 password-input" placeholder="Enter password" id="password-input" name="password">
                                                            <button class="btn btn-link position-absolute end-0 top-0 text-decoration-none text-muted shadow-none password-addon" type="button" id="password-addon"><i class="ri-eye-fill align-middle"></i></button>
                                                        </div>
                                                    </div>

                                                    <%
                                                        String msg = (String) request.getAttribute("ERROR");
                                                        if (msg != null) {
                                                            out.print("<h6>" + msg + "</h6>");
                                                        }
                                                    %>

                                                    <div class="form-check">
                                                        <input class="form-check-input" type="checkbox" value="" id="auth-remember-check">
                                                        <label class="form-check-label" for="auth-remember-check">Remember me</label>
                                                    </div>

                                                    <div class="mt-4">
                                                        <button class="btn btn-success w-100" type="submit" name="action" value="SignIn">Sign In</button>
                                                    </div>

                                                    <div class="mt-4 text-center">
                                                        <div class="signin-other-title">
                                                            <h5 class="fs-13 mb-4 title">Login with</h5>
                                                        </div>
                                                        <div>


                                                            <a href="https://accounts.google.com/o/oauth2/auth?scope=profile&redirect_uri=http://localhost:8080/Wedproject2_temp1/UserGoogleHandler&response_type=code
                                                               &client_id=154364300660-v8tagpsjupfrtf737hbfepdq7jphjgku.apps.googleusercontent.com&approval_prompt=force">
                                                                <button type="button" class="btn btn-danger btn-icon waves-effect waves-light" style="width: 200px;"><i class="ri-google-fill fs-16"></i>  &nbsp; 
                                                                    <span class="button-text ">Login with Google account</span>
                                                                </button> 
                                                            </a> 


                                                        </div>
                                                    </div>
                                                </form>
                                            </div>
                                        </div>
                                        <!-- end card body -->
                                    </div>
                                    <!-- end card -->

                                    <div class="mt-4 text-center">
                                        <p class="mb-0">Don't have an account ? <a href="signup.jsp" class="fw-semibold text-primary text-decoration-underline"> Signup </a> </p>
                                    </div>

                                </div>
                            </div>
                            <!-- end row -->
                        </div>
                        <!-- end container -->
                    </div>
                    <!-- end auth page content -->

                    <!-- footer -->
                    <footer class="footer">
                        <div class="container">
                            <div class="row">
                                <div class="col-lg-12">
                                    <div class="text-center">
                                        <p class="mb-0 text-muted">&copy;
                                            <script>document.write(new Date().getFullYear())</script> ArtCenter.  <i class="mdi mdi-heart text-danger"></i> 
                                        </p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </footer>
                    <!-- end Footer -->
                </div>
                <!-- end auth-page-wrapper -->

                <!-- JAVASCRIPT -->
                <script src="admin/assets/libs/bootstrap/js/bootstrap.bundle.min.js"></script>
                <script src="admin/assets/libs/simplebar/simplebar.min.js"></script>
                <script src="admin/assets/libs/node-waves/waves.min.js"></script>
                <script src="admin/assets/libs/feather-icons/feather.min.js"></script>
                <script src="admin/assets/js/pages/plugins/lord-icon-2.1.0.js"></script>
                <script src="admin/assets/js/plugins.js"></script>

                <!-- particles js -->
                <script src="admin/assets/libs/particles.js/particles.js"></script>
                <!-- particles app js -->
                <script src="admin/assets/js/pages/particles.app.js"></script>
                <!-- password-addon init -->
                <script src="admin/assets/js/pages/password-addon.init.js"></script>
                </body>

                </html>
