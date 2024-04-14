DELETE FROM room;
DELETE FROM hotel;
DELETE FROM restaurant;
DELETE FROM company;

-- COMPANIES
INSERT INTO company (id, name)
    VALUES ('a8f14c61-f90e-44d7-8994-a305e51ff2fc', 'Zakarpatya');

-- HOTELS
INSERT INTO hotel (id, name, image_url, city, company_id)
    VALUES ('8788b001-269e-4dbd-92c8-b647b478def0', 'Hotel Uzhhorod', 'https://cf.bstatic.com/xdata/images/hotel/max1024x768/468106309.jpg?k=121aa64fb64b61b99e9ffc46c2e4d3eef6b882f847ac098deda619d4f5a09b86&o=&hp=1', 'Uzhhorod', 'a8f14c61-f90e-44d7-8994-a305e51ff2fc'),
           ('0bec3c56-9393-47b2-8061-1030ef4dc2ef', 'Hotel Mykachivo', 'https://cf.bstatic.com/xdata/images/hotel/max1024x768/468106309.jpg?k=121aa64fb64b61b99e9ffc46c2e4d3eef6b882f847ac098deda619d4f5a09b86&o=&hp=1', 'Mukachevo', 'a8f14c61-f90e-44d7-8994-a305e51ff2fc'),
           ('0fb4ea23-eb3e-411b-b548-db62d052c99a', 'Hotel Hyst', 'https://cf.bstatic.com/xdata/images/hotel/max1024x768/468106309.jpg?k=121aa64fb64b61b99e9ffc46c2e4d3eef6b882f847ac098deda619d4f5a09b86&o=&hp=1','Khust', 'a8f14c61-f90e-44d7-8994-a305e51ff2fc');

-- ROOMS
INSERT INTO room (id, beds, image_url, max_people, price_per_night, room_type, hotel_id)
    VALUES ('8788b001-269e-4dbd-92c8-b647b478def0', 4, 'https://cf.bstatic.com/xdata/images/hotel/max1024x768/468108078.jpg?k=6cc455ef729cb431007ee83cffcc2deb00b298f83a3f5e3e1272db5b56a80f1d&o=&hp=1', 4, 25, 'suite', '8788b001-269e-4dbd-92c8-b647b478def0'),
           ('0bec3c56-9393-47b2-8061-1030ef4dc2ef', 4, 'https://cf.bstatic.com/xdata/images/hotel/max1024x768/468108078.jpg?k=6cc455ef729cb431007ee83cffcc2deb00b298f83a3f5e3e1272db5b56a80f1d&o=&hp=1', 4, 25, 'suite', '8788b001-269e-4dbd-92c8-b647b478def0'),
           ('0fb4ea23-eb3e-411b-b548-db62d052c99a', 4, 'https://cf.bstatic.com/xdata/images/hotel/max1024x768/468108078.jpg?k=6cc455ef729cb431007ee83cffcc2deb00b298f83a3f5e3e1272db5b56a80f1d&o=&hp=1', 4, 25, 'suite', '8788b001-269e-4dbd-92c8-b647b478def0'),
           ('a8f14c61-f90e-44d7-8994-a305e51ff2fc', 5, 'https://cf.bstatic.com/xdata/images/hotel/max1024x768/468108078.jpg?k=6cc455ef729cb431007ee83cffcc2deb00b298f83a3f5e3e1272db5b56a80f1d&o=&hp=1', 4, 25, 'suite', '0bec3c56-9393-47b2-8061-1030ef4dc2ef');

-- RESTAURANTS
INSERT INTO restaurant (id, name, company_id)
    VALUES ('8788b001-269e-4dbd-92c8-b647b478def0', 'Restaurant Uzhhorod', 'a8f14c61-f90e-44d7-8994-a305e51ff2fc'),
           ('0bec3c56-9393-47b2-8061-1030ef4dc2ef', 'Restaurant Mykachivo', 'a8f14c61-f90e-44d7-8994-a305e51ff2fc'),
           ('0fb4ea23-eb3e-411b-b548-db62d052c99a', 'Restaurant Hyst', 'a8f14c61-f90e-44d7-8994-a305e51ff2fc');