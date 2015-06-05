<?php

class Students extends CI_Controller {

	//POST
	public function create_student() {
		$this->load->model('students_model');
		$student['name'] = $this->input->post('name');
		$student['password'] = $this->input->post('password');
		$student = $this->students_model->create($student);
		echo json_encode( $student );
	}

	//GET
	public function show($id) {
      $this->load->model('students_model');
      $students = $this->students_model->get($id);
      $data['name'] = $students['user_name'];
      $data['password'] = $students['password'];
      //$this->load->view('students', $data);
			echo json_encode( $data );
  }

	//GET
	public function show_all() {
      $this->load->model('students_model');
      $students = $this->students_model->get_all();
      $data = $students;
      //$this->load->view('students', $data);
			echo json_encode( $data );
  }

	//PUT
	//url = students/update_student/1
	//payload = student data
	public function update_student() {
		$this->load->model('students_model');
		$student['id'] = $this->input->post('id');
		$student['name'] = $this->input->post('name');
		$student['password'] = $this->input->post('password');
		$this->students_model->update($student);
		echo json_encode( $student );
	}

	//DELETE
	public function delete_student($id) {

	}

}
