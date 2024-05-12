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
INSERT INTO hotel (id, name, image_url, city, company_id)
    VALUES ('8788b001-269e-4dbd-92c8-b647b478def0', 'Nicole', 'https://cf.bstatic.com/xdata/images/hotel/max1280x900/320119866.jpg?k=d684c994fac2d86d7dea7190d899de1b63313867201afa44d69b5c6f7e348956&o=&hp=1', 'Uzhhorod', 'a8f14c61-f90e-44d7-8994-a305e51ff2fc'),
           ('0bec3c56-9393-47b2-8061-1030ef4dc2ef', 'Ferdinand', 'https://cf.bstatic.com/xdata/images/hotel/max1024x768/271575031.jpg?k=a0c242b696717246180d2c087957e87249767cf34b73eb5595ec97152146c717&o=&hp=1', 'Mukachevo', 'a8f14c61-f90e-44d7-8994-a305e51ff2fc'),
           ('0fb4ea23-eb3e-411b-b548-db62d052c99a', 'Forsage', 'https://cf.bstatic.com/xdata/images/hotel/max1024x768/462140029.jpg?k=93c4a657f9e0210a12931c1b16a46ed37ac4ae3af8761da7925794cfc45c5539&o=&hp=1','Uzhhorod', 'a8f14c61-f90e-44d7-8994-a305e51ff2fc');

-- ROOMS
INSERT INTO room (id, beds, image_url, max_people, price_per_night, type, hotel_id)
    VALUES ('8788b001-269e-4dbd-92c8-b647b478def0', 1, 'https://cf.bstatic.com/xdata/images/hotel/max1024x768/390775438.jpg?k=ffd6a1b8279cc4cfed33bac30c6157f120ebb524abd9ac67adc1e515e464cf6e&o=', 4, 25, 'suite', '8788b001-269e-4dbd-92c8-b647b478def0'),
           ('0bec3c56-9393-47b2-8061-1030ef4dc2ef', 2, 'https://cf.bstatic.com/xdata/images/hotel/max1024x768/271233956.jpg?k=471bb91eb5c46f59b6cc2d8aa9e0b6de879301772f57c1657a4e5dc396dd49b3&o=', 4, 25, 'suite', '8788b001-269e-4dbd-92c8-b647b478def0'),
           ('0fb4ea23-eb3e-411b-b548-db62d052c99a', 3, 'https://cf.bstatic.com/xdata/images/hotel/max1024x768/271328644.jpg?k=e4483377a08304813b554703b9c7b2a3e43f6f50177cb365feb2393880890455&o=', 4, 25, 'suite', '8788b001-269e-4dbd-92c8-b647b478def0'),
           ('a8f14c61-f90e-44d7-8994-a305e51ff2fc', 4, 'https://cf.bstatic.com/xdata/images/hotel/max1024x768/271233026.jpg?k=067a77044debc629fa5ac10f699d4b8d543d4d5c4795a8b0e90b4aa5910f5123&o=', 4, 25, 'suite', '0bec3c56-9393-47b2-8061-1030ef4dc2ef');

-- RESTAURANTS
INSERT INTO restaurant (id, name, company_id)
    VALUES ('8788b001-269e-4dbd-92c8-b647b478def0', 'Restaurant Uzhhorod', 'a8f14c61-f90e-44d7-8994-a305e51ff2fc'),
           ('0bec3c56-9393-47b2-8061-1030ef4dc2ef', 'Restaurant Mykachivo', 'a8f14c61-f90e-44d7-8994-a305e51ff2fc'),
           ('0fb4ea23-eb3e-411b-b548-db62d052c99a', 'Restaurant Hyst', 'a8f14c61-f90e-44d7-8994-a305e51ff2fc');