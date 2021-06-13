<?php

namespace App\Database\Seeds;

use CodeIgniter\I18n\Time; //untuk date time

use CodeIgniter\Database\Seeder;

class OrangSeeder extends Seeder
{
    public function run()
    {
        $data = [
            [
                'nama'          => 'rivaldo ismir',
                'alamat'        => 'jl. aaa bbb 123',
                'created_at'    => Time::now(),
                'updated_at'    => Time::now()
            ],
            [
                'nama'          => 'dino',
                'alamat'        => 'jl. asasaaa bbb 123',
                'created_at'    => Time::now(),
                'updated_at'    => Time::now()
            ],
            [
                'nama'          => 'erttt',
                'alamat'        => 'sasa bbb 123',
                'created_at'    => Time::now(),
                'updated_at'    => Time::now()
            ]
        ];

        // Simple Queries
        // $this->db->query("INSERT INTO orang (nama, alamat, created_at, updated_at) VALUES(:nama:, :alamat: , :created_at: , :updated_at:)", $data);

        // Using Query Builder
        // $this->db->table('orang')->insert($data);
        $this->db->table('orang')->insertBatch($data);
    }
}


// running seeder
    // php spark db:seed OrangSeeder