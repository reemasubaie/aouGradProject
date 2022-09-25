import 'package:saudi_toursim_guide/models/categories.dart';
import './models/categories.dart';

import 'models/trip.dart';

 const List<categories> categories_data = [
  categories(
      id: 'c1',
      title: 'RIYADH',
      placeImage: 'images/Riyadh1.jpg'),

  categories(id: 'c2',
      title: 'DAMMAM',
      placeImage: 'images/khobar.png'),
  categories(id: "c3",
      title: 'JeDDAH',
      placeImage: 'images/Jeddah3.jpg'),
  categories(id: 'c4',
      title: 'ALULA',
      placeImage: 'images/city-ola-tourism.jpeg'),


];
   const Trips= const[
   Trip(
     id: 'A1',
     categories: ['c1',],
     title: 'Al-Diriyah',
     placeImage: 'images/al-Diriyah.jpeg'
     ,Description: 'Diriyah is the center of Saudi Arabia as history and is home to a UNESCO Heritage Site This is what you dont want to miss in Diriyah'
     ,),

   Trip(
       id: 'A2',
       categories: ['c1',],
       title: 'Winter wonder land',
       placeImage:'./images/wenterland.jpg',
       Description:'The most beautiful amusement park in Riyadh'),
  Trip(
      id: 'A3',
      categories: ['c1',],
      title: 'Boulevard ',
      placeImage:'./images/Boulevard.jpg',
      Description:'The largest event area in Riyadh'),
     Trip(
         id: 'A4',
         categories: ['c1',],
         title: 'King Abdullah garden',
         placeImage:'./images/king Abdullah garden.jpg',
         Description:'King Abdullah Park in Riyadh is one of the most important parks and vital sites in the heart of the city and an outlet for thousands of people to visit on a continuous basis with the aim of recreation and a sense of psychological peace and comfort for those who feel tired after a stressful day at work or after a long day of study.'),
     Trip(
         id: 'A5',
         categories: ['c2'],
         title: 'Morjan Island ',
         placeImage:'./images/Morjan Island.jpg',
         Description:'This man-made island offers a fun and relaxing atmosphere for families and young people with many marine activities.'),
     Trip(
         id: 'A6',
         categories: ['c2',],
         title: 'Dolphin Village ',
         placeImage:'./images/Dolphin Village.webp',
         Description:'Dolphin Entertainment Village is an entertainment complex that includes an amusement park, a nature park, circus shows, dolphins and sea lions shows. This destination is especially suitable for families with children.'),
     Trip(id: 'A6',
         categories: ['c2']
         , title: 'Heritage Village',
         placeImage: './images/Heritage Village.jpg',
         Description: 'For lovers of history, the popular village is the destination that must be visited when it is in Dammam. This tourist landmark was built in the old Saudi architectural style, and it consists of 5 floors, each of which displays the history of a region of the Kingdom throughout the ages. The chance of eating a fatty meal in the village restaurant, which provides comfortable heritage sessions that return to the time of the ancestors.'),
Trip(id: 'A7',
    categories: ['c3'],
    title: 'King Fahad fountain',
    placeImage: './images/King-Fahads-fountain.png',
    Description: 'The tallest fountain in the world, where the fountain appears in all its beauty at night, when hundreds of colorful lights illuminate the water pumped into the sky'),

     Trip(id: 'A8',
         categories: ['c3'],
         title: 'Al Tayebat Museum'
         , placeImage: './images/Al Tayebat Museum.jpg',
         Description: 'If you want to delve into Jeddah ancient and multicultural history take a tour of the Al Tayebat Museum which will provide you with an accurate and detailed picture of the city and its 2,500-year-old history'),
Trip(id: 'A9',
    categories: ['c3'],
    title: 'Fakih Aquarium',
    placeImage: './images/Fakih Aquarium.jpg',
    Description: 'Fakih Aquarium is the first marine exhibition in the Kingdom of Saudi Arabia It is no coincidence that it was built on the coast of the Red Sea The sprawling tunnels and huge ponds that make up the aquarium host more than 200 species of fish 85% of which are native to coral reefs. Without a doubt this living museum of marine wonders is the best way to aquatic the vital ecosystem of the area without having to wear a wetsuit A tour of the aquarium will give you the opportunity to discover the opportunity to discover some of the 800 '),
   Trip(id: 'A10',
       categories: ['c4'],
       title: 'Lions Tombs',
       placeImage: './images/lions tombs.jpg',
       Description: 'The Lions Tombs is an ancient archaeological area, and one of the most prominent tourist attractions in AlUla. It represents part of the ruins and remains of the ancient city of Dadan, which belongs to the ancient civilization of the Arab kingdom of Dadan, whose sovereignty appeared in this region in the seventh century BC'),
     Trip(
         id: 'A11',
         categories: ['c4'],
         title: 'Gramel Al Ula',
         placeImage: './images/Gramel Al Ula.jpg',
         Description: 'Gramil Al-Ula is represented in the amazing rock formations surrounded by a group of pearls of the great Milky Way. It is pure and has nothing but the wonderful lights of the galaxy, whose glow is naturally reflected on the beautiful formations of Al-Gharamil, as it is one of the most beautiful tourist places in Al-Ula at all'),

   ];

