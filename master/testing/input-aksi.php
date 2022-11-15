  <html class="no-js" lang=""> <!--<![endif]-->
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Ela Admin - HTML5 Admin Template</title>
    <meta name="description" content="Ela Admin - HTML5 Admin Template">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <link rel="apple-touch-icon" href="https://i.imgur.com/QRAUqs9.png">
    <link rel="shortcut icon" href="https://i.imgur.com/QRAUqs9.png">

    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/normalize.css@8.0.0/normalize.min.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.1.3/dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/font-awesome@4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/gh/lykmapipo/themify-icons@0.1.2/css/themify-icons.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/pixeden-stroke-7-icon@1.2.3/pe-icon-7-stroke/dist/pe-icon-7-stroke.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/flag-icon-css/3.2.0/css/flag-icon.min.css">
    <link rel="stylesheet" href="../assets/css/cs-skin-elastic.css">
    <link rel="stylesheet" href="../assets/css/style.css">
    <!-- <script type="text/javascript" src="https://cdn.jsdelivr.net/html5shiv/3.7.3/html5shiv.min.js"></script> -->
    <link href="https://cdn.jsdelivr.net/npm/chartist@0.11.0/dist/chartist.min.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/jqvmap@1.5.1/dist/jqvmap.min.css" rel="stylesheet">

    <link href="https://cdn.jsdelivr.net/npm/weathericons@2.1.0/css/weather-icons.css" rel="stylesheet" />
    <link href="https://cdn.jsdelivr.net/npm/fullcalendar@3.9.0/dist/fullcalendar.min.css" rel="stylesheet" />
    <script defer src="../script.js"></script>
   <style>

    #weatherWidget .currentDesc {
        color: #ffffff!important;
    }
        .traffic-chart {
            min-height: 335px;
        }
        #flotPie1  {
            height: 150px;
        }
        #flotPie1 td {
            padding:3px;
        }
        #flotPie1 table {
            top: 20px!important;
            right: -10px!important;
        }
        .chart-container {
            display: table;
            min-width: 270px ;
            text-align: left;
            padding-top: 10px;
            padding-bottom: 10px;
        }
        #flotLine5  {
             height: 105px;
        }

        #flotBarChart {
            height: 150px;
        }
        #cellPaiChart{
            height: 160px;
        }
        *, *::after, *::before {
  box-sizing: border-box;
}

.modalz {
    display: hidden;
  position: fixed;
  top: 50%;
  left: 50%;
  transform: translate(-50%, -50%) scale(0);
  transition: 200ms ease-in-out;
  border: 1px solid black;
  border-radius: 10px;
  z-index: 99999999999;
  background-color: white;
  width: 1000px;
  max-width: 80%;
}

.modalz.active {
  transform: translate(-50%, -50%) scale(1);
}

.modal-header {
  padding: 10px 15px;
  display: flex;
  justify-content: space-between;
  align-items: center;
  border-bottom: 1px solid black;
}

.modal-header .title {
  font-size: 1.25rem;
  font-weight: bold;
}

.modal-header .close-button {
  cursor: pointer;
  border: none;
  outline: none;
  background: none;
  font-size: 1.25rem;
  font-weight: bold;
}

.modal-body {
  padding: 10px 15px;
}

#overlay {
    z-index:  2000;
  position: fixed;
  opacity: 0;
  transition: 200ms ease-in-out;
  top: 0;
  left: 0;
  right: 0;
  bottom: 0;
  background-color: rgba(0, 0, 0, .5);
  pointer-events: none;
}

#overlay.active {
  opacity: 1;
  pointer-events: all;
}

<?php 

include "../koneksi.php";
$jalan=0;
$number=0;
$satu=1;
$count=1;

$layak = 0;
$tidaklayak = 0;

$probtidaklayak= 0;
$problayak= 0;
$jml_atribut= 0;
$sum = 0;
$tambah= 0;

$well="";
$isi=array();
$sql = 'SELECT * FROM tb_atribut order by id_atribut';
$result = $db->query($sql);
$noatribut=array();
$atribut=array();
foreach ($result as $row) {
    $atribut[$row['id_atribut']]=$row['atribut'];
    $noatribut[$count]=$row['id_atribut'];
    $jml_atribut=$jml_atribut+1 ;
    $count=$count+1;
    }
$sql = 'SELECT * FROM tb_parameter ORDER BY id_atribut,id_parameter';
$result = $db->query($sql);
$parameter=array();
$id_atribut=0;
foreach ($result as $row) {
    if($id_atribut!=$row['id_atribut']){
        $parameter[$row['id_atribut']]=array();
        $id_atribut=$row['id_atribut'];
    }
    $parameter[$row['id_atribut']][$row['nilai']]=$row['parameter'];
}
$sql = 'SELECT * FROM tb_data a JOIN tb_responden b USING(id_responden) ORDER BY b.id_responden';
$result = $db->query($sql);
$data=array();
$responden=array();
$id_responden=0;
foreach ($result as $row) {
    if($id_responden!=$row['id_responden']){
        $responden[$row['id_responden']]=$row['responden'];
        $data[$row['id_responden']]=array();
        $id_responden=$row['id_responden'];
    }
    $data[$row['id_responden']][$row['id_atribut']]=$row['id_parameter'];
}
foreach($data as $id_responden=>$dt_atribut){
   

    if($dt_atribut[1]=='1'){
        $layak=$layak+1;
    }else{
        $tidaklayak=$tidaklayak+1;
    }
      $sum = $sum+1;

}
//class probabilities
$problayak=$layak/$sum;
$probtidaklayak=$tidaklayak/$sum;
//condition probabilities
foreach ($data as $value){
    for($i=2;$i<=$jml_atribut;$i++){
        //filter layak atau tidak
        $j=$i-1;
        if($value[1]==1){
            if($value[$i]==1){
                if(!isset($isi[2][$j][1])){
                    $isi[2][$j][1]=1;
                }else{
                    $isi[2][$j][1]++;
                }
            }
            if($value[$i]==2){
                if(!isset($isi[2][$j][2])){
                    $isi[2][$j][2]=1;
                }else{
                    $isi[2][$j][2]++;
                }
            }
            if($value[$i]==3){
               if(!isset($isi[2][$j][3])){
                    $isi[2][$j][3]=1;
                }else{
                    $isi[2][$j][3]++;
                }
            }
            if($value[$i]==4){
              if(!isset($isi[2][$j][4])){
                    $isi[2][$j][4]=1;
                }else{
                    $isi[2][$j][4]++;
                }
            }
        }else if($value[1]==0){
            if($value[$i]==1){
              if(!isset($isi[1][$j][1])){
                    $isi[1][$j][1]=1;
                }else{
                    $isi[1][$j][1]++;
                }
            }
            if($value[$i]==2){
               if(!isset($isi[1][$j][2])){
                    $isi[1][$j][2]=1;
                }else{
                    $isi[1][$j][2]++;
                }
            }
            if($value[$i]==3){
               if(!isset($isi[1][$j][3])){
                    $isi[1][$j][3]=1;
                }else{
                    $isi[1][$j][3]++;
                }
            }
            if($value[$i]==4){
               if(!isset($isi[1][$j][4])){
                    $isi[1][$j][4]=1;
                }else{
                    $isi[1][$j][4]++;
                }
            }
        }
    
    }
}



for($x=1;$x<=2;$x++){
    for($y=2;$y<=$jml_atribut;$y++){
        for($z=1;$z<=4;$z++){
            $y1=$y-1;
            if($x==1){
                $lort=$tidaklayak;
            }else{
                $lort=$layak;
            }
            if(!isset($isi[$x][$y1][$z])){

                $isi[$x][$y1][$z]=0;

            }else{
                $isi[$x][$y1][$z]=$isi[$x][$y1][$z]/$lort;
            }
            
        }
    }
}

/////////////////////////

$nama = $_POST['nama'];
$tampung=array();
$training=array();
$training[0] = $nama;
for($i=2;$i<=$jml_atribut;$i++){
	$number=$i-$satu;
	$tampung[$i] = $_POST[$noatribut[$i]];
	$training[$number] = $_POST[$noatribut[$i]];
}


////////////////////
for($i=1;$i<count($training);$i++){
    $training1[$i]=$isi[1][$i][$training[$i]];
    $training2[$i]=$isi[2][$i][$training[$i]];
}
//perkalian isi array, bandingkan, tulis hasil
$jumlaht1=$probtidaklayak;
$jumlaht2=$problayak;
$hasilt=0;

for($a=1; $a<=count($training1); $a++){
$lort=$tidaklayak;
if($training1[$a]==0){
    for($g=1;$g<=count($training1);$g++){
        if($training1[$g]!=0){
                $training1[$g]=(($training1[$g]*$lort)+1)/($lort+count($training1));
        }else{
            $training1[$a]=1/($lort+count($training1));
        }
                    
    }
  $training1[$a]=1/($lort+count($training1));
}
}

for($a=1; $a<=count($training2); $a++){
$lort=$layak;
if($training2[$a]==0){
    for($g=1;$g<=count($training2);$g++){
        if($training2[$g]!=0){
                $training2[$g]=(($training2[$g]*$lort)+1)/($lort+count($training2));
        }else{
            $training2[$a]=1/($lort+count($training2));
        }
                    
    }
  $training2[$a]=1/($lort+count($training2));
}
}

for($a=1; $a<=count($training1); $a++){
$jumlaht1=$jumlaht1*$training1[$a];
}
for($a=1; $a<=count($training2); $a++){
$jumlaht2=$jumlaht2*$training2[$a];
}
$kurang=0;
$kurang=$jumlaht2-$jumlaht1;
if($kurang>=0){
    $hasilt=1;
    $tampung[1]=$hasilt;
}else{
    $hasilt=0;
    $tampung[1]=$hasilt;
}


$id_responden_test=rand(1,100);
$cek_id= "SELECT * FROM tb_responden_test where id_responden ='$id_responden_test' ";
$cek_result = mysqli_query($connect,$cek_id);
$numrow = mysqli_num_rows($cek_result);


while($numrow > 0){
    $id_responden_test=0;
	$id_responden_test=rand(1,100);
	$cek_id= "SELECT * FROM tb_responden_test where id_responden ='$id_responden_test' ";
	$cek_result = mysqli_query($connect,$cek_id);
    $numrow = mysqli_num_rows($cek_result);

}


    $input_responden = "INSERT INTO tb_responden_test VALUES('$id_responden_test','$nama') ";
    $responden_result = $db->query($input_responden);

    for($i=1;$i<=$jml_atribut;$i++){
        $a=$noatribut[$i];
        $b=$tampung[$i];
    $input_data = "INSERT INTO tb_data_test (id_data,id_responden,id_atribut,id_parameter) VALUES(NULL,'$id_responden_test','$a','$b') ";
    $data_result = $db->query($input_data);
    }
?>

    </style>
</head>
<body>
    <!-- Left Panel -->
    <aside id="left-panel" class="left-panel">
        <nav class="navbar navbar-expand-sm navbar-default">
            <div id="main-menu" class="main-menu collapse navbar-collapse">
                <ul class="nav navbar-nav">
                  <li>
                        <a href="../halaman-awal.php"><i class="menu-icon fa fa-laptop"></i>Halaman Awal </a>
                    </li>
                    <li>
                        <a href="../home.php"> <i class="menu-icon fa fa-table"></i>Data Training</a>
                    </li>
                    <li>
                        <a href="../atribut.php"> <i class="menu-icon fa fa-table"></i>Atribut</a>
                    </li>
                    <li class="menu-item-has-children dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"> <i class="menu-icon fa fa-th"></i>Testing</a>
                        <ul class="sub-menu children dropdown-menu">
                            <li class="active"><i class="menu-icon fa fa-table"></i><a href="../testing.php">Data Testing</a></li>
                            <li><i class="menu-icon fa fa-book"></i><a href="../testing/print.php">Print Data Testing</a></li>
                        </ul>
                    </li>
                    <li> <a href="../Login.php"> Logout</a> </li>
                     
                </ul>
            </div><!-- /.navbar-collapse -->
        </nav>
    </aside>
    <!-- /#left-panel -->
    <div id="right-panel" class="right-panel" style="margin-top: -230px;" style="width: 70%">
        <!-- Header-->
        <header id="header" class="header">
            <div class="top-left">
                <div class="navbar-header">
                    <a class="navbar-brand" href="./">Program Keluarga Harapan</a>
                    <a class="navbar-brand hidden" href="./"><img src="images/logo2.png" alt="Logo"></a>
                    <a id="menuToggle" class="menutoggle"><i class="fa fa-bars"></i></a>
                </div>
            </div>
        </header>
        <!-- /#header -->
        <div class="content">
            <!-- Animated -->
            <div class="animated fadeIn">  
                <div class="row">

                    <div class="col-md-12">
                        <div class="card">
                            <div class="card-header">
                                <strong class="card-title">Proses Perhitungan</strong>
                                <div align="right">
                                
                                <a href="../testing.php" class="btn btn-primary">Ok</a>
                              </div>
                            </div>
                            <div class="card-body" >
                                <div>
                                <b>Probabilitas Tidak Layak</b>
                                <table class="table table-striped"> 
                                <thead>
                                    <tr>
                                        <?php 
                                         for($i=2;$i<=count($atribut);$i++){ 
                            echo "<th style='text-align:center'>{$atribut[$noatribut[$i]]}</th>";
                        }
                                        ?>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                <?php for($i=1;$i<=count($training1);$i++){
                                    echo "<td>{$training1[$i]}</td>";
                                ?>
                                
                                <?php    
                                }?>
                                </tr>
                                </tbody>
                                </table>
                                
                                 </div>
                                 <div style="margin-top: 50px;">
                                <b>Probabilitas Layak</b>
                                <table class="table table-striped"> 
                                <thead>
                                    <tr>
                                        <?php 
                                         for($i=2;$i<=count($atribut);$i++){ 
                            echo "<th style='text-align:center'>{$atribut[$noatribut[$i]]}</th>";
                        }
                                        ?>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                <?php for($i=1;$i<=count($training2);$i++){
                                    echo "<td>{$training2[$i]}</td>";
                                ?>
                                
                                <?php    
                                }?>
                                </tr>
                                </tbody>
                                </table>
                                
                                 </div>
                                 <div style="margin-top: 40px">
                                    <b>Perbandingan probabilitas</b><br>
                                    Probabilitas layak = <?php echo $jumlaht2;?><br>
                                    Probabilitas tdk layak = <?php echo $jumlaht1;?><br>
                                    <p>Dari Perhitungan diatas maka disimpulkan bahwa <?php echo $nama;?> <?php if($tampung[1]==1){echo "layak";}else{echo "tidaklayak";}?> untuk mendapat bantuan pkh</p>

                                 </div>
                             </div>


                        </div>
                    </div>


                </div>
            </div><!-- .animated -->
        </div><!-- .content -->



        <!-- Footer -->
        <footer class="site-footer" style="margin-top: 300px;">
            <div class="footer-inner bg-white">
                <div class="row">
                    <div class="col-sm-6">
                        Copyright &copy; 2020 Riki Antoni
                    </div>
                    <div class="col-sm-6 text-right">
                        Supported by <a href="https://colorlib.com">Colorlib</a>
                    </div>
                </div>
            </div>
        </footer>
        <!-- /.site-footer -->
    </div>
    <!-- /#right-panel -->

    <!-- Scripts -->
    <script src="https://cdn.jsdelivr.net/npm/jquery@2.2.4/dist/jquery.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.14.4/dist/umd/popper.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.1.3/dist/js/bootstrap.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/jquery-match-height@0.7.2/dist/jquery.matchHeight.min.js"></script>
    <script src="../assets/js/main.js"></script>

    <!--  Chart js -->
    <script src="https://cdn.jsdelivr.net/npm/chart.js@2.7.3/dist/Chart.bundle.min.js"></script>

    <!--Chartist Chart-->
    <script src="https://cdn.jsdelivr.net/npm/chartist@0.11.0/dist/chartist.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/chartist-plugin-legend@0.6.2/chartist-plugin-legend.min.js"></script>

    <script src="https://cdn.jsdelivr.net/npm/jquery.flot@0.8.3/jquery.flot.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/flot-pie@1.0.0/src/jquery.flot.pie.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/flot-spline@0.0.1/js/jquery.flot.spline.min.js"></script>

    <script src="https://cdn.jsdelivr.net/npm/simpleweather@3.1.0/jquery.simpleWeather.min.js"></script>
    <script src="../assets/js/init/weather-init.js"></script>

    <script src="https://cdn.jsdelivr.net/npm/moment@2.22.2/moment.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/fullcalendar@3.9.0/dist/fullcalendar.min.js"></script>
    <script src="../assets/js/init/fullcalendar-init.js"></script>

    <!--Local Stuff-->
    <script>
        const openModalButtons = document.querySelectorAll('[data-modal-target]')
const closeModalButtons = document.querySelectorAll('[data-close-button]')
const overlay = document.getElementById('overlay')

openModalButtons.forEach(button => {
  button.addEventListener('click', () => {
    const modal = document.querySelector(button.dataset.modalTarget)
    openModal(modal)
  })
})

overlay.addEventListener('click', () => {
  const modals = document.querySelectorAll('.modalz.active')
  modals.forEach(modal => {
    closeModal(modal)
  })
})

closeModalButtons.forEach(button => {
  button.addEventListener('click', () => {
    const modal = button.closest('.modalz')
    closeModal(modal)
  })
})

function openModal(modal) {
  if (modal == null) return
  modal.classList.add('active')
  overlay.classList.add('active')
}

function closeModal(modal) {
  if (modal == null) return
  modal.classList.remove('active')
  overlay.classList.remove('active')
}

        jQuery(document).ready(function($) {
            "use strict";

            // Pie chart flotPie1
            var piedata = [
                { label: "Desktop visits", data: [[1,32]], color: '#5c6bc0'},
                { label: "Tab visits", data: [[1,33]], color: '#ef5350'},
                { label: "Mobile visits", data: [[1,35]], color: '#66bb6a'}
            ];

            $.plot('#flotPie1', piedata, {
                series: {
                    pie: {
                        show: true,
                        radius: 1,
                        innerRadius: 0.65,
                        label: {
                            show: true,
                            radius: 2/3,
                            threshold: 1
                        },
                        stroke: {
                            width: 0
                        }
                    }
                },
                grid: {
                    hoverable: true,
                    clickable: true
                }
            });
            // Pie chart flotPie1  End
            // cellPaiChart
            var cellPaiChart = [
                { label: "Direct Sell", data: [[1,65]], color: '#5b83de'},
                { label: "Channel Sell", data: [[1,35]], color: '#00bfa5'}
            ];
            $.plot('#cellPaiChart', cellPaiChart, {
                series: {
                    pie: {
                        show: true,
                        stroke: {
                            width: 0
                        }
                    }
                },
                legend: {
                    show: false
                },grid: {
                    hoverable: true,
                    clickable: true
                }

            });
            // cellPaiChart End
            // Line Chart  #flotLine5
            var newCust = [[0, 3], [1, 5], [2,4], [3, 7], [4, 9], [5, 3], [6, 6], [7, 4], [8, 10]];

            var plot = $.plot($('#flotLine5'),[{
                data: newCust,
                label: 'New Data Flow',
                color: '#fff'
            }],
            {
                series: {
                    lines: {
                        show: true,
                        lineColor: '#fff',
                        lineWidth: 2
                    },
                    points: {
                        show: true,
                        fill: true,
                        fillColor: "#ffffff",
                        symbol: "circle",
                        radius: 3
                    },
                    shadowSize: 0
                },
                points: {
                    show: true,
                },
                legend: {
                    show: false
                },
                grid: {
                    show: false
                }
            });
            // Line Chart  #flotLine5 End
            // Traffic Chart using chartist
            if ($('#traffic-chart').length) {
                var chart = new Chartist.Line('#traffic-chart', {
                  labels: ['Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun'],
                  series: [
                  [0, 18000, 35000,  25000,  22000,  0],
                  [0, 33000, 15000,  20000,  15000,  300],
                  [0, 15000, 28000,  15000,  30000,  5000]
                  ]
              }, {
                  low: 0,
                  showArea: true,
                  showLine: false,
                  showPoint: false,
                  fullWidth: true,
                  axisX: {
                    showGrid: true
                }
            });

                chart.on('draw', function(data) {
                    if(data.type === 'line' || data.type === 'area') {
                        data.element.animate({
                            d: {
                                begin: 2000 * data.index,
                                dur: 2000,
                                from: data.path.clone().scale(1, 0).translate(0, data.chartRect.height()).stringify(),
                                to: data.path.clone().stringify(),
                                easing: Chartist.Svg.Easing.easeOutQuint
                            }
                        });
                    }
                });
            }
            // Traffic Chart using chartist End
            //Traffic chart chart-js
            if ($('#TrafficChart').length) {
                var ctx = document.getElementById( "TrafficChart" );
                ctx.height = 150;
                var myChart = new Chart( ctx, {
                    type: 'line',
                    data: {
                        labels: [ "Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul" ],
                        datasets: [
                        {
                            label: "Visit",
                            borderColor: "rgba(4, 73, 203,.09)",
                            borderWidth: "1",
                            backgroundColor: "rgba(4, 73, 203,.5)",
                            data: [ 0, 2900, 5000, 3300, 6000, 3250, 0 ]
                        },
                        {
                            label: "Bounce",
                            borderColor: "rgba(245, 23, 66, 0.9)",
                            borderWidth: "1",
                            backgroundColor: "rgba(245, 23, 66,.5)",
                            pointHighlightStroke: "rgba(245, 23, 66,.5)",
                            data: [ 0, 4200, 4500, 1600, 4200, 1500, 4000 ]
                        },
                        {
                            label: "Targeted",
                            borderColor: "rgba(40, 169, 46, 0.9)",
                            borderWidth: "1",
                            backgroundColor: "rgba(40, 169, 46, .5)",
                            pointHighlightStroke: "rgba(40, 169, 46,.5)",
                            data: [1000, 5200, 3600, 2600, 4200, 5300, 0 ]
                        }
                        ]
                    },
                    options: {
                        responsive: true,
                        tooltips: {
                            mode: 'index',
                            intersect: false
                        },
                        hover: {
                            mode: 'nearest',
                            intersect: true
                        }

                    }
                } );
            }
            //Traffic chart chart-js  End
            // Bar Chart #flotBarChart
            $.plot("#flotBarChart", [{
                data: [[0, 18], [2, 8], [4, 5], [6, 13],[8,5], [10,7],[12,4], [14,6],[16,15], [18, 9],[20,17], [22,7],[24,4], [26,9],[28,11]],
                bars: {
                    show: true,
                    lineWidth: 0,
                    fillColor: '#ffffff8a'
                }
            }], {
                grid: {
                    show: false
                }
            });
            // Bar Chart #flotBarChart End
        });
    </script>
</body>
</html>
