<?php $this->load->view('layouts/header_admin'); ?>

<div class="d-sm-flex align-items-center justify-content-between mb-4">
    <h1 class="h3 mb-0 text-gray-800"><i class="fas fa-fw fa-chart-area"></i> Data Hasil Akhir</h1>
	
	<a href="<?= base_url('Laporan/cetak_laporan_hasil'); ?>" class="btn btn-primary"> <i class="fa fa-print"></i> Cetak Data </a>
</div>


<div class="card shadow mb-4">
	<!-- /.card-header -->
	<div class="card-header py-3">
		<h6 class="m-0 font-weight-bold text-info"><i class="fa fa-table"></i> Hasil Akhir Perankingan</h6>
	</div>
<script>
	$(document).ready(function () {
    $('#dataTable').DataTable({
        order: [[3, 'asc']],
    });
});
</script>
	<div class="card-body">
		<div class="table-responsive">
			<table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
				<thead class="bg-info text-white">
					<tr align="center">
						<th width="15%">Rank</th>
						<th>Nama Bibit Varietas Unggul Jagung (Alternatif)</th>
						<th>Jenis</th>
						<th>Nilai Yi</th>
					</tr>
				</thead>
				<tbody>
					<?php
						$no=1;
						foreach ($hasil_moora as $keys): ?>
					<tr align="center">
						<td><?= $no; ?></td>
						<td align="left">
							<?php
							$nama_alternatif = $this->Perhitungan_model->get_hasil_alternatif($keys->id_alternatif);
							echo $nama_alternatif['nama'];
							?>
						
						</td>
						<td><?= $nama_alternatif['jenis']; ?></td>
						<td><?= $keys->nilai ?></td>
					</tr>
					<?php
						$no++;
						endforeach ?>
				</tbody>
			</table>
		</div>
	</div>
</div>
<?php
$conn = mysqli_connect("localhost", "root", "", "spk_moora_ci"); 
$result=mysqli_query($conn,'SELECT alternatif.nama FROM alternatif inner join hasil_moora on hasil_moora.id_alternatif=alternatif.id_alternatif ORDER BY hasil_moora.nilai DESC limit 5;');
?>

<div class="card bg-light mb-3" style="max-width: 90rem;">
                        <div class="card-body text-justify">
                            
                            <h6>Berdasarkan Hasil SPK menggunakan metode MOORA dihasilkan rekomendasi alternatif bibit varietas unggul jagung terbaik yaitu : </h6>
							<?php $i=1;
							while($row = mysqli_fetch_row($result)){
								echo 'Alternatif tertinggi ke - ' . $i . ' adalah '. $row[0] . '<br>';
								$i++;
							}
							?>	
						</div>
                        </div>


<?php
$this->load->view('layouts/footer_admin');
?>