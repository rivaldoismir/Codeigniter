<?php

namespace App\Controllers;

class Helpdesk extends BaseController
{
    public function index()
    {
        $data['title'] = 'My Profile';
        return view('helpdesk/index', $data);
    }
}
