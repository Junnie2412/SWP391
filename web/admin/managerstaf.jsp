<%@page import="java.util.ArrayList"%>
<%@page import="users.UserDTO"%>
<!doctype html>
<html lang="en" data-layout="vertical" data-topbar="light" data-sidebar="dark" data-sidebar-size="lg" data-sidebar-image="none" data-preloader="disable">

    <head>

        <<<<<<< HEAD
        =======
        <meta charset="utf-8" />
        <title>ArtCenter - Online Drawing Course</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta content="Premium Multipurpose Admin & Dashboard Template" name="description" />
        <meta content="Themesbrand" name="author" />
        <!-- App favicon -->
        <link rel="shortcut icon" href="assets/images/favicon.ico">
        >>>>>>> 0c844f84032ee9e3d48844e3713f95d08cd4c5d5

        <!-- Sweet Alert css-->
        <link href="../admin/assets/libs/sweetalert2/sweetalert2.min.css" rel="stylesheet" type="text/css" />

        <!-- Layout config Js -->
        <script src="../admin/assets/js/layout.js"></script>
        <!-- Bootstrap Css -->
        <link href="../admin/assets/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
        <!-- Icons Css -->
        <link href="../admin/assets/css/icons.min.css" rel="stylesheet" type="text/css" />
        <!-- App Css-->
        <link href="../admin/assets/css/app.min.css" rel="stylesheet" type="text/css" />
        <!-- custom Css-->
        <link href="../admin/assets/css/custom.min.css" rel="stylesheet" type="text/css" />
         
        
        


    </head>

    <body>

        <!-- Begin page -->
        <div id="layout-wrapper">

            <jsp:include page="layoutadmin/header.jsp"/>

            <!-- removeNotificationModal -->
            <div id="removeNotificationModal" class="modal fade zoomIn" tabindex="-1" aria-hidden="true">
                <div class="modal-dialog modal-dialog-centered">
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close" id="NotificationModalbtn-close"></button>
                        </div>
                        <div class="modal-body">
                            <div class="mt-2 text-center">
                                <lord-icon src="https://cdn.lordicon.com/gsqxdxog.json" trigger="loop" colors="primary:#f7b84b,secondary:#f06548" style="width:100px;height:100px"></lord-icon>
                                <div class="mt-4 pt-2 fs-15 mx-4 mx-sm-5">
                                    <h4>Are you sure ?</h4>
                                    <p class="text-muted mx-4 mb-0">Are you sure you want to remove this Notification ?</p>
                                </div>
                            </div>
                            <div class="d-flex gap-2 justify-content-center mt-4 mb-2">
                                <button type="button" class="btn w-sm btn-light" data-bs-dismiss="modal">Close</button>
                                <button type="button" class="btn w-sm btn-danger" id="delete-notification">Yes, Delete It!</button>
                            </div>
                        </div>

                    </div><!-- /.modal-content -->
                </div><!-- /.modal-dialog -->
            </div><!-- /.modal -->
            <!-- ========== App Menu ========== -->
            <jsp:include page="layoutadmin/slidebar.jsp"/>
            <!-- Left Sidebar End -->
            <!-- Vertical Overlay-->
            <div class="vertical-overlay"></div>

            <!-- ============================================================== -->
            <!-- Start right Content here -->
            <!-- ============================================================== -->
            <div class="main-content">

                <div class="page-content">
                    <div class="container-fluid">

                        <!-- start page title -->

                        <!-- end page title -->

                        <div class="row">
                            <div class="col-lg-12">
                                <div class="card" id="leadsList">
                                    <div class="card-header border-0">

                                        <div class="row g-4 align-items-center">
                                            <div class="col-sm-3">
                                                <div class="search-box">
                                                    <input type="text" class="form-control search" placeholder="Search for...">
                                                    <i class="ri-search-line search-icon"></i>
                                                </div>
                                            </div>
                                            <div class="col-sm-auto ms-auto">
                                                <div class="hstack gap-2">
                                                    <button class="btn btn-soft-danger" id="remove-actions" onClick="deleteMultiple()"><i class="ri-delete-bin-2-line"></i></button>

                                                    <button type="button" class="btn btn-success add-btn" data-bs-toggle="modal" id="create-btn" data-bs-target="#showModal"><i class="ri-add-line align-bottom me-1"></i> Add Staff</button>

                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="card-body">
                                        <div>
                                            <%
                                                ArrayList<UserDTO> staffList = (ArrayList) session.getAttribute("STAFF_LIST");
                                                if (staffList != null) {
                                                    if (staffList.size() > 0) {
                                            %>
                                            <div class="table-responsive table-card">
                                                <table class="table align-middle" id="customerTable">
                                                    <thead class="table-light">

                                                        <tr>
                                                            <th scope="col" style="width: 50px;">
                                                                <div class="form-check">
                                                                    <input class="form-check-input" type="checkbox" id="checkAll" value="option">
                                                                </div>
                                                            </th>
                                                            <th  data-sort="counter">No</th>
                                                            <th  data-sort="accountID">Account ID</th>
                                                            <th  data-sort="password">Password</th>
                                                            <th  data-sort="name">Name</th>
                                                            <th  data-sort="date">Birth Day</th>                                    

                                                            <th  data-sort="isActive">Active</th>
                                                            <th  data-sort="role">Role</th>
                                                            <th  data-sort="email">Email</th>
                                                            <th data-sort="image">Image</th>
                                                            <th data-sort="function">Function</th>

                                                        </tr>
                                                    </thead>
                                                    <tbody class="list form-check-all">
                                                        <%
                                                            int count = 1;

                                                            for (UserDTO u : staffList) {

                                                        %>
                                                    <form action="MainController" method="POST">
                                                        <tr>
                                                            <th scope="row">
                                                                <div class="form-check">
                                                                    <input class="form-check-input" type="checkbox" name="chk_child" value="option1">
                                                                </div>
                                                            </th>
                                                            <td><%= count++%></td>
                                                            <!-- <td class="id" style="display:none;"><a href="javascript:void(0);" class="fw-medium link-primary">#VZ2101</a></td>-->
                                                            <td>
                                                                <div class="accountID">
                                                                    <input type="text" name="accountID" value="<%=u.getAccountID()%>" readonly=""/>
                                                                </div>
                                                            </td>
                                                            <td class="password">
                                                                <input type="text" name="password" value="<%=u.getPassword()%>" required=""/>

                                                            </td>
                                                            <td class="name">

                                                                <input type="text" name="fullName" value="<%=u.getFullName()%>" required=""/>
                                                            </td>
                                                            <td class="date">
                                                                <input type="date" id="birthday" name="dateOfbirth" value="<%=u.getDateOfBirth()%>" required=""/>

                                                            </td>

                                                            <td class="isActive">
                                                                <input type="radio" name="isActive" value="<%=u.isIsActive()%>">
                                                            </td>
                                                            <td class="tags">
                                                                <span class="badge badge-soft-primary">Staff</span>
                                                            </td>                                                                
                                                            <td class="email">
                                                                <input type="text" name="email" value="<%=u.getEmail()%>" required=""/>

                                                            </td>
                                                            <td class="image"><img src="<%=u.getImage()%>" alt="<%=u.getFullName()%>" width="80" height="120"></td>
                                                            <td class="function">
                                                                   <ul class="list-inline hstack gap-2 mb-0">
                                                                <li class="list-inline-item edit" data-bs-toggle="tooltip"
                                                                    data-bs-trigger="hover" data-bs-placement="top"
                                                                    title="Edit">
                                                                    <a href=""
                                                                        data-bs-toggle="modal"
                                                                        class="text-primary d-inline-block edit-item-btn">
                                                                        <i class="ri-pencil-fill fs-16"></i>
                                                                    </a>
                                                                </li>
                                                                <li class="list-inline-item" data-bs-toggle="tooltip"
                                                                    data-bs-trigger="hover" data-bs-placement="top"
                                                                    title="Remove">
                                                                    <a href=""
                                                                        class="link-danger fs-15"><i
                                                                            class="ri-delete-bin-line"></i></a>
                                                                                                                                    </li>
                                                            </ul>
                                                                </td>

                                                        </tr>
                                                        
                                                    </form>
                                                    <%
                                                        }
                                                    %>
                                                    </tbody>
                                                </table>                                                                                                       
                                                <%
                                                        }
                                                    }
                                                %> 
                                                <div class="noresult" style="display: none">
                                                    <div class="text-center">
                                                        <lord-icon src="https://cdn.lordicon.com/msoeawqm.json" trigger="loop" colors="primary:#121331,secondary:#08a88a" style="width:75px;height:75px"></lord-icon>
                                                        <h5 class="mt-2">Sorry! No Result Found</h5>
                                                        <p class="text-muted mb-0">We've searched more than 150+ leads We did not find any leads for you search.</p>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="d-flex justify-content-end mt-3">
                                                <div class="pagination-wrap hstack gap-2">
                                                    <a class="page-item pagination-prev disabled" href="#">
                                                        Previous
                                                    </a>
                                                    <ul class="pagination listjs-pagination mb-0"></ul>
                                                    <a class="page-item pagination-next" href="#">
                                                        Next
                                                    </a>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="modal fade" id="showModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                                            <div class="modal-dialog modal-dialog-centered">
                                                <div class="modal-content">
                                                    <div class="modal-header bg-light p-3">
                                                        <h5 class="modal-title" id="exampleModalLabel"></h5>
                                                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close" id="close-modal"></button>
                                                    </div>
                                                    <form class="tablelist-form" autocomplete="off">
                                                        <div class="modal-body">
                                                            <input type="hidden" id="id-field" />
                                                            <div class="row g-3">
                                                                <div class="col-lg-12">
                                                                    <div class="text-center">
                                                                        <div class="position-relative d-inline-block">
                                                                            <div class="position-absolute bottom-0 end-0">
                                                                                <label for="lead-image-input" class="mb-0" data-bs-toggle="tooltip" data-bs-placement="right" title="Select Image">
                                                                                    <div class="avatar-xs cursor-pointer">
                                                                                        <div class="avatar-title bg-light border rounded-circle text-muted">
                                                                                            <i class="ri-image-fill"></i>
                                                                                        </div>
                                                                                    </div>
                                                                                </label>
                                                                                <input class="form-control d-none" value="" id="lead-image-input" type="file" accept="image/png, image/gif, image/jpeg">
                                                                            </div>
                                                                            <div class="avatar-lg p-1">
                                                                                <div class="avatar-title bg-light rounded-circle">
                                                                                    <img src="assets/images/users/user-dummy-img.jpg" id="lead-img" class="avatar-md rounded-circle object-cover" />
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                        <h5 class="fs-13 mt-3">Lead Image</h5>
                                                                    </div>
                                                                    <div>
                                                                        <label for="leadname-field" class="form-label">Name</label>
                                                                        <input type="text" id="leadname-field" class="form-control" placeholder="Enter Name" required />
                                                                    </div>
                                                                </div>
                                                                <!--end col-->
                                                                <div class="col-lg-12">
                                                                    <div>
                                                                        <label for="company_name-field" class="form-label">Company Name</label>
                                                                        <input type="text" id="company_name-field" class="form-control" placeholder="Enter company name" required />
                                                                    </div>
                                                                </div>
                                                                <!--end col-->
                                                                <div class="col-lg-6">
                                                                    <div>
                                                                        <label for="leads_score-field" class="form-label">Leads Score</label>
                                                                        <input type="text" id="leads_score-field" class="form-control" placeholder="Enter lead score" required />
                                                                    </div>
                                                                </div>
                                                                <!--end col-->
                                                                <div class="col-lg-6">
                                                                    <div>
                                                                        <label for="phone-field" class="form-label">Phone</label>
                                                                        <input type="text" id="phone-field" class="form-control" placeholder="Enter phone no" required />
                                                                    </div>
                                                                </div>
                                                                <!--end col-->
                                                                <div class="col-lg-12">
                                                                    <div>
                                                                        <label for="location-field" class="form-label">Location</label>
                                                                        <input type="text" id="location-field" class="form-control" placeholder="Enter location" required />
                                                                    </div>
                                                                </div>
                                                                <!--end col-->
                                                                <div class="col-lg-12">
                                                                    <div>
                                                                        <label for="taginput-choices" class="form-label">Tags</label>
                                                                        <select class="form-control" name="taginput-choices" id="taginput-choices" multiple>
                                                                            <option value="Lead">Lead</option>
                                                                            <option value="Partner">Partner</option>
                                                                            <option value="Exiting">Exiting</option>
                                                                            <option value="Long-term">Long-term</option>
                                                                        </select>
                                                                    </div>
                                                                </div>
                                                                <div class="col-lg-12">
                                                                    <div>
                                                                        <label for="date-field" class="form-label">Created Date</label>
                                                                        <input type="date" id="date-field" class="form-control" data-provider="flatpickr" data-date-format="d M, Y" placeholder="Select Date" required />
                                                                    </div>
                                                                </div>
                                                                <!--end col-->
                                                            </div>
                                                            <!--end row-->
                                                        </div>
                                                        <div class="modal-footer">
                                                            <div class="hstack gap-2 justify-content-end">
                                                                <button type="button" class="btn btn-light" data-bs-dismiss="modal">Close</button>
                                                                <button type="submit" class="btn btn-success" id="add-btn">Add leads</button>
                                                                <!-- <button type="button" class="btn btn-success" id="edit-btn">Update</button> -->
                                                            </div>
                                                        </div>
                                                    </form>
                                                </div>
                                            </div>
                                        </div>
                                        <!--end modal-->

                                        <!-- Modal -->
                                        <div class="modal fade zoomIn" id="deleteRecordModal" tabindex="-1" aria-labelledby="deleteRecordLabel" aria-hidden="true">
                                            <div class="modal-dialog modal-dialog-centered">
                                                <div class="modal-content">
                                                    <div class="modal-header">
                                                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close" id="btn-close"></button>
                                                    </div>
                                                    <div class="modal-body p-5 text-center">
                                                        <lord-icon src="https://cdn.lordicon.com/gsqxdxog.json" trigger="loop" colors="primary:#405189,secondary:#f06548" style="width:90px;height:90px"></lord-icon>
                                                        <div class="mt-4 text-center">
                                                            <h4 class="fs-semibold">You are about to delete a lead ?</h4>
                                                            <p class="text-muted fs-14 mb-4 pt-1">Deleting your lead will remove all of your information from our database.</p>
                                                            <div class="hstack gap-2 justify-content-center remove">
                                                                <button class="btn btn-link link-success fw-medium text-decoration-none" id="deleteRecord-close" data-bs-dismiss="modal"><i class="ri-close-line me-1 align-middle"></i> Close</button>
                                                                <button class="btn btn-danger" id="delete-record">Yes, Delete It!!</button>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <!--end modal -->


                                        <div class="offcanvas offcanvas-end" tabindex="-1" id="offcanvasExample" aria-labelledby="offcanvasExampleLabel">
                                            <div class="offcanvas-header bg-light">
                                                <h5 class="offcanvas-title" id="offcanvasExampleLabel">Leads Fliters</h5>
                                                <button type="button" class="btn-close text-reset" data-bs-dismiss="offcanvas" aria-label="Close"></button>
                                            </div>
                                            <!--end offcanvas-header-->
                                            <form action="#" class="d-flex flex-column justify-content-end h-100">
                                                <div class="offcanvas-body">
                                                    <div class="mb-4">
                                                        <label for="datepicker-range" class="form-label text-muted text-uppercase fw-semibold mb-3">Date</label>
                                                        <input type="date" class="form-control" id="datepicker-range" data-provider="flatpickr" data-range="true" placeholder="Select date">
                                                    </div>
                                                    <div class="mb-4">
                                                        <label for="country-select" class="form-label text-muted text-uppercase fw-semibold mb-3">Country</label>
                                                        <select class="form-control" data-choices data-choices-multiple-remove="true" name="country-select" id="country-select" multiple>
                                                            <option value="">Select country</option>
                                                            <option value="Argentina">Argentina</option>
                                                            <option value="Belgium">Belgium</option>
                                                            <option value="Brazil" selected>Brazil</option>
                                                            <option value="Colombia">Colombia</option>
                                                            <option value="Denmark">Denmark</option>
                                                            <option value="France">France</option>
                                                            <option value="Germany">Germany</option>
                                                            <option value="Mexico">Mexico</option>
                                                            <option value="Russia">Russia</option>
                                                            <option value="Spain">Spain</option>
                                                            <option value="Syria">Syria</option>
                                                            <option value="United Kingdom" selected>United Kingdom</option>
                                                            <option value="United States of America">United States of America</option>
                                                        </select>
                                                    </div>
                                                    <div class="mb-4">
                                                        <label for="status-select" class="form-label text-muted text-uppercase fw-semibold mb-3">Status</label>
                                                        <div class="row g-2">
                                                            <div class="col-lg-6">
                                                                <div class="form-check">
                                                                    <input class="form-check-input" type="checkbox" id="inlineCheckbox1" value="option1">
                                                                    <label class="form-check-label" for="inlineCheckbox1">New Leads</label>
                                                                </div>
                                                            </div>
                                                            <div class="col-lg-6">
                                                                <div class="form-check">
                                                                    <input class="form-check-input" type="checkbox" id="inlineCheckbox2" value="option2">
                                                                    <label class="form-check-label" for="inlineCheckbox2">Old Leads</label>
                                                                </div>
                                                            </div>
                                                            <div class="col-lg-6">
                                                                <div class="form-check">
                                                                    <input class="form-check-input" type="checkbox" id="inlineCheckbox3" value="option3">
                                                                    <label class="form-check-label" for="inlineCheckbox3">Loss Leads</label>
                                                                </div>
                                                            </div>
                                                            <div class="col-lg-6">
                                                                <div class="form-check">
                                                                    <input class="form-check-input" type="checkbox" id="inlineCheckbox4" value="option4">
                                                                    <label class="form-check-label" for="inlineCheckbox4">Follow Up</label>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="mb-4">
                                                        <label for="leadscore" class="form-label text-muted text-uppercase fw-semibold mb-3">Lead Score</label>
                                                        <div class="row g-2 align-items-center">
                                                            <div class="col-lg">
                                                                <input type="number" class="form-control" id="leadscore" placeholder="0">
                                                            </div>
                                                            <div class="col-lg-auto">
                                                                To
                                                            </div>
                                                            <div class="col-lg">
                                                                <input type="number" class="form-control" id="leadscore" placeholder="0">
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div>
                                                        <label for="leads-tags" class="form-label text-muted text-uppercase fw-semibold mb-3">Tags</label>
                                                        <div class="row g-3">
                                                            <div class="col-lg-6">
                                                                <div class="form-check">
                                                                    <input class="form-check-input" type="checkbox" id="marketing" value="marketing">
                                                                    <label class="form-check-label" for="marketing">Marketing</label>
                                                                </div>
                                                            </div>
                                                            <div class="col-lg-6">
                                                                <div class="form-check">
                                                                    <input class="form-check-input" type="checkbox" id="management" value="management">
                                                                    <label class="form-check-label" for="management">Management</label>
                                                                </div>
                                                            </div>
                                                            <div class="col-lg-6">
                                                                <div class="form-check">
                                                                    <input class="form-check-input" type="checkbox" id="business" value="business">
                                                                    <label class="form-check-label" for="business">Business</label>
                                                                </div>
                                                            </div>
                                                            <div class="col-lg-6">
                                                                <div class="form-check">
                                                                    <input class="form-check-input" type="checkbox" id="investing" value="investing">
                                                                    <label class="form-check-label" for="investing">Investing</label>
                                                                </div>
                                                            </div>
                                                            <div class="col-lg-6">
                                                                <div class="form-check">
                                                                    <input class="form-check-input" type="checkbox" id="partner" value="partner">
                                                                    <label class="form-check-label" for="partner">Partner</label>
                                                                </div>
                                                            </div>
                                                            <div class="col-lg-6">
                                                                <div class="form-check">
                                                                    <input class="form-check-input" type="checkbox" id="lead" value="lead">
                                                                    <label class="form-check-label" for="lead">Leads</label>
                                                                </div>
                                                            </div>
                                                            <div class="col-lg-6">
                                                                <div class="form-check">
                                                                    <input class="form-check-input" type="checkbox" id="sale" value="sale">
                                                                    <label class="form-check-label" for="sale">Sale</label>
                                                                </div>
                                                            </div>
                                                            <div class="col-lg-6">
                                                                <div class="form-check">
                                                                    <input class="form-check-input" type="checkbox" id="owner" value="owner">
                                                                    <label class="form-check-label" for="owner">Owner</label>
                                                                </div>
                                                            </div>
                                                            <div class="col-lg-6">
                                                                <div class="form-check">
                                                                    <input class="form-check-input" type="checkbox" id="banking" value="banking">
                                                                    <label class="form-check-label" for="banking">Banking</label>
                                                                </div>
                                                            </div>
                                                            <div class="col-lg-6">
                                                                <div class="form-check">
                                                                    <input class="form-check-input" type="checkbox" id="banking" value="banking">
                                                                    <label class="form-check-label" for="banking">Exiting</label>
                                                                </div>
                                                            </div>
                                                            <div class="col-lg-6">
                                                                <div class="form-check">
                                                                    <input class="form-check-input" type="checkbox" id="banking" value="banking">
                                                                    <label class="form-check-label" for="banking">Finance</label>
                                                                </div>
                                                            </div>
                                                            <div class="col-lg-6">
                                                                <div class="form-check">
                                                                    <input class="form-check-input" type="checkbox" id="banking" value="banking">
                                                                    <label class="form-check-label" for="banking">Fashion</label>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <!--end offcanvas-body-->
                                                <div class="offcanvas-footer border-top p-3 text-center hstack gap-2">
                                                    <button class="btn btn-light w-100">Clear Filter</button>
                                                    <button type="submit" class="btn btn-success w-100">Filters</button>
                                                </div>
                                                <!--end offcanvas-footer-->
                                            </form>
                                        </div>
                                        <!--end offcanvas-->

                                    </div>
                                </div>

                            </div>
                            <!--end col-->
                        </div>
                        <!--end row-->

                    </div>
                    <!-- container-fluid -->
                </div>
                <!-- End Page-content -->

                <jsp:include page="layoutadmin/footer.jsp"/>
            </div>
            <!-- end main content-->

        </div>
        <!-- END layout-wrapper -->



        <!--start back-to-top-->
        <button onclick="topFunction()" class="btn btn-danger btn-icon" id="back-to-top">
            <i class="ri-arrow-up-line"></i>
        </button>
        <!--end back-to-top-->

        <!--preloader-->
        <div id="preloader">
            <div id="status">
                <div class="spinner-border text-primary avatar-sm" role="status">
                    <span class="visually-hidden">Loading...</span>
                </div>
            </div>
        </div>

        

        <!-- Theme Settings -->
        <div class="offcanvas offcanvas-end border-0" tabindex="-1" id="theme-settings-offcanvas">
            <div class="d-flex align-items-center bg-primary bg-gradient p-3 offcanvas-header">
                <h5 class="m-0 me-2 text-white">Theme Customizer</h5>

                <button type="button" class="btn-close btn-close-white ms-auto" id="customizerclose-btn" data-bs-dismiss="offcanvas" aria-label="Close"></button>
            </div>
           
            <div class="offcanvas-footer border-top p-3 text-center">
                <div class="row">
                    <div class="col-6">
                        <button type="button" class="btn btn-light w-100" id="reset-layout">Reset</button>
                    </div>
                    <div class="col-6">
                        <a href="https://1.envato.market/velzon-admin" target="_blank" class="btn btn-primary w-100">Buy Now</a>
                    </div>
                </div>
            </div>
        </div>

        <!-- JAVASCRIPT -->
        <script src="assets/libs/bootstrap/js/bootstrap.bundle.min.js"></script>
        <script src="assets/libs/simplebar/simplebar.min.js"></script>
        <script src="assets/libs/node-waves/waves.min.js"></script>
        <script src="assets/libs/feather-icons/feather.min.js"></script>
        <script src="assets/js/pages/plugins/lord-icon-2.1.0.js"></script>
        <script src="assets/js/plugins.js"></script>

        <!-- list.js min js -->
        <script src="assets/libs/list.js/list.min.js"></script>
        <script src="assets/libs/list.pagination.js/list.pagination.min.js"></script>

        <!-- Sweet Alerts js -->
        <script src="assets/libs/sweetalert2/sweetalert2.min.js"></script>
        <!-- crm leads init -->
        <script src="assets/js/pages/crm-leads.init.js"></script>

        <!-- App js -->
        <script src="assets/js/app.js"></script>
    </body>

</html>