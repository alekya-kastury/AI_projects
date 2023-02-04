--Package to choose hotel 1
EXECUTE admin.CHOOSE_HOTEL(1);

--Package to book the hotel and other services. Booking(hotel#, customer ID, room ID, package ID, checkin-date, checkout-date, No of rooms, No of nights) 
EXECUTE admin.BOOKING(1,502, 705, 400, '01-MAY-2022', '01-MAY-2022', 1, 2);

--Package to book room service
EXEC admin.room_services(12301, 1201);

--Packge to generate invoie
EXEC admin.GENERATE_INVOICE(12301,'CREDIT CARD');