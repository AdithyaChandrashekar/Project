<?php

class Students_Model extends CI_Model {
  public function __construct()	{
    $this->load->database();
  }

  public function create($student){
    $data = array(
      'user_name' => $student['name'] ,
      'password' => $student['password']
    );
    $this->db->insert('students', $data);
    $student['id'] =$this->db->insert_id();
    return $student;
  }

  public function get($id) {
    if($id != FALSE) {
      $query = $this->db->get_where('students', array('id' => $id));
      return $query->row_array();
    }
    else {
      return FALSE;
    }
  }

  public function get_all() {
      $this->db->select('id, user_name');
      $query = $this->db->get('students');
      return $query->result();
  }

  public function update($student){
    $data['user_name'] = $student['name'];
    $data['password'] = $student['password'];
    $this->db->where('id', $student['id']);
    $this->db->update('students', $data);
    return $student;
  }

  public function delete($id) {
    $this->db->delete('students', array('id' => $id));
  }
}
