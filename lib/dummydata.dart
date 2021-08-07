import 'package:flutter/material.dart';
import 'package:flutter_appproduct/product.dart';

import './category.dart';


const DUMMY_CATEGORIES = const [
  const category(

    id: 'c1',
    title: 'Planners',
    color: const Color(0xFFE5C1CD),
  ),
  category(
    id: 'c2',
    title: 'Accessories',
    color: const Color(0xFFC988C8),
  ),
  category(
    id: 'c3',
    title: 'Apparels',
    color: const Color(0xFFAAC9CE),
  ),
  category(
    id: 'c4',
    title: 'Notepads',
    color: const Color(0xFFF3D8CF),
  ),
  category(
    id: 'c5',
    title: 'Full BTS Merch',
    color: const Color(0xFFB684C2),
  ),

];
const DUMMY_PRODUCTS= const [
product(
  id: 'm1',
  categoryids: [
    'c1',

  ],
  title: 'CHEERS 2021 Planner',
  imageurl:
  'https://upload.wikimedia.org/wikipedia/commons/thumb/b/b6/Gutenberg_Bible%2C_Lenox_Copy%2C_New_York_Public_Library%2C_2009._Pic_01.jpg/1280px-Gutenberg_Bible%2C_Lenox_Copy%2C_New_York_Public_Library%2C_2009._Pic_01.jpg',
cost: 599,
  specs: [
    'Lorem ipsum dolor sit amet, consectetur adipiscing elit, ',
    'Lorem ipsum dolor sit amet, consectetur adipiscing elit, ',
    'Lorem ipsum dolor sit amet, consectetur adipiscing elit, ',
    'Lorem ipsum dolor sit amet, consectetur adipiscing elit, ',

  ],
),
  product(
    id: 'm2',
    categoryids: [
      'c2',

    ],
    title: 'Diamond neckpiece',
    imageurl:
        'https://4.imimg.com/data4/IL/OI/MY-6778726/diamond-necklace-500x500.png',
    cost: 899,
    specs: [
      'Lorem ipsum dolor sit amet, consectetur adipiscing elit, ',
      'Lorem ipsum dolor sit amet, consectetur adipiscing elit, ',
      'Lorem ipsum dolor sit amet, consectetur adipiscing elit, ',
      'Lorem ipsum dolor sit amet, consectetur adipiscing elit, ',

    ],
  ),];
