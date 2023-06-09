
<?php
include 'api/connection.php';
$id = $_GET['id'];
if(isset($_POST['sub'])){
  $msg = $_POST['msg'];

  $data = mysqli_query($con,"insert into reopen_admin(r_id,msg)values('$id','$msg')");
  $aid = mysqli_insert_id($con);
  $sql = mysqli_query($con,"select * from reopen_admin join reopen on reopen.rid = reopen_admin.r_id where reopen_admin.id ='$aid'");
  $sql1 = mysqli_fetch_assoc($sql);
  $cmpid = $sql1['comp_id']; 
// var_dump($cmpid);exit();
$all = mysqli_query($con,"SELECT * FROM complaints where comp_id = '$cmpid'"); 
$all1 = mysqli_fetch_assoc($all);

$log = $all1['login_id'];
$dept=$all1['department'];
$subject = $all1['subject'];
$description = $all1['description'];
$filenew = $all1['file'];

  mysqli_query($con,"insert into complaints(login_id,department,subject,description,file)values('$log','$dept','$subject','$description','$filenew')");
  $last= mysqli_insert_id($con);
  mysqli_query($con,"UPDATE reopen_admin SET cid = '$last'");
}
?>

<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>Dashboard - NiceAdmin Bootstrap Template</title>
  <meta content="" name="description">
  <meta content="" name="keywords">

  <!-- Favicons -->
  <link href="assets/img/favicon.png" rel="icon">
  <link href="assets/img/apple-touch-icon.png" rel="apple-touch-icon">

  <!-- Google Fonts -->
  <link href="https://fonts.gstatic.com" rel="preconnect">
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Nunito:300,300i,400,400i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">

  <!-- Vendor CSS Files -->
  <link href="assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link href="assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
  <link href="assets/vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
  <link href="assets/vendor/quill/quill.snow.css" rel="stylesheet">
  <link href="assets/vendor/quill/quill.bubble.css" rel="stylesheet">
  <link href="assets/vendor/remixicon/remixicon.css" rel="stylesheet">
  <link href="assets/vendor/simple-datatables/style.css" rel="stylesheet">

  <!-- Template Main CSS File -->
  <link href="assets/css/style.css" rel="stylesheet">

  <!-- =======================================================
  * Template Name: NiceAdmin
  * Updated: Mar 09 2023 with Bootstrap v5.2.3
  * Template URL: https://bootstrapmade.com/nice-admin-bootstrap-admin-html-template/
  * Author: BootstrapMade.com
  * License: https://bootstrapmade.com/license/
  ======================================================== -->
</head>

<body>

  <!-- ======= Header ======= -->
 <?php include 'header.php'; ?>
  <!-- End Header -->

  <!-- ======= Sidebar ======= -->
 <?php include 'sidebar.php'; ?>
  <!-- End Sidebar-->

  <main id="main" class="main">

<div class="pagetitle">
  <h1>Send Warning messages to Officers</h1>
  
</div><!-- End Page Title -->
<section class="section">
  <div class="row">
    <div class="col-lg-8">

      <div class="card">
        <div class="card-body">
          <h5 class="card-title">Warning Messages</h5>

          <!-- Horizontal Form -->
          <form method ="post">
            <div class="row mb-3">
              <label for="inputEmail3" class="col-sm-2 col-form-label">Message</label>
              <div class="col-sm-10">
                <input type="text" name ="msg" class="form-control" id="inputText" required>
              </div>
            </div>
          
            <div class="text-center">
              <button name="sub" class="btn btn-primary">Submit</button>
              <button type="reset" class="btn btn-secondary">Reset</button>
            </div>
          </form><!-- End Horizontal Form -->

        </div>
      </div>

     

    </div>

  
  </div>
</section>

</main><!-- End #main -->

  

  <a href="#" class="back-to-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>

  <!-- Vendor JS Files -->
  <script src="assets/vendor/apexcharts/apexcharts.min.js"></script>
  <script src="assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script src="assets/vendor/chart.js/chart.umd.js"></script>
  <script src="assets/vendor/echarts/echarts.min.js"></script>
  <script src="assets/vendor/quill/quill.min.js"></script>
  <script src="assets/vendor/simple-datatables/simple-datatables.js"></script>
  <script src="assets/vendor/tinymce/tinymce.min.js"></script>
  <script src="assets/vendor/php-email-form/validate.js"></script>

  <!-- Template Main JS File -->
  <script src="assets/js/main.js"></script>

</body>

</html>