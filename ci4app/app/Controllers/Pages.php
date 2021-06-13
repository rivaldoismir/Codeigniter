<?php

namespace App\Controllers;

class Pages extends BaseController
{
	public function index()
	{

		$data = [
			'title' => 'Home | Web Programming Unpas',
			'tes' => ['satu', 'dua', 'tiga']
		];
		return view('pages/home', $data);
	}

	public function about()
	{
		$data = [
			'title' => 'About Me'
		];
		return view('pages/about', $data);
	}

	public function contact()
	{
		$data = [
			'title' => 'Contact Us',
			'alamat' => [
				[
					'tipe' => 'Rumah',
					'alamat' => 'Jl. abc No . 123',
					'kota' => 'Semarang'
				],
				[
					'tipe' => 'Kantor',
					'alamat' => 'Jl. Raya Masehi no. 22',
					'kota' => 'Jakarta'
				]

			]
		];
		return view('pages/contact', $data);
	}
}
