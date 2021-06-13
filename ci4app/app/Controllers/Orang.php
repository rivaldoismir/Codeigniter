<?php

namespace App\Controllers;

use App\Models\OrangModel;

class Orang extends BaseController
{
    // Properti
    protected $orangModel;

    // Initialisasi OrangModel
    public function __construct()
    {
        $this->orangModel = new OrangModel();
    }

    public function index()
    {
        $keyword = $this->request->getVar('keyword');
        if ($keyword) {
            $orang = $this->orangModel->search($keyword);
        } else {
            $orang = $this->orangModel;
        }

        $currentPage = $this->request->getVar('page_orang') ? $this->request->getVar('page_orang') : 1;
        $jmlIsi = 5;
        $data = [
            'title' => 'Daftar Orang',
            // 'orang' => $this->orangModel->findAll()
            'orang' => $orang->paginate($jmlIsi, 'orang'),
            'pager' => $orang->pager,
            'currentPage' => $currentPage,
            'jmlIsi' => $jmlIsi

        ];

        return view('orang/index', $data);
    }
}
