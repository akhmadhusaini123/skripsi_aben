<?php $this->load->view('layouts/header_admin'); ?>

<?php if($this->session->userdata('id_user_level') == '1'): ?>
<div class="mb-4">
    <!-- Page Heading -->
    <div class="d-sm-flex align-items-center justify-content-between mb-4">
        <h1 class="h3 mb-0 text-gray-800"><i class="fas fa-fw fa-home"></i> Dashboard</h1>
    </div>
	
    <!-- Content Row -->
    <div class="alert alert-success">
        <button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
        Selamat datang <span class="text-uppercase"><b><?= $this->session->username; ?>!</b></span> Anda bisa mengoperasikan sistem dengan wewenang tertentu melalui pilihan menu di bawah.
    </div>
    <div class="row">
		
		<div class="col-xl-4 col-md-6 mb-4">
            <div class="card border-left-info shadow h-100 py-2">
                <div class="card-body">
                    <div class="row no-gutters align-items-center">
                        <div class="col mr-2">
                            <div class="h5 mb-0 font-weight-bold text-gray-800"><a href="<?= base_url('Kriteria'); ?>" class="text-secondary text-decoration-none">Data Kriteria</a></div>
                        </div>
                        <div class="col-auto">
                            <i class="fas fa-cube fa-2x text-gray-300"></i>
                        </div>
                    </div>
                </div>
            </div>
        </div>
		
		<div class="col-xl-4 col-md-6 mb-4">
            <div class="card border-left-primary shadow h-100 py-2">
                <div class="card-body">
                    <div class="row no-gutters align-items-center">
                        <div class="col mr-2">
                            <div class="h5 mb-0 font-weight-bold text-gray-800"><a href="<?= base_url('Sub_Kriteria'); ?>" class="text-secondary text-decoration-none">Data Sub Kriteria</a></div>
                        </div>
                        <div class="col-auto">
                            <i class="fas fa-cubes fa-2x text-gray-300"></i>
                        </div>
                    </div>
                </div>
            </div>
        </div>
		
		<div class="col-xl-4 col-md-6 mb-4">
            <div class="card border-left-success shadow h-100 py-2">
                <div class="card-body">
                    <div class="row no-gutters align-items-center">
                        <div class="col mr-2">
                            <div class="h5 mb-0 font-weight-bold text-gray-800"><a href="<?= base_url('Alternatif'); ?>" class="text-secondary text-decoration-none">Data Alternatif</a></div>
                        </div>
                        <div class="col-auto">
                            <i class="fas fa-users fa-2x text-gray-300"></i>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="col-xl-4 col-md-6 mb-4">
            <div class="card border-left-secondary shadow h-100 py-2">
                <div class="card-body">
                    <div class="row no-gutters align-items-center">
                        <div class="col mr-2">
                            <div class="h5 mb-0 font-weight-bold text-gray-800"><a href="<?= base_url('Penilaian'); ?>" class="text-secondary text-decoration-none">Data Penilaian</a></div>
                        </div>
                        <div class="col-auto">
                            <i class="fas fa-edit fa-2x text-gray-300"></i>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="col-xl-4 col-md-6 mb-4">
            <div class="card border-left-warning shadow h-100 py-2">
                <div class="card-body">
                    <div class="row no-gutters align-items-center">
                        <div class="col mr-2">
                            <div class="h5 mb-0 font-weight-bold text-gray-800"><a href="<?= base_url('Perhitungan'); ?>" class="text-secondary text-decoration-none">Data Perhitungan</a></div>
                        </div>
                        <div class="col-auto">
                            <i class="fas fa-calculator fa-2x text-gray-300"></i>
                        </div>
                    </div>
                </div>
            </div>
        </div>
		
		<div class="col-xl-4 col-md-6 mb-4">
            <div class="card border-left-danger shadow h-100 py-2">
                <div class="card-body">
                    <div class="row no-gutters align-items-center">
                        <div class="col mr-2">
                            <div class="h5 mb-0 font-weight-bold text-gray-800"><a href="<?= base_url('Perhitungan/hasil'); ?>" class="text-secondary text-decoration-none">Data Hasil Akhir</a></div>
                        </div>
                        <div class="col-auto">
                            <i class="fas fa-chart-area fa-2x text-gray-300"></i>
                        </div>
                    </div>
                </div>
            </div>
        </div>

    </div>
</div>
<div class="card bg-light mb-3" style="max-width: 90rem;">
                        <div class="card-body text-justify">
                            <h5 class="card-title font-weight-bold">Panduan Penggunaan</h5>
                            <h6>1. Pada menu data kriteria, Administrator memilih menu data kriteria untuk mengelola kriteria yang digunakan untuk menentukan pemilihan bibit varietas unggul jagung.</h6>
							<h6>2. Pada menu  data sub kriteria, Administrator dapat memasukkan nilai subkriteria pada setiap kriteria yang telah dimasukkan.</h6>
							<h6>3. Pada menu data alternatif, Administrator dapat mengelola alternatif yaitu bibit varietas unggul jagung.</h6>
                            <h6>4. Pada menu data penilaian, Administrator dapat melalukan penilaian pada setiap alternatif bibit varietas ungul jagung untuk dilakukan perhitungan.</h6>
                            <h6>5. Pada menu data perhitungan, Administrator dapat melihat langkah-langkah perhitungan metode MOORA untuk mendapatkan nilai prefrensi terbaik dari data alternatif bibit varietas unggul jagung.</h6>
                            <h6>6. Pada menu data Hasil Akhir, Administrator dapat melihat hasil perangkingan bibit varietas unggul jagung berdasarkan nilai yang tertinggi hingga terendah.</h6>
                        </div>
                        </div>
<?php endif; ?>
<?php if($this->session->userdata('id_user_level') == '2'): ?>
<div class="mb-4">
    <!-- Page Heading -->
    <div class="d-sm-flex align-items-center justify-content-between mb-4">
        <h1 class="h3 mb-0 text-gray-800"><i class="fas fa-fw fa-home"></i> Dashboard</h1>
    </div>
	
    <!-- Content Row -->
    <div class="alert alert-success">
        <button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
        Selamat datang <span class="text-uppercase"><b><?= $this->session->username; ?>!</b></span> Anda bisa mengoperasikan sistem melalui pilihan menu di bawah.
    </div>
    <div class="row">
		
		<div class="col-xl-6 col-md-6 mb-4">
            <div class="card border-left-info shadow h-100 py-2">
                <div class="card-body">
                    <div class="row no-gutters align-items-center">
                        <div class="col mr-2">
                            <div class="h5 mb-0 font-weight-bold text-gray-800"><a href="<?= base_url('Kriteria'); ?>" class="text-secondary text-decoration-none">Data Kriteria</a></div>
                        </div>
                        <div class="col-auto">
                            <i class="fas fa-cube fa-2x text-gray-300"></i>
                        </div>
                    </div>
                </div>
            </div>
        </div>
		
		<!-- <div class="col-xl-6 col-md-6 mb-4">
            <div class="card border-left-primary shadow h-100 py-2">
                <div class="card-body">
                    <div class="row no-gutters align-items-center">
                        <div class="col mr-2">
                            <div class="h5 mb-0 font-weight-bold text-gray-800"><a href="<?= base_url('Sub_Kriteria'); ?>" class="text-secondary text-decoration-none">Data Sub Kriteria</a></div>
                        </div>
                        <div class="col-auto">
                            <i class="fas fa-cubes fa-2x text-gray-300"></i>
                        </div>
                    </div>
                </div>
            </div>
        </div> -->
		
		<div class="col-xl-6 col-md-6 mb-4">
            <div class="card border-left-success shadow h-100 py-2">
                <div class="card-body">
                    <div class="row no-gutters align-items-center">
                        <div class="col mr-2">
                            <div class="h5 mb-0 font-weight-bold text-gray-800"><a href="<?= base_url('Alternatif'); ?>" class="text-secondary text-decoration-none">Data Alternatif</a></div>
                        </div>
                        <div class="col-auto">
                            <i class="fas fa-users fa-2x text-gray-300"></i>
                        </div>
                    </div>
                </div>
            </div>
        </div>
		
        <div class="col-xl-6 col-md-6 mb-4">
            <div class="card border-left-primary shadow h-100 py-2">
                <div class="card-body">
                    <div class="row no-gutters align-items-center">
                        <div class="col mr-2">
                            <div class="h5 mb-0 font-weight-bold text-gray-800"><a href="<?= base_url('Perhitungan/hasil'); ?>" class="text-secondary text-decoration-none">Data Hasil Akhir</a></div>
                        </div>
                        <div class="col-auto">
                            <i class="fas fa-chart-area fa-2x text-gray-300"></i>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<div class="card bg-light mb-3" style="max-width: 90rem;">
                        <div class="card-body text-justify">
                            <h5 class="card-title font-weight-bold">Panduan Penggunaan</h5>
                            <h6>- Menu Data Kriteria berisi kriteria yang digunakan dalam menentukan bibit varietas unggul jagung terbaik.</h6>
							<h6>- Menu Data Alternaif berisi nama-nama bibit varietas unggul jagung.</h6>
							<h6>- Menu Data Hasil Akhir berisi rekomendasi bibit varietas unggul jagung terbaik</h6>
                        </div>
                        </div>
<?php endif; ?>

<?php $this->load->view('layouts/footer_admin'); ?>