<?php

namespace App\Controllers;

class User extends BaseController
{
    protected $db, $builder;
    public function __construct()
    {
        $this->db      = \Config\Database::connect();
        $this->builder = $this->db->table('users');
    }

    public function index()
    {
        $data['title'] = 'My Profile';
        $id = user()->id;

        $this->builder->select('users.id as userid, username, email, fullname, password_hash, user_image, name as rolename');
        $this->builder->join('auth_groups_users', 'auth_groups_users.user_id = users.id');
        $this->builder->join('auth_groups', 'auth_groups.id = auth_groups_users.group_id');
        $this->builder->where('users.id', $id);
        $query = $this->builder->get();
        $data['user'] = $query->getRow();

        return view('user/index', $data);
    }

    public function update($id)
    {
        // cek data 
        // dd($this->request->getVar());
    }
}
