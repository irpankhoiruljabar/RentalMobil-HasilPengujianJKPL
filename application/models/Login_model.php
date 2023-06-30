<?php
class Login_model extends CI_Model
{

	public function login($uname, $pass)
	{
		$sql = "SELECT * FROM users WHERE username=? and password=?";
		$data = [$uname, $pass];
		$query = $this->db->query($sql, $data);
		return $query->row();
	}
	public function getUserByEmail($email)
	{
		// Query untuk mendapatkan data pengguna berdasarkan alamat email
		$query = $this->db->get_where('users', array('email' => $email));

		// Mengembalikan baris hasil query
		return $query->row();
	}

	public function updatePasswordByEmail($email, $password)
	{
		// Update password pengguna di database
		$data = array('password' => $password);
		$this->db->where('email', $email);
		$this->db->update('users', $data);

		// Mengembalikan status berhasil atau tidaknya update
		return $this->db->affected_rows() > 0;
	}
}