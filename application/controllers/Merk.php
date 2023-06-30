<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Merk extends CI_Controller
{

	public function __construct()
	{
		parent::__construct();
		$this->load->model("merk_model");
	}

	public function index()
	{
		$data['title'] = "Data Merk";
		$data['merk'] = $this->merk_model->get_data('merk')->result();
		$this->load->view('template/head', $data);
		$this->load->view('template/side', $data);
		$this->load->view('merk', $data);
		$this->load->view('template/foot');
	}
	public function tambah()
	{
		$data['title'] = "Tambah Merk";

		$this->load->view('template/head', $data);
		$this->load->view('template/side', $data);
		$this->load->view('tambah_merk');
		$this->load->view('template/foot');
	}
	public function tambah_aksi()
	{
		$this->load->library('form_validation');
		$this->form_validation->set_rules('nama', 'Nama', 'required');
		$this->form_validation->set_rules('prdk', 'Produk', 'required|is_unique[merk.produk]', array('required' => 'Kolom {field} harus diisi.', 'is_unique' => 'Data {field} sudah ada. Masukan data dengan benar'));

		if ($this->form_validation->run() == FALSE) {
			// Jika validasi gagal, kembali ke halaman tambah dengan menampilkan pesan error
			$this->tambah();
		} else {
			$data = array(
				'nama' => $this->input->post('nama'),
				'produk' => $this->input->post('prdk'),
			);
			$this->merk_model->insert_data($data, 'merk');
			redirect('merk');
		}
	}

	public function delete($id)
	{
		$where = array('id' => $id);
		$this->merk_model->delete_data($where, 'merk');
		redirect('merk');
	}
}