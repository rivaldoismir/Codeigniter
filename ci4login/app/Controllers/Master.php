<?php

namespace App\Controllers;

class Master extends BaseController
{
    protected $db, $builder;
    public function __construct()
    {
        $this->db      = \Config\Database::connect();
        $this->builder = $this->db->table('users');
    }

    public function index()
    {
        $data['title'] = 'User List';
        // $users = new \Myth\Auth\Models\UserModel();
        // $data['users'] = $users->findAll();

        // querybuilder
        $this->builder->select('users.id as userid, username, email, name as rolename');
        $this->builder->join('auth_groups_users', 'auth_groups_users.user_id = users.id');
        $this->builder->join('auth_groups', 'auth_groups.id = auth_groups_users.group_id');
        $query = $this->builder->get();

        $data['users'] = $query->getResult();

        return view('master/index', $data);
    }
    public function detail($id = 0)
    {
        $data['title'] = 'User Detail';
        $this->builder->select('users.id as userid, username, email, fullname, user_image, name as rolename');
        $this->builder->join('auth_groups_users', 'auth_groups_users.user_id = users.id');
        $this->builder->join('auth_groups', 'auth_groups.id = auth_groups_users.group_id');
        $this->builder->where('users.id', $id);
        $query = $this->builder->get();

        $data['user'] = $query->getRow();

        // kalo data kosong
        if (empty($data['user'])) {
            return redirect()->to('/master');
        }

        return view('master/detail', $data);
    }
}
