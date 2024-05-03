set serveroutput on
declare
dept_row DEPARTMENT%rowtype;
begin
select * into dept_row from department where dept_id=2;
dbms_output.put_line('Department ID : ' || dept_row.DEPT_ID);
dbms_output.put_line('Department Name : ' || dept_row.dept_name);
dbms_output.put_line('Total Doctors : ' || dept_row.total_doc);
dbms_output.put_line('Department Head : ' || dept_row.dept_head);
dbms_output.put_line('Branch No : ' || dept_row.branch_no);
end;
/
