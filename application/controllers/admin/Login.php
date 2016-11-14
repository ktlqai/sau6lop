<?php
Class Login extends MY_controller{

    function index()
    {
        $this->load->library('form_validation');
        $this->load->helper('form');
        if($this->input->post())
        {
            $this->form_validation->set_rules('login' ,'login', 'callback_check_login');
            if($this->form_validation->run())
            {
                $this->session->set_userdata('login', true);

                // phan nay la tui tu them , de luu id cua admin vao session
                $username = $this->input->post('username');

                $this->load->model('admin_model');

                $input = array('where' => array('username' => $username));
                
                $info = $this->admin_model->get_row($input);

                //$query = $this->db->query('SELECT * FROM admin WHERE username = \'' . $username . '\'');//$this->db->get_where('admin', array('username', $username));

                //$this->db->select('id');
                //$query = $this->db->get_where('admin', array('username' => $username));

				//$info = $query->row();

                //echo var_dump($info->id); die();

                $this->session->set_userdata('admin_id', $info->id);
                ///////////////////////

                redirect(admin_url('home'));
            }
        }

        $this->load->view('admin/login/index');
    }

    /*
     * Kiem tra username va password co chinh xac khong
     */
    function check_login()
    {
        $username = $this->input->post('username');
        $password = $this->input->post('password');
        $password = md5($password);

        $this->load->model('admin_model');
        $where = array('username' => $username , 'password' => $password);
        if($this->admin_model->check_exists($where))
        {
            return true;
        }
        $this->form_validation->set_message(__FUNCTION__, 'Không đăng nhập thành công');
        return false;
    }
}
