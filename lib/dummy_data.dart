import 'package:shopytp/model/bathrobe.dart';
import 'package:shopytp/model/beddings.dart';

import 'model/category.dart';
import 'model/towel.dart';

final dummyCategories = [
  Category(
    id: 'a1',
    title: 'Towels',
    image: 'images/large3.png',
    onpress: () {},
  ),
  Category(
    id: 'b1',
    title: 'Bathrobes',
    image: 'images/bathrobe2.png',
    onpress: () {},
  ),
  Category(
    id: 'c1',
    title: 'Beddings',
    image: 'images/plain beddings2.png',
    onpress: () {},
  ),
];

final dummyTowel = [
  Towel(
    id: 't1',
    size: 'size: Large ',
    title: 'Plush',
    image: 'images/large1.png',
    description: 'premium quality Towels.super fluffy,\nvery absorbent, plush,softest feel',
    price: 12000,
    onpress: () {},
  ),
  Towel(
    id: 't2',
    size: 'size: Large',
    title: 'Plush',
    image: 'images/large2.png',
    description: 'premium quality Towels.super fluffy,\n very absorbent, plush,softest feel',
    price: 12000,
    onpress: () {},
  ),
  Towel(
    id: 't3',
    size: 'size: Extra Large ',
    title: 'Mid-plush',
    image: 'images/extralarge1.png',
    description: 'This towels are suitable for plus size adults\n (it can tie a plus size adult body round). ',
    price: 12500,
    onpress: () {},
  ),
  Towel(
    id: 't4',
    size: 'size: Large ',
    title: 'Plush white towels',
    image: 'images/large3.png',
    description: 'premium quality Towels.super fluffy,\n very absorbent,plush,softest feel',
    price: 12000,
    onpress: () {},
  ),
  Towel(
    id: 't5',
    size: 'size: Large',
    title: 'Mid-plush white Towels',
    image: 'images/large4.png',
    description: 'mid-weight,mid-plush,absorbent,\nsoft, fluffy,easy to wash',
    price: 8000,
    onpress: () {},
  ),
  Towel(
    id: 't6',
    size: 'size: Large',
    title: 'plush',
    image: 'images/large5.png',
    description: 'premium quality Towels.super fluffy,\n very absorbent,plush,softest feel',
    price: 12000,
    onpress: () {},
  ),
  Towel(
    id: 't6',
    size: 'size: Large',
    title: 'plush ',
    image: 'images/large6.png',
    description: 'premium quality Towels.super fluffy,\n very absorbent,plush,softest feel',
    price: 12000,
    onpress: () {},
  ),
  Towel(
    id: 't7',
    size: 'size: Large',
    title: 'mid plush Striped Towels',
    image: 'images/largeStripe.png',
    description: 'mid-weight,mid-plush,absorbent,\n soft, fluffy,easy to wash',
    price: 7000,
    onpress: () {},
  ),
  Towel(
    id: 't8',
    size: 'size: mini',
    title: 'mid-plush Striped Towels',
    image: 'images/mini1.png',
    description: 'mid-weight,absorbent, soft & fluffy.\n suitable as a gym towel,travel towel,\n hand towel,kitchen towel',
    price: 3500,
    onpress: () {},
  ),
  Towel(
    id: 't9',
    size: 'mini/hand towel',
    title: 'plush towel',
    image: 'images/mini2.png',
    description: 'premium quality.super fluffy,\nvery absorbent,plush,softest feel.\n suitable as a gym towel,travel towel',
    price: 4000,
    onpress: () {},
  ),
  Towel(
    id: 't10',
    size: 'size: mini',
    title: 'plain white mid-plush',
    image: 'images/mini3.png',
    description: 'mid-weight,absorbent, soft & fluffy.\nsuitable as a gym towel,travel towel,\n and hand towel',
    price: 3500,
    onpress: () {},
  ),
  Towel(
    id: 't11',
    size: 'size: mini',
    title: 'mid-plush Striped towels',
    image: 'images/mini4.png',
    description: 'suitable as a gym towel,travel towel,\nhand towel.absorbent & fluffy',
    price: 3500,
    onpress: () {},
  ),
  Towel(
    id: 't12',
    size: 'size: Large & mini size',
    title: 'Duo Set',
    image: 'images/towel1.png',
    description: 'comprises of a large  size and a mini size towel.\n great quality, durable, absorbent,fluffy',
    price: 14000,
    onpress: () {},
  ),
  Towel(
    id: 't13',
    size: 'size: Large ',
    title: 'plush Towels',
    image: 'images/towel2.png',
    description: 'premium quality Towels. super fluffy,\n very absorbent,plush,softest feel',
    price: 12000,
    onpress: () {},
  ),
];

final dummyBathRobes = [
  Bathrobe(
    id: 'bt1',
    size:  'available in: L, XL',
    image: 'images/bathrobe1.png',
    title: 'mid-plush',
    price: 18500,
    description: 'Unisex bathrobes.soft,mid-weight,',
    onpress: () {},
  ),
  Bathrobe(
    id: 'bt2',
    size: 'available in: S, M, L, XL, XXL',
    image: 'images/bathrobe2.png',
    title: 'Plush bathrobes',
    price: 21000,
    description: 'unisex bathrobes.softest feel, super fluffy',
    onpress: () {},
  ),
  Bathrobe(
    id: 'bt3',
    size: 'available: L, XL, XXL',
    image: 'images/bathrobewithslippers.png',
    title: 'Bathrobes with matching slippers',
    price: 25000,
    description: 'Unisex fluffy bathrobes with matching slippers.\n available in colors: wine,peach,army green,grey,ash',
    onpress: () {},
  ),
];

final dummyBeddings = [
  Beddings(
    id: 'bd1',
    size: 'size: 4 by 6',
    image: 'images/beddings complet set.png',
    title: 'designed bedding',
    price: 17500,
    description: 'comprises of 2 pillow case, a bedsheet \nand a matching duvet',
    onpress: () {},
  ),
  Beddings(
    id: 'bd2',
    size: 'size: 4 by 6',
    image: 'images/bedsheet and duvet.png',
    title: 'designed bedding',
    price: 17500,
    description: 'comprises of 2 pillow case, a bedsheet\nand a matching duvet',
    onpress: () {},
  ),
  Beddings(
    id: 'bd3',
    size: 'size: 6 by 6',
    image: 'images/complete set.png',
    title: 'designed cotton bedding',
    price: 19000,
    description: 'breathable cotton sheets.No fading,durable.\ncomprises of 4 pillow case,a bedsheet and a matching duvet',
    onpress: () {},
  ),
  Beddings(
    id: 'bd3',
    size: 'size: 6 by 6',
    image: 'images/complete set2.png',
    title: 'plain bedding ',
    price: 24000,
    description: 'plain bedding with high thread count.\ncomprises of 4 pillow case,a bedsheet and a matching duvet',
    onpress: () {},
  ),
];