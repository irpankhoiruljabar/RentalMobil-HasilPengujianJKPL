<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Login extends CI_Controller
{

	public function index()
	{

		$this->load->view('login');
	}

	public function masuk()
	{

		$this->load->model("login_model", "user");
		$_username = $this->input->post('username');
		$_password = $this->input->post('password');

		$row = $this->user->login($_username, $_password);
		if (isset($row)) {
			redirect('dashbord');
		} else {
			redirect('login');
		}
	}
	public function lupa_password()
	{
		$this->load->view('lupa_password');
	}

	public function reset_password()
	{
		$email = $this->input->post('email');

		// Memuat model Login_model
		$this->load->model("login_model", "user");

		// Memanggil metode getUserByEmail() dari model
		$user = $this->user->getUserByEmail($email);

		if ($user) {
			// Tampilkan formulir untuk pengguna mengubah password
			$data['email'] = $email;
			$this->load->view('ubah_password', $data);
		} else {
			// Jika alamat email tidak ditemukan, tampilkan pesan error atau arahkan ke halaman lain
			redirect('login/lupa_password');
		}
	}

	public function simpan_password()
	{
		$email = $this->input->post('email');
		$password = $this->input->post('password');
		$confirm_password = $this->input->post('confirm_password');

		// Memuat model Login_model
		$this->load->model("login_model", "user");

		// Memanggil metode updatePasswordByEmail() dari model
		$result = $this->user->updatePasswordByEmail($email, $password);

		if ($result) {
			// Tampilkan pesan sukses atau arahkan ke halaman lain
			redirect('login');
		} else {
			// Jika terjadi kesalahan, tampilkan pesan error atau arahkan ke halaman lain
			redirect('login/lupa_password');
		}
	}
}