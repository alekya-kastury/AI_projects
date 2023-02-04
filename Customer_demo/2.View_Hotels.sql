set serveroutput on;

BEGIN
FOR MY_ROW in (SELECT HOTEL_ID, HOTEL_NAME, HOTEL_ADDRESS_STREET, HOTEL_ADDRESS_CITY, HOTEL_ADDRESS_STATE, HOTEL_ADDRESS_ZIPCODE, HOTEL_PHONENUMBER, HOTEL_DESCRIPTION, BASE_CHARGE FROM admin.HOTEL) loop
dbms_output.put_line('');
dbms_output.put_line('*************************************'||MY_ROW.HOTEL_NAME||'**********************************************');
dbms_output.put_line('');
dbms_output.put_line(MY_ROW.HOTEL_DESCRIPTION);
dbms_output.put_line('');
dbms_output.put_line('************************************************************************************************');
dbms_output.put_line('HOTEL ID: '||MY_ROW.HOTEL_ID);
dbms_output.put_line('');
dbms_output.put_line('HOTEL ADDRESS: ');
dbms_output.put_line('');
dbms_output.put_line(MY_ROW.HOTEL_ADDRESS_STREET);
dbms_output.put_line(MY_ROW.HOTEL_ADDRESS_CITY);
dbms_output.put_line(MY_ROW.HOTEL_ADDRESS_STATE);
dbms_output.put_line(MY_ROW.HOTEL_ADDRESS_ZIPCODE);
dbms_output.put_line('');
dbms_output.put_line('PHONE NUMBER: '||MY_ROW.HOTEL_PHONENUMBER);
dbms_output.put_line('');
dbms_output.put_line('BASE CHARGE: '||MY_ROW.BASE_CHARGE);
dbms_output.put_line('');
dbms_output.put_line('To choose hotel this hotel run the following command: ');
dbms_output.put_line('EXECUTE CHOOSE_HOTEL('||MY_ROW.Hotel_ID||');');

end loop;
END;
