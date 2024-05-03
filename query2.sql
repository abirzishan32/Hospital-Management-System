--row type
set serveroutput on
declare 
dept_row department%rowtype;
begin
select dept_id,dept_name,total_doc,dept_head,branch_no into dept_row.dept_id,dept_row.dept_name,dept_row.total_doc,dept_row.dept_head,dept_row.branch_no from department where dept_id=1;
end;
/
