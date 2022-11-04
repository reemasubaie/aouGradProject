import 'package:saudi_toursim_guide/models/categories.dart';
import './models/categories.dart';

import 'models/trip.dart';

const List<Categories> categories_data = [
  Categories(id: 'c1', title: 'RIYADH', placeImage: 'images/Riyadh1.jpg'),
  Categories(id: 'c2', title: 'Al-Khobar', placeImage: 'images/khobar.png'),
  Categories(id: "c3", title: 'JEDDAH', placeImage: 'images/Jeddah3.jpg'),
  Categories(
      id: 'c4', title: 'ALULA', placeImage: 'images/city-ola-tourism.jpeg'),
  Categories(id: 'c5', title: 'Abha', placeImage: './images/AbhaC.png'),
  Categories(id: 'c6', title: 'Al-Hasa', placeImage: './images/alhasa.png')
];
var trips = [
  Trip(
      id: 'A1',
      categories: ['c1'],
      title: 'Al-Diriyah',
      placeImage: 'images/al-Diriyah.jpeg',
      description:
          'Diriyah is the center of Saudi Arabia as history and is home to a UNESCO Heritage Site This is what you dont want to miss in Diriyah',

      placeLocation: 'https://goo.gl/maps/nPr6Mxj9kj5Vjt9s5'),
  Trip(
      id: 'A3',
      categories: ['c1'],
      title: 'Boulevard ',
      placeImage: './images/Boulevard.jpg',
      description:
          'Boulevard Riyadh City is one of the biggest zones in the season. Triple in size this year, each of the sub-areas features its own set of activities, restaurants, events, and outlets that are catered to all visitors.',
      placeLocation: 'https://goo.gl/maps/RF1UEGD87u8sRNBg8'),
  Trip(
      id: 'A4',
      categories: ['c3'],
      title: ' Al Tayebat International City Museum',
      placeImage: './images/altaybt.png',
      description:
          'It is a maze of different rooms covering Saudi history architecture interior decoration Islamic art from Saudi and other Islamic countries. The museum itself is a great place for photos.',
      placeLocation: 'https://goo.gl/maps/cc5s37CfuE6cxzNS8'),
  Trip(
      id: 'A5',
      categories: ['c3'],
      title: 'Fakieh Aquarium',
      placeImage: './images/fakiehAquarium.png',
      description:
          ' The first marine exhibition in the Kingdom of Saudi Arabia It is no coincidence that it was built on the coast of the Red Sea The sprawling tunnels and huge ponds that make up the aquarium host more than 200 species of fish 85% of which are native to coral reefs. Without a doubt this living museum of marine wonders is the best way to aquatic the vital ecosystem of the area without having to wear a wetsuit A tour of the aquarium will give you the opportunity to discover the opportunity to discover some of the 800 ',
      placeLocation: 'https://goo.gl/maps/fZmoFxtS5BFrd6uG6'),
  Trip(
      id: 'A6',
      categories: ['c4'],
      title: 'Lions Tombs',
      placeImage: './images/lions tombs.jpg',
      description:
          'The Lions Tombs is an ancient archaeological area, and one of the most prominent tourist attractions in AlUla. It represents part of the ruins and remains of the ancient city of Dadan, which belongs to the ancient civilization of the Arab kingdom of Dadan, whose sovereignty appeared in this region in the seventh century BC',
      placeLocation: 'https://goo.gl/maps/XaiFbrJEds1XYjen9'),
  Trip(
      id: 'A7',
      categories: ['c4'],
      title: 'Gramel Al Ula',
      placeImage: './images/Gramel Al Ula.jpg',
      description:
          'Gramil Al-Ula is represented in the amazing rock formations surrounded by a group of pearls of the great Milky Way. It is pure and has nothing but the wonderful lights of the galaxy, whose glow is naturally reflected on the beautiful formations of Al-Gharamil, as it is one of the most beautiful tourist places in Al-Ula at all',
      placeLocation: 'https://goo.gl/maps/cqTfj4P3xyM1m9x66'),
  Trip(
      id: 'A8',
      categories: ['c1'],
      title: 'The National Museum',
      placeImage: './images/nationalMuseum.png',
      description:
          'National Museum of Saudi Arabia which has been established in 1419 as a significant part of the king Abdulaziz historical center in Riyadh Very impressive and important museum about the entire Saudi history Saudi royal family the kingdom formation and everything regarding the political context',
      placeLocation: 'https://goo.gl/maps/bo9w8GjXoboYuB3p9'),
  Trip(
      id: 'A9',
      categories: ['c1'],
      title: 'Al Masmak',
      placeImage: './images/alMasmak.png',
      description:
          'Enjoy and step back in time and explore Saudi Arabia roots Fascinating exhibitions on display show maps and photographs of Saudi Arabia alongside a range of historical artifacts artworks and audiovisual attractions.',
      placeLocation: 'https://goo.gl/maps/Jra3dBAciDV4No1p8'),
  Trip(
      id: 'A10',
      categories: ['c1'],
      title: 'The Edge of the World',
      placeImage: './images/EdgeOfWorld.png',
      description:
          'The Edge of the World Saudi Arabia or Jebel Fihrayn is an unexpected and dramatic geological wonder in the rocky desert northwest of Riyadh Saudi Arabia.The site earned its nickname because from atop the escarpment you have an uninterrupted view of the horizon.',
      placeLocation: 'https://goo.gl/maps/wnPUnqZ1GVvMqyja8'),
  Trip(
      id: 'A11',
      categories: ['c1'],
      title: 'King Fahd National Library ',
      placeImage: './images/kingFahadL.png',
      description:
          'The King Fahd National Library which is the legal deposit and copyright library for Saudi Arabia. A hidden gym uniquely amazing architectural style for a library. ',
      placeLocation: 'https://g.page/kfnlgov?share'),
  Trip(
      id: 'A12',
      categories: ['c1'],
      title: 'RIYADH WILDLIFE PARK',
      placeImage: './images/safari.png',
      description:
          'Enjoy with a short drive through the drifting sands of the desert towards the rolling greens brings you to the Nofa Golf Resort. Nofa Equestrian Resort and the Nofa Walk. you will get closer than you ever imagined to magnigicant animals from around the world as you drive along our safari trail in which animals roam freely.',
      placeLocation: 'https://g.page/NofaWildlifePark?share'),
  Trip(
      id: 'A13',
      categories: ['c3'],
      title: 'Old Town',
      placeImage: './images/oldTown.png',
      description:
          ' historical area well known as the Old Town. where many of the oldest families used to live and work. It boasts of old buildings a traditional souk and many restaurants.',
      placeLocation: 'https://goo.gl/maps/KKsiMVp2pYgJvL1j9'),
  Trip(
      id: 'A14',
      categories: ['c3'],
      title: 'New Jeddah Corniche',
      placeImage: './images/jeddahNewchor.png',
      description:
          'The New Jeddah Corniche is the 30 km coastal resort area of the city of Jeddah. Located along the Red Sea. the corniche features the coastal road. recreation areas pavilions and large-scale civic sculptures for all to enjoy and take pictures.',
      placeLocation: 'https://goo.gl/maps/3dRn5c1nu7net9wXA'),
  Trip(
      id: 'A15',
      categories: ['c4'],
      title: 'Hegra',
      placeImage: './images/Hegra.png',
      description:
          'Also known as Madain Saleh or Al-Ḥijr is an archaeological site located in the area of AlUla within Al Madinah Region in the Hejaz Saudi Arabia. A majority of the remains date from the Nabatean kingdom.The site constitutes the kingdom southernmost and largest settlement after Petra its capital.',
      placeLocation: 'https://goo.gl/maps/vRaXxu6wUZZ1pDnJ6'),
  Trip(
      id: 'A17',
      categories: ['c4'],
      title: 'Jabal Ikmah',
      placeImage: './images/JabalIkmah.png',
      description:
          'An open air library across AlUlas  Valley lie thousands of inscriptions in Aramaic Dadanitic Thamudic Minaic and Nabataean features one of the oldest inscriptions of the Islamic era dating back to 24AH (644 CE).',
      placeLocation: 'https://goo.gl/maps/zgNAMYs6T2Ft918y9'),
  Trip(
      id: 'A18',
      categories: ['c4'],
      title: 'The Arch',
      placeImage: './images/theArch.png',
      description:
          ' One of Al Ula s most recognizable rock formations. The Arch (also known as Rainbow Rock) is well worth the 90-minute drive from the center of the city. Its bridge-shaped structure. which resembles a rainbow flanked by two clouds. is a rare sight indeed. ',
      placeLocation: 'https://goo.gl/maps/BgtMGDSzN3YXjkFo7'),
  Trip(
      id: 'A19',
      categories: ['c5'],
      title: 'Rijal Almaa',
      placeImage: './images/rijalAlmaa.png',
      description:
          'Famous for its typical Arabian traditional architecture that can be found throughout the whole country. each region having its own specificity.',
      placeLocation: 'https://goo.gl/maps/iCgBPyKi5nsw82qm7'),
  Trip(
      id: 'A20',
      categories: ['c5'],
      title: 'The Art Street',
      placeImage: './images/artStreat.png',
      description:
          'This place is not just for art lovers but for people who respect and appreciate hardworking artists. Shops in the area are beautiful as the artists who run them are painting live',
      placeLocation: 'https://goo.gl/maps/YNJAskyCdxEC2txQ8'),
  Trip(
      id: 'A21',
      categories: ['c5'],
      title: 'Jabal Sawda',
      placeImage: './images/jabalAlswodh.png',
      description:
          'The highest point in Saudi Arabia. You will visit to see the climate and enjoy the mountains and the heights. It is 3000 meters above sea level. You will see lots of varieties of green lush tress and shrubs.',
      placeLocation: 'https://goo.gl/maps/oBXEiKx53iGiNZU28'),
  Trip(
      id: 'A22',
      categories: ['c5'],
      title: 'El Sahab Park',
      placeImage: './images/sahabPark.png',
      description:
          'It has a beautiful view and the clouds pass you all the time. The literal translation of Sahab is cloud. And that is what this place is. You will have a chance to walk into clouds Cornish.',
      placeLocation: 'https://goo.gl/maps/6oLijLp5HvxsKVuU9'),
  Trip(
      id: 'A23',
      categories: ['c5'],
      title: 'Muftaha village',
      placeImage: './images/muftaha.png',
      description:
          'You will be enjoying the traditional colored houses of the Muftaha village. Its a great chance for photos lover.It was built using the traditional methods of construction with local mud and stones.',
      placeLocation: 'https://goo.gl/maps/rYHmh3fyqa6v36Rp7'),
  Trip(
      id: 'A24',
      categories: ['c6'],
      title: 'Souq Al Qaisariya ',
      placeImage: './images/souqAlQaisariya.png',
      description:
          'Shop the stalls at Souq Al Qaisariya this open-air souq is one of the oldest markets in the Kingdom and a feast for the senses.',
      placeLocation: 'https://goo.gl/maps/uYZ14ZkL5pWvqBaa7'),
  Trip(
      id: 'A25',
      categories: ['c6'],
      title: 'AlQarah Mountain',
      placeImage: './images/qarahMountain.png',
      description:
          'This mountain counts as one of the most important natural sights in Al-Ahsa and is registered in the UNESCO world heritage centres list in 2018. after the inclusion of Al-Ahsa oasis. It is positioned 15 kilometers away of Al-hofuf east. have a moderate steady temperature throughout the year.',
      placeLocation: 'https://goo.gl/maps/nALWBf9HQJnWJH5x7'),
  Trip(
      id: 'A26',
      categories: ['c6'],
      title: 'Ibrahim Palace',
      placeImage: './images/ibrahimPal.png',
      description:
          ' An architectural masterpiece. Combining both traditional Arabic and military designs. it was first used as an army base and later as the headquarters of a garrison.',
      placeLocation: 'https://goo.gl/maps/NKizjWBVHFWW18wi7'),
  Trip(
      id: 'A27',
      categories: ['c2'],
      title: 'Ithra',
      placeImage: './images/Ithra.png',
      description:
          ' Saudi Aramco envisioned Ithra to be an environment for transformative experiences to unlock the power of potential through mastery in arts. science, literature, and innovation. Our facilities include Idea Lab, Library, Ithra Theater, Cinema, Ithra Museum, Children’s Museum, Energy Exhibit, The Great Hall, and the Ithra Tower',
      placeLocation: 'https://maps.app.goo.gl/HPwpZFdgFzjDyw9MA?g_st=ic'),
  Trip(
      id: 'A28',
      categories: ['c2'],
      title: 'Ajdan Walk',
      placeImage: './images/ajdanW.png',
      description:
          'Drop into the Cheesecake Factory in Ajdan Walk for family dining, or book a table at the airy Oriya for creative dishes and waterfront views. For exquisite Indian fine dining, try Maharaja by Vineet, or sample five-star sushi at Fusionin Le Méridien Al Khobar. For rustic Italian cuisine.',
      placeLocation: 'https://g.page/Ajdan-Walk-Khobar?share'),
  Trip(
      id: 'A29',
      categories: ['c2'],
      title: 'Sunset Resort',
      placeImage: './images/sunset.png',
      description:
          'Sunset Beach is where business, family and leisure live together in perfect harmony. This oasis of luxurious residences, swimming pools, full-service Ladies SPA and world-class Gentlemen health and fitness centers, has all the beauties of the world gathered to ensure you live an experience that takes your perception of class and elegance to a whole new level.',
      placeLocation: 'https://g.page/sunsetbeachalkhobar?share'),
  Trip(
      id: 'A30',
      categories: ['c2'],
      title: 'Corniche AlKhobar',
      placeImage: './images/cornicheKhobar.png',
      description:
          'This picturesque boardwalk provides a lovely tiled walking surface as well as a jogging path',
      placeLocation: 'https://goo.gl/maps/quPGLGy1FX8xLsj66'),
];
