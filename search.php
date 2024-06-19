<?php
	if(ISSET($_POST['search'])){
		$keyword = $_POST['keyword'];
?>
<div>
	<h2>Result</h2>
	<hr style="border-top:2px dotted #ccc;"/>
	<?php
		
        include_once "../../config/config.php";
        include_once "../../config/bulan.php";
        // include_once "../../config/auth-mas.php";
        include_once "../../template/ui/head.php";
        
        // $idm      = $_SESSION['id_masyarakat'];
        // $data_mas = $koneksi->query("SELECT * FROM masyarakat WHERE id_masyarakat = '$idm'")->fetch_array();
        
		$query = mysqli_query($koneksi, "SELECT * FROM `ahli_waris` WHERE `id_ahli_waris` LIKE '%$keyword%' ORDER BY `id_ahli_waris`") or die(mysqli_error());
		while($fetch = mysqli_fetch_array($query)){
	?>
	<div style="word-wrap:break-word;">
		<a href="ahli-waris.php?id=<?php echo $fetch['blog_id']?>"><h4><?php echo $fetch['title']?></h4></a>
		<p><?php echo substr($fetch['content'], 0, 100)?>...</p>
	</div>
	<hr style="border-bottom:1px solid #ccc;"/>
	<?php
		}
	?>
</div>
<?php
	}
?>