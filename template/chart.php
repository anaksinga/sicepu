<?php


// COUNT RREKOMENDASI NIKAH
//$iumk_bl = $koneksi->query("SELECT COUNT(*) AS jml FROM iumk WHERE status = 'Belum Diproses'")->fetch_array();
//$iumk_dp = $koneksi->query("SELECT COUNT(*) AS jml FROM iumk WHERE status = 'Diproses'")->fetch_array();
//$iumk_s  = $koneksi->query("SELECT COUNT(*) AS jml FROM iumk WHERE status = 'Selesai'")->fetch_array();

// COUNT SURAT PENGANTAR
$ahliwaris_vk = $koneksi->query("SELECT COUNT(*) AS jml FROM ahli_waris WHERE status = 'verifikasi_berkas_kecamatan'")->fetch_array();
$ahliwaris_vd = $koneksi->query("SELECT COUNT(*) AS jml FROM ahli_waris WHERE status = 'verifikasi_disdukcapil'")->fetch_array();
$ahliwaris_bkl  = $koneksi->query("SELECT COUNT(*) AS jml FROM ahli_waris WHERE status = 'berkas_kurang_lengkap'")->fetch_array();
$ahliwaris_bl  = $koneksi->query("SELECT COUNT(*) AS jml FROM ahli_waris WHERE status = 'verifikasi_kecamatan'")->fetch_array();
$ahliwaris_s  = $koneksi->query("SELECT COUNT(*) AS jml FROM ahli_waris WHERE status = 'selesai'")->fetch_array();



?>

<script>
   

    //--------------------------------------------------------------------------------------------------------------------
    //- PIE CHART - IUMK
    //var IumkChartCanvas = $('#iumk').get(0).getContext('2d')
    //var IumkData = {
    //    labels: [
   //        // 'Belum Diproses',
  //          'Diproses',
 //           'Selesai',
 //       ],
//        datasets: [{
//            data: [
//    
 //              
 //           ],
 //           backgroundColor: ['#00c0ef', '#00a65a'],
 ///       }]
 //   }
  //  var IumkOptions = {
     //   maintainAspectRatio: false,
    //    responsive: true,
 //   }
    //Create pie or douhnut chart
    // You can switch between pie and douhnut using the method below.
 //   var IumkChart = new Chart(IumkChartCanvas, {
  //      type: 'pie',
 //       data: IumkData,
  //     options: IumkOptions
 //   })
    //-------------------------------------------------------------------------------------------------------------------


    //-------------------------------------------------------------------------------------------------------------------
    //- DONUT CHART - SURAT PENGANTAR
   var AhliWarisChartCanvas = $('#ahliwaris').get(0).getContext('2d')
    var AhliWarisData = {
        labels: [
            'verifikasi_berkas_kecamatan',
            'verifikasi_disdukcapil',
            'berkas_kurang_lengkap',
            'verifikasi_kecamatan',
            'selesai'
        ],
        datasets: [{
            data: [
                <?= $ahliwaris_vk['jml'] ?>,
                <?= $ahliwaris_vd['jml'] ?>,
                <?= $ahliwaris_bkl['jml'] ?>,
                <?= $ahliwaris_bl['jml'] ?>,
                <?= $ahliwaris_s['jml'] ?>
            ],
            backgroundColor: ['#f56954', '#00c0ef', '#00a65a','#7FFF00','#8A2BE2'],
        }]
    }
    var AhliWarisOptions = {
        maintainAspectRatio: false,
        responsive: true,
    }
    //Create pie or douhnut chart
    // You can switch between pie and douhnut using the method below.
    var AhliWarisChart = new Chart(AhliWarisChartCanvas, {
        type: 'doughnut',
        data: AhliWarisData,
        options: AhliWarisOptions
    })
    //-------------------------------------------------------------------------------------------------------------------



    



    var areaChartData = {
        labels: ['Januari', 'Februari', 'Maret', 'April', 'Mei', 'Juni', 'Juli'],
        datasets: [{
                label: 'Digital Goods',
                backgroundColor: 'rgba(60,141,188,0.9)',
                borderColor: 'rgba(60,141,188,0.8)',
                pointRadius: false,
                pointColor: '#3b8bba',
                pointStrokeColor: 'rgba(60,141,188,1)',
                pointHighlightFill: '#fff',
                pointHighlightStroke: 'rgba(60,141,188,1)',
                data: [28, 48, 40, 19, 86, 27, 90]
            },
            {
                label: 'Electronics',
                backgroundColor: 'rgba(210, 214, 222, 1)',
                borderColor: 'rgba(210, 214, 222, 1)',
                pointRadius: false,
                pointColor: 'rgba(210, 214, 222, 1)',
                pointStrokeColor: '#c1c7d1',
                pointHighlightFill: '#fff',
                pointHighlightStroke: 'rgba(220,220,220,1)',
                data: [65, 59, 80, 81, 56, 55, 40]
            },
        ]
    }

    var areaChartOptions = {
        maintainAspectRatio: false,
        responsive: true,
        legend: {
            display: false
        },
        scales: {
            xAxes: [{
                gridLines: {
                    display: false,
                }
            }],
            yAxes: [{
                gridLines: {
                    display: false,
                }
            }]
        }
    }


    //-------------
    //- BAR CHART -
    //-------------
    var barChartCanvas = $('#barChart').get(0).getContext('2d')
    var barChartData = jQuery.extend(true, {}, areaChartData)
    var temp0 = areaChartData.datasets[0]
    var temp1 = areaChartData.datasets[1]
    barChartData.datasets[0] = temp1
    barChartData.datasets[1] = temp0

    var barChartOptions = {
        responsive: true,
        maintainAspectRatio: false,
        datasetFill: false
    }

    var barChart = new Chart(barChartCanvas, {
        type: 'bar',
        data: barChartData,
        options: barChartOptions
    })
</script>