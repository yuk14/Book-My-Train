<?php
  session_start();
  include('assets/inc/config.php');
  include('assets/inc/checklogin.php');
  check_login();
  $aid=$_SESSION['pass_id'];
?>
<!DOCTYPE html>
<html lang="en">
  <!--Head-->
    <?php include('assets/inc/head.php');?>
  <!--End Head-->
  <body style="background-image: url('assets/img/back.jpg'); 
background-repeat: no-repeat;
  background-attachment: fixed;
  background-size: cover; 
background-blend-mode: overlay;
text-color: black ; ">
    <div class="be-wrapper be-fixed-sidebar">
    <!--Nav Bar-->
      <?php include('assets/inc/navbar.php');?>
      <!--End Navbar-->
      <!--Sidebar-->
        <?php include('assets/inc/sidebar.php');?>
      <!--End Sidebar-->
      <div class="be-content">
        <div class="page-head">
          <h2 style="color:DarkCyan;" class="page-head-title">Train Ticket</h2>
          <nav aria-label="breadcrumb" role="navigation">
            <ol class="breadcrumb page-head-nav">
              <li  class="breadcrumb-item"><a href="#" style="color:DarkCyan;">Dashbaord |</a></li>
              <li class="breadcrumb-item"><a href="#" style="color:DarkCyan;">Tickets |</a></li>
              <li style="color:DarkCyan;" class="breadcrumb-item active">Print</li>
            </ol>
          </nav>
        </div>

        <?php
          /**
            *Server side code to get details of single passenger using id 
            */
            $aid=$_SESSION['pass_id'];
            $ret="select * from orrs_passenger where pass_id=?";//fetch details of pasenger
            $stmt= $mysqli->prepare($ret) ;
            $stmt->bind_param('i',$aid);
            $stmt->execute() ;//ok
            $res=$stmt->get_result();
            //$cnt=1;
            while($row=$res->fetch_object())
            {
        ?>
        <!--get details of logged in user-->
        <div class="main-content container-fluid">
          <div class="row">
            <div class="col-lg-12">

            <!--Train Details-->
              <div id='printReceipt' class="invoice" style="background-color:Wheat; color:black;">
                <div class="row invoice-header">
                  <div class="col-sm-7">
                    <img class="logo-img" src="logo.png" 
alt="logo" width="140" height="100">
                  </div>
                  <div class="col-sm-5 invoice-order"><span class="invoice-id">Train Ticket For</span><span class="incoice-date"><?php echo $row->pass_fname;?> <?php echo $row->pass_lname;?></span></div>
                </div>
                <div class="row invoice-data">
                  <div class="col-sm-5 invoice-person"><span class="name"><?php echo $row->pass_fname;?> <?php echo $row->pass_lname;?></span><span><?php echo $row->pass_email;?></span><span><?php echo $row->pass_addr;?></span></div>
                  <div class="col-sm-2 invoice-payment-direction"></div>
                </div>
                <div class="row">
                  <div class="col-lg-12">
                    <table class="table table-bordered" style="background-color:GhostWhite; color:black; table-border:2px;" >
                    <thead>
                      <tr>
                        <th>Train Number</th>
                        <th>Train</th>
                        <th>Departure</th>
                        <th>Arrival</th>
                        <th>Dep.Time</th>
                        <th>Fare</th>
                      </tr>
                    </thead>
                    <tbody>
                        <?php
                        /**
                         *Lets select train booking details of logged in user using PASSENGER ID as the session
                         */
                            //$aid=$_SESSION['pass_id'];
                            $ret="select * from orrs_passenger where pass_id=?";//sql to get details of our user
                            $stmt= $mysqli->prepare($ret) ;
                            $stmt->bind_param('i',$aid);
                            $stmt->execute() ;//ok
                            $res=$stmt->get_result();
                            //$cnt=1;
                        while($row=$res->fetch_object())
                        {
                        ?>
                      <tr>
                        <td><?php echo $row->pass_train_number;?></td>
                        <td><?php echo $row->pass_train_name;?></td>
                        <td><?php echo $row->pass_dep_station;?></td>
                        <td><?php echo $row->pass_arr_station;?></td>
                        <td><?php echo $row->pass_dep_time;?></td>
                        <td>₹<?php echo $row->pass_train_fare;?></td>
                      </tr>
                      <hr>
                        <?php }?>
                    </tbody>
                    </table>
                  </div>
                </div>
              </div>
              <hr>
              <div class="row invoice-footer">
                  <div class="col-lg-12">
                    <button id="print" onclick="printContent('printReceipt');" class="btn btn-lg btn-space btn-primary">Print</button>
                  </div>
                </div>
            </div>
          </div>
        </div>
        <!--Close logged in user instance-->
    <?php }?>
    <!--footer-->
    <?php include('assets/inc/footer.php');?>
    <!--end footer-->
      </div>
      
    </div>
    <script src="assets/lib/jquery/jquery.min.js" type="text/javascript"></script>
    <script src="assets/lib/perfect-scrollbar/js/perfect-scrollbar.min.js" type="text/javascript"></script>
    <script src="assets/lib/bootstrap/dist/js/bootstrap.bundle.min.js" type="text/javascript"></script>
    <script src="assets/js/app.js" type="text/javascript"></script>
    <script type="text/javascript">
      $(document).ready(function(){
      	//-initialize the javascript
      	App.init();
      });
      
    </script>
    <!--print train ticket js-->
    <script>
      function printContent(el){
        var restorepage = $('body').html();
        var printcontent = $('#' + el).clone();
        $('body').empty().html(printcontent);
        window.print();
        $('body').html(restorepage);
        }
     </script>
  </body>

</html>