DELETE FROM room_image;
DELETE FROM room_reservation;
DELETE FROM room;
DELETE FROM hotel;
DELETE FROM restaurant;
DELETE FROM company;
DELETE FROM users;

-- COMPANIES
INSERT INTO company (id, name)
    VALUES ('a8f14c61-f90e-44d7-8994-a305e51ff2fc', 'Zakarpatya');

-- HOTELS
INSERT INTO hotel (id, name, image_url, city, description, short_description, company_id)
    VALUES ('8788b001-269e-4dbd-92c8-b647b478def0', 'Nicole', 'https://cf.bstatic.com/xdata/images/hotel/max1280x900/320119866.jpg?k=d684c994fac2d86d7dea7190d899de1b63313867201afa44d69b5c6f7e348956&o=&hp=1', 'Uzhhorod', 'Indulge in sophistication at Nicole Hotel. Seamlessly blending contemporary style with timeless charm, our boutique hotel offers refined accommodations, exceptional dining, and personalized service, promising a stay of unparalleled luxury and comfort','Indulge in sophistication at Nicole Hotel. Seamlessly blending contemporary style with timeless charm, our boutique hotel offers refined accommodations, exceptional dining, and personalized service, promising a stay of unparalleled luxury and comfort', 'a8f14c61-f90e-44d7-8994-a305e51ff2fc'),
           ('0bec3c56-9393-47b2-8061-1030ef4dc2ef', 'Ferdinand', 'https://cf.bstatic.com/xdata/images/hotel/max1024x768/271575031.jpg?k=a0c242b696717246180d2c087957e87249767cf34b73eb5595ec97152146c717&o=&hp=1', 'Mukachevo', 'Experience luxury at Ferdinand Hotel, where timeless elegance meets modern comfort. Nestled in the heart of the city, our boutique hotel offers impeccable service, exquisite dining, and lavish amenities for an unforgettable stay.', 'Experience luxury at Ferdinand Hotel, where timeless elegance meets modern comfort. Nestled in the heart of the city, our boutique hotel offers impeccable service, exquisite dining, and lavish amenities for an unforgettable stay.', 'a8f14c61-f90e-44d7-8994-a305e51ff2fc'),
           ('0fb4ea23-eb3e-411b-b548-db62d052c99a', 'Forsage', 'https://cf.bstatic.com/xdata/images/hotel/max1024x768/462140029.jpg?k=93c4a657f9e0210a12931c1b16a46ed37ac4ae3af8761da7925794cfc45c5539&o=&hp=1','Uzhhorod', 'Discover unparalleled hospitality at Forsage Hotel. Located amidst breathtaking landscapes, our boutique hotel offers opulent accommodations, gourmet dining, and bespoke experiences, ensuring a truly memorable retreat', 'Discover unparalleled hospitality at Forsage Hotel. Located amidst breathtaking landscapes, our boutique hotel offers opulent accommodations, gourmet dining, and bespoke experiences, ensuring a truly memorable retreat', 'a8f14c61-f90e-44d7-8994-a305e51ff2fc');

-- ROOMS IMAGE
INSERT INTO hotel_image (id, hotel_id, image_url)
VALUES ('8788b001-269e-4dbd-92c8-b647b478def0', '8788b001-269e-4dbd-92c8-b647b478def0', 'https://lh3.googleusercontent.com/p/AF1QipPMPgfS9w_qP3-Tohmh5r1oxS7L0i_bg5E6cPId=s1360-w1360-h1020'),
       ('8788b001-269e-4dbd-92c8-b647b478def2', '8788b001-269e-4dbd-92c8-b647b478def0', 'https://lh3.googleusercontent.com/p/AF1QipNWym4mRXxri-2gXDKyi93VB1-Q5DD6i7cfVTA-=s1360-w1360-h1020'),
       ('0bec3c56-9393-47b2-8061-1030ef4dc23f', '0bec3c56-9393-47b2-8061-1030ef4dc2ef', 'https://lh3.googleusercontent.com/p/AF1QipPFS7GrKuj1tHU4DjUb6sySxa1K87fjCa22CsrF=s1360-w1360-h1020'),
       ('0bec3c56-9393-47b2-8061-1030ef4dc2ef', '0bec3c56-9393-47b2-8061-1030ef4dc2ef', 'https://lh3.googleusercontent.com/p/AF1QipNNGOig6JLmuFkhvccQudN7wBAbfkqckoPKEw4a=s1360-w1360-h1020'),
       ('0fb4ea23-eb3e-411b-b548-db62d052c99a', '0fb4ea23-eb3e-411b-b548-db62d052c99a', 'https://cf.bstatic.com/xdata/images/hotel/max1024x768/462140139.jpg?k=4c17dfda3076d62f4eac0f8be3360806bcbb7e4d6a3cd20658a5d544b4ad73eb&o=&hp=1'),
       ('a8f14c61-f90e-44d7-8994-a305e51ff2fc', '0fb4ea23-eb3e-411b-b548-db62d052c99a', 'https://cf.bstatic.com/xdata/images/hotel/max1280x900/462140161.jpg?k=aaf36de4b3d467990b08fe91bc61ad023c508171ef39813e91640f1f81b6cbf8&o=&hp=1');


-- ROOMS
INSERT INTO room (id, type, price_per_night, max_people, beds, size, description, view, hotel_id)
    VALUES ('8788b001-269e-4dbd-92c8-b647b478def0', 'suite', 25, 4, 1, 40, 'Some room description....', 'City', '8788b001-269e-4dbd-92c8-b647b478def0'),
           ('0bec3c56-9393-47b2-8061-1030ef4dc2ef', 'suite', 30, 4, 2, 55, 'Some room description....', 'Sea', '8788b001-269e-4dbd-92c8-b647b478def0'),
           ('0fb4ea23-eb3e-411b-b548-db62d052c99a', 'suite', 40, 4, 3, 57, 'Some room description....', 'Ocean', '8788b001-269e-4dbd-92c8-b647b478def0'),
           ('a8f14c61-f90e-44d7-8994-a305e51ff2fc', 'suite', 45, 4, 4, 80, 'Some room description....', 'Mountains', '0bec3c56-9393-47b2-8061-1030ef4dc2ef');

-- ROOMS IMAGE
INSERT INTO room_image (id, room_id, image_url)
    VALUES ('8788b001-269e-4dbd-92c8-b647b478def0', '8788b001-269e-4dbd-92c8-b647b478def0', 'https://cf.bstatic.com/xdata/images/hotel/max1024x768/390775438.jpg?k=ffd6a1b8279cc4cfed33bac30c6157f120ebb524abd9ac67adc1e515e464cf6e&o='),
           ('0bec3c56-9393-47b2-8061-1030ef4dc2ef', '0bec3c56-9393-47b2-8061-1030ef4dc2ef', 'https://cf.bstatic.com/xdata/images/hotel/max1024x768/271233956.jpg?k=471bb91eb5c46f59b6cc2d8aa9e0b6de879301772f57c1657a4e5dc396dd49b3&o='),
           ('0fb4ea23-eb3e-411b-b548-db62d052c99a', '0fb4ea23-eb3e-411b-b548-db62d052c99a', 'https://cf.bstatic.com/xdata/images/hotel/max1024x768/271328644.jpg?k=e4483377a08304813b554703b9c7b2a3e43f6f50177cb365feb2393880890455&o='),
           ('a8f14c61-f90e-44d7-8994-a305e51ff2fc', 'a8f14c61-f90e-44d7-8994-a305e51ff2fc', 'https://cf.bstatic.com/xdata/images/hotel/max1024x768/271233026.jpg?k=067a77044debc629fa5ac10f699d4b8d543d4d5c4795a8b0e90b4aa5910f5123&o='),
           ('a8f14c61-f90e-44d7-8994-a305e51ff2fb', 'a8f14c61-f90e-44d7-8994-a305e51ff2fc', 'https://cf.bstatic.com/xdata/images/hotel/max1024x768/390775438.jpg?k=ffd6a1b8279cc4cfed33bac30c6157f120ebb524abd9ac67adc1e515e464cf6e&o='),
           ('a8f14c61-f90e-44d7-8994-a305e51ff2fa', 'a8f14c61-f90e-44d7-8994-a305e51ff2fc', 'https://cf.bstatic.com/xdata/images/hotel/max1024x768/271233956.jpg?k=471bb91eb5c46f59b6cc2d8aa9e0b6de879301772f57c1657a4e5dc396dd49b3&o=');

-- RESTAURANTS
INSERT INTO restaurant (id, name, company_id)
    VALUES ('8788b001-269e-4dbd-92c8-b647b478def0', 'Restaurant Uzhhorod', 'a8f14c61-f90e-44d7-8994-a305e51ff2fc'),
           ('0bec3c56-9393-47b2-8061-1030ef4dc2ef', 'Restaurant Mykachivo', 'a8f14c61-f90e-44d7-8994-a305e51ff2fc'),
           ('0fb4ea23-eb3e-411b-b548-db62d052c99a', 'Restaurant Hyst', 'a8f14c61-f90e-44d7-8994-a305e51ff2fc');