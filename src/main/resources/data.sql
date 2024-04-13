DELETE FROM room;
DELETE FROM hotel;
DELETE FROM restaurant;
DELETE FROM company;

-- COMPANIES
INSERT INTO company (id, name)
    VALUES ('a8f14c61-f90e-44d7-8994-a305e51ff2fc', 'Zakarpatya');

-- HOTELS
INSERT INTO hotel (id, name, company_id)
    VALUES ('8788b001-269e-4dbd-92c8-b647b478def0', 'Hotel Uzhhorod', 'a8f14c61-f90e-44d7-8994-a305e51ff2fc'),
           ('0bec3c56-9393-47b2-8061-1030ef4dc2ef', 'Hotel Mykachivo', 'a8f14c61-f90e-44d7-8994-a305e51ff2fc'),
           ('0fb4ea23-eb3e-411b-b548-db62d052c99a', 'Hotel Hyst', 'a8f14c61-f90e-44d7-8994-a305e51ff2fc');

-- ROOMS
INSERT INTO room (id, number, hotel_id)
    VALUES ('8788b001-269e-4dbd-92c8-b647b478def0', 0, '8788b001-269e-4dbd-92c8-b647b478def0'),
           ('0bec3c56-9393-47b2-8061-1030ef4dc2ef', 1, '8788b001-269e-4dbd-92c8-b647b478def0'),
           ('0fb4ea23-eb3e-411b-b548-db62d052c99a', 2, '8788b001-269e-4dbd-92c8-b647b478def0');

-- RESTAURANTS
INSERT INTO restaurant (id, name, company_id)
    VALUES ('8788b001-269e-4dbd-92c8-b647b478def0', 'Restaurant Uzhhorod', 'a8f14c61-f90e-44d7-8994-a305e51ff2fc'),
           ('0bec3c56-9393-47b2-8061-1030ef4dc2ef', 'Restaurant Mykachivo', 'a8f14c61-f90e-44d7-8994-a305e51ff2fc'),
           ('0fb4ea23-eb3e-411b-b548-db62d052c99a', 'Restaurant Hyst', 'a8f14c61-f90e-44d7-8994-a305e51ff2fc');