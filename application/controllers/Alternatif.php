<?php
    
    defined('BASEPATH') OR exit('No direct script access allowed');
    
    class Alternatif extends CI_Controller {
    
        public function __construct()
        {
            parent::__construct();
            $this->load->library('pagination');
            $this->load->library('form_validation');
            $this->load->model('Alternatif_model');
        }

        public function index()
        {
			$data = [
                'page' => "Alternatif",
				'list' => $this->Alternatif_model->tampil(),
                
            ];
            $this->load->view('alternatif/index', $data);
        }
        
        //menampilkan view create
        public function create()
        {
            if ($this->session->userdata('id_user_level') != "1") {
            ?>
				<script type="text/javascript">
                    alert('Anda tidak berhak mengakses halaman ini!');
                    window.location='<?php echo base_url("Login/home"); ?>'
                </script>
            <?php
			}
			
			$data['page'] = "Alternatif";
            $this->load->view('alternatif/create',$data);
        }

        //menambahkan data ke database
        public function store()
        {
			if ($this->session->userdata('id_user_level') != "1") {
            ?>
				<script type="text/javascript">
                    alert('Anda tidak berhak mengakses halaman ini!');
                    window.location='<?php echo base_url("Login/home"); ?>'
                </script>
            <?php
			}
			$data = [
				'nama' => $this->input->post('nama'),
				'jenis' => $this->input->post('jenis')
			];
			
			$this->form_validation->set_rules('nama', 'Nama', 'required');               

			if ($this->form_validation->run() != false) {
				$result = $this->Alternatif_model->insert($data);
				if ($result) {
					$this->session->set_flashdata('message', '<div class="alert alert-success" role="alert"> Data berhasil disimpan silahkan input penilaian dari alternatif yang telah ditambahkan dengan memilih input pada aksi</div>');
					redirect('Penilaian');
				}
			} else {
				$this->session->set_flashdata('message', '<div class="alert alert-danger" role="alert">Data gagal disimpan!</div>');
				redirect('alternatif/create');
				
			}
        }

        public function edit($id_alternatif)
        {
            if ($this->session->userdata('id_user_level') != "1") {
            ?>
				<script type="text/javascript">
                    alert('Anda tidak berhak mengakses halaman ini!');
                    window.location='<?php echo base_url("Login/home"); ?>'
                </script>
            <?php
			}
			$alternatif = $this->Alternatif_model->show($id_alternatif);
            $data = [
                'page' => "Alternatif",
				'alternatif' => $alternatif
            ];
            $this->load->view('alternatif/edit', $data);
        }
    
        public function update($id_alternatif)
        {
            if ($this->session->userdata('id_user_level') != "1") {
            ?>
				<script type="text/javascript">
                    alert('Anda tidak berhak mengakses halaman ini!');
                    window.location='<?php echo base_url("Login/home"); ?>'
                </script>
            <?php
			}
			$id_alternatif = $this->input->post('id_alternatif');
            $data = array(
                'nama' => $this->input->post('nama'),
                'jenis' => $this->input->post('jenis')
            );

            $this->Alternatif_model->update($id_alternatif, $data);
			$this->session->set_flashdata('message', '<div class="alert alert-success" role="alert">Data berhasil diupdate!</div>');
            redirect('alternatif');
        }
    
        public function destroy($id_alternatif)
        {
            if ($this->session->userdata('id_user_level') != "1") {
            ?>
				<script type="text/javascript">
                    alert('Anda tidak berhak mengakses halaman ini!');
                    window.location='<?php echo base_url("Login/home"); ?>'
                </script>
            <?php
			}
			$this->Alternatif_model->delete($id_alternatif);
			$this->session->set_flashdata('message', '<div class="alert alert-success" role="alert">Data berhasil dihapus!</div>');
            redirect('alternatif');
        }
    
    }
    
    