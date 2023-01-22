<?php $this->load->view('layouts/header_admin'); ?>

<div class="d-sm-flex align-items-center justify-content-between mb-4">
    <h1 class="h3 mb-0 text-gray-800"><i class="fas fa-fw fa-cube"></i> Data Kriteria</h1>

    <?php if ($this->session->userdata('id_user_level') == "1") {?>
	<a href="<?= base_url('Kriteria/create'); ?>" class="btn btn-success"> <i class="fa fa-plus"></i> Tambah Data </a>
	<?php } ?>

</div>

<?= $this->session->flashdata('message'); ?>

<div class="card shadow mb-4">
    <!-- /.card-header -->
    <div class="card-header py-3">
        <h6 class="m-0 font-weight-bold text-info"><i class="fa fa-table"></i> Daftar Data Kriteria</h6>
    </div>
	<?php if ($this->session->userdata('id_user_level') == "1") {?>
    <div class="card-body">
	<a href="<?= base_url('Kriteria'); ?>" class="btn btn-primary mb-2"><span class="icon text-white-50"></span>
		<span class="text">Normalisasi Bobot</span>
	</a>
	<?php } ?>
		<div class="table-responsive">
			<table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
				<thead class="bg-info text-white">
					<tr align="center">
						<th width="5%">No</th>
						<?php if ($this->session->userdata('id_user_level') == "1") {?>
						<th>Kode Kriteria</th>
						<?php } ?>
						<th>Nama Kriteria</th>
						<?php if ($this->session->userdata('id_user_level') == "1") {?>
						<th>Bobot</th>
						<?php } ?>
						<?php if ($this->session->userdata('id_user_level') == "1") {?>
						<th>Jenis Kriteria</th>
						<?php } ?>
						<?php if ($this->session->userdata('id_user_level') == "1") {?>
						<th width="15%">Aksi</th>
						<?php } ?>
					</tr>
				</thead>
				<tbody>
					<?php
						$no=1;
						$total_bobot = 0;
						foreach ($list as $data => $value) {
							
							$total_bobot += $value->bobot;
							
					?>
					<tr align="center">
						<td><?=$no ?></td>
						<?php if ($this->session->userdata('id_user_level') == "1") {?>
						<td><?php echo $value->kode_kriteria ?></td>
						<?php } ?>
						<td><?php echo $value->keterangan ?></td>
						<?php if ($this->session->userdata('id_user_level') == "1") {?>
						<td><?php echo $value->bobot ?></td>
						<?php } ?>
						<?php if ($this->session->userdata('id_user_level') == "1") {?>
						<td><?php echo $value->jenis ?></td>
						<?php } ?>
						<?php if ($this->session->userdata('id_user_level') == "1") {?>
						<td>
							<div class="btn-group" role="group">
								<a data-toggle="tooltip" data-placement="bottom" title="Edit Data" href="<?=base_url('Kriteria/edit/'.$value->id_kriteria)?>" class="btn btn-warning btn-sm"><i class="fa fa-edit"></i></a>
								<a  data-toggle="tooltip" data-placement="bottom" title="Hapus Data" href="<?=base_url('Kriteria/destroy/'.$value->id_kriteria)?>" onclick="return confirm ('Apakah anda yakin untuk meghapus data ini')" class="btn btn-danger btn-sm"><i class="fa fa-trash"></i></a>
							</div>
						</td>
						<?php } ?>
					</tr>
					
				</tbody>
				<?php
						$no++;

						}
						$total = 0;
						$total_bobot;

						$conn = mysqli_connect("localhost", "root", "", "spk_moora_ci");

						foreach ($list as $data => $value) {
							$masing2 = ($value->bobot)/$total_bobot;
							$sql = "UPDATE kriteria set bobot = ".$masing2." where id_kriteria = ".$value->id_kriteria;
							if (mysqli_query($conn, $sql)) {
								// echo "Record updated successfully";
							  } else {
								// echo "Error updating record: " . mysqli_error($conn);
							  }
							// echo $masing2."<br>";
							$total += $masing2;
						}
						// echo $total;
					?>
			</table>
			
		</div>
		
	</div>
</div>

	<?php if ($this->session->userdata('id_user_level') == "1") {?>
		<div class="card bg-light mb-3" style="max-width: 90rem;">
                        <div class="card-body text-justify">
                            <h5 class="card-title font-weight-bold">Panduan Penggunaan</h5>
                            <h6>- Nama Kriteria adalah nama kriteria yang akan dipakai dalam pemilihan bibit varietas unggul jagung</h6>
							<h6>- Bobot adalah bobot dari kriteria yang disarankan diisi dengan nilai 0.01 - 0.99 oleh admin dengan total bobot adalah 1 </h6>
							<h6>- Jenis keriteria tebagi menjadi 2 jenis yaitu : </h6>
							<h6>- benefit : semakin besar nilainya maka akan semakin baik</h6>
							<h6>- cost : semakin kecil nilainya maka akan semakin baik</h6></h6>
							<br>
							<h6>1. Pada halaman data kriteria, Administrator dapat memilih tombol tambah data untuk menambah kriteria bibit varietas unggul jagung.</h6></h6>
							<h6>2. Pada halaman data kriteria, Administrator dapat memilih tombol edit dan hapus data yang ada pada kolom aksi untuk mengubah data kriteria dan menghapus data kriteria bibit varietas unggul jagung.</h6></h6>
							<h6>3. Setelah menambah, mengubah atau menghapus data kriteria, administrator dapat memilih tombol normalisasi agar total keseluruhan bobot menjadi 1.</h6></h6>
						</div>
                        </div>
						<?php } ?>
						
<?php $this->load->view('layouts/footer_admin'); ?>