<?php $this->load->view('layouts/header_admin'); ?>

<div class="d-sm-flex align-items-center justify-content-between mb-4">
    <h1 class="h3 mb-0 text-gray-800"><i class="fas fa-fw fa-users"></i> Data Alternatif</h1>
	
	<?php if ($this->session->userdata('id_user_level') == "1") {?>
    <a href="<?= base_url('Alternatif/create'); ?>" class="btn btn-success"> <i class="fa fa-plus"></i> Tambah Data </a>
	<?php } ?>
</div>

<?= $this->session->flashdata('message'); ?>

<div class="card shadow mb-4">
    <!-- /.card-header -->
    <div class="card-header py-3">
        <h6 class="m-0 font-weight-bold text-info"><i class="fa fa-table"></i> Daftar Data Alternatif</h6>
    </div>

    <div class="card-body">
		<div class="table-responsive">
			<table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
				<thead class="bg-info text-white">
					<tr align="center">
						<th width="5%">No</th>
						<th>Nama Bibit Varietas Unggul Jagung (Alternatif)</th>
						<th>Jenis Varietas</th>
						<?php if ($this->session->userdata('id_user_level') == "1") {?>
						<th width="15%">Aksi</th>
						<?php } ?>
					</tr>
				</thead>
				<tbody>
					<?php
						$no=1;
						foreach ($list as $data => $value) {
					?>
					<tr align="center">
						<td><?=$no ?></td>
						<td align="left"><?php echo $value->nama ?></td>
						<td align="center"><?php echo $value->jenis ?></td>
						<?php if ($this->session->userdata('id_user_level') == "1") {?>
						<td>
							<div class="btn-group" role="group">
								<a data-toggle="tooltip" data-placement="bottom" title="Edit Data" href="<?=base_url('Alternatif/edit/'.$value->id_alternatif)?>" class="btn btn-warning btn-sm"><i class="fa fa-edit"></i></a>
								<a  data-toggle="tooltip" data-placement="bottom" title="Hapus Data" href="<?=base_url('Alternatif/destroy/'.$value->id_alternatif)?>" onclick="return confirm ('Apakah anda yakin untuk meghapus data ini')" class="btn btn-danger btn-sm"><i class="fa fa-trash"></i></a>
							</div>
						</td>
						<?php } ?>
					</tr>
					<?php
						$no++;
						}
					?>
				</tbody>
			</table>
		</div>
	</div>
</div>

<?php $this->load->view('layouts/footer_admin'); ?>