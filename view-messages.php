<?php
include 'api/connection.php';
$id = $_GET['id'];


$data = mysqli_query($con,"select * from reopen_admin where r_id ='$id'");
$s = mysqli_fetch_assoc($data);
$cid = $s['cid'];
$data1 = mysqli_query($con,"select * from complaints where comp_id = '$cid'"); 
$data2 = mysqli_fetch_assoc($data1);
$status = $data2['status'];

// var_dump($status);exit();



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
 <?php include 'header1.php'; ?>
  <!-- End Header -->

  <!-- ======= Sidebar ======= -->
 <?php include 'sidebar1.php'; ?>
  <!-- End Sidebar-->

  <main id="main" class="main">

    <div class="pagetitle">
      <h1>Dashboard</h1>
      
    </div><!-- End Page Title -->

    <section class="section dashboard">
     

      <section class="section">
      <div class="row">
        <div class="col-lg-12">

          <div class="card">
            <div class="card-body">
              <h5 class="card-title">Warning</h5>

              <!-- Table with stripped rows -->
              <table class="table datatable">
                
                 
                  <tr>
            
                    <th scope="col">WARNING</th>
                    <?php $row = mysqli_fetch_assoc($data); ?>
                    <td style="color:red"><?php echo $row['msg'] ?></td>
                    <?php
                    if($status=='0'){
                      ?>
                      <td><button class="btn btn-primary">Reopened</button></td>
                      <?php
                    }
                    ?>
                     <?php
                    if($status=='1'){
                      ?>
                      <td><button class="btn btn-primary">Viewed</button></td>
                      <?php
                    }
                    ?>
                     <?php
                    if($status=='2'){
                      ?>
                      <td><button class="btn btn-primary">Processing</button></td>
                      <?php
                    }
                    ?>
                     <?php
                    if($status=='3'){
                      ?>
                      <td><button class="btn btn-primary">Solved</button></td>
                      <?php
                    }
                    ?>
                    
                   
                  </tr>
                 
                
                  
                </tbody>
              </table>
              <!-- End Table with stripped rows -->

            </div>
          </div>

        </div>
     
    </section>

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
  <!-- <script src="assets/vendor/simple-datatables/simple-datatables.js"></script> -->
  <script src="assets/vendor/tinymce/tinymce.min.js"></script>
  <script src="assets/vendor/php-email-form/validate.js"></script>

  <!-- Template Main JS File -->
  <script src="assets/js/main.js"></script>

</body>

</html>