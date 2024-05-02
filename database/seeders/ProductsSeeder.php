<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class ProductsSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        DB::table('products')->insert([
            [
            'name' => 'LG',
            'description' => 'Protection Corning Gorilla Glass 4. MISC Colors Space Black, Luxe White, Modern Beige, Ocean Blue, Opal Blue.',
            'photo' => 'https://i.ebayimg.com/00/s/NjQxWDQyNA==/z/VDoAAOSwgk1XF2oo/$_35.JPG?set_id=89040003C1',
            'price' => 39999.00
          ],
          [
            'name' => 'Product 1',
            'description' => 'Description for product 1',
            'photo' => 'https://upload.wikimedia.org/wikipedia/commons/thumb/e/e7/Handyaufnahme_des_Sonnenuntergangs_als_Zeitraffer_20200909_DSC3277.jpg/1280px-Handyaufnahme_des_Sonnenuntergangs_als_Zeitraffer_20200909_DSC3277.jpg',
            'price' => 10000.00
        ],
        [
            'name' => 'Product 2',
            'description' => 'Description for product 2',
            'photo' => 'https://upload.wikimedia.org/wikipedia/commons/thumb/1/17/Vivo_X60_Pro%2B_Orange.jpg/200px-Vivo_X60_Pro%2B_Orange.jpg',
            'price' => 20000.00
        ],
        [
            'name' => 'Product 3',
            'description' => 'Description for product 3',
            'photo' => 'https://upload.wikimedia.org/wikipedia/commons/thumb/c/c3/Huawei_Mate_40_RS.jpg/800px-Huawei_Mate_40_RS.jpg',
            'price' => 30000.00
        ],
        [
            'name' => 'Product 4',
            'description' => 'Description for product 4',
            'photo' => 'https://upload.wikimedia.org/wikipedia/commons/thumb/b/b3/OnePlus_9_Pro_Camera_Module_with_Hasselblad_logo.jpg/800px-OnePlus_9_Pro_Camera_Module_with_Hasselblad_logo.jpg',
            'price' => 40000.00
        ],
        [
            'name' => 'Product 5',
            'description' => 'Description for product 5',
            'photo' => 'https://oss.gadgetbytenepal.com/wp-content/uploads/2023/10/Google-Pixel-8-Pro-Bay.jpg',
            'price' => 50000.00
        ]]);
    }
}
