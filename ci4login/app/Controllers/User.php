<?php

namespace App\Controllers;

class User extends BaseController
{
    public function index()
    {
        $data['title'] = 'Dashboard';
        return view('user/index', $data);
    }

    public function profile()
    {
        $data['title'] = 'User Detail';
        return view('user/profile', $data);
    }


    // Oke
}
