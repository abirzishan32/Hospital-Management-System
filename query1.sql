set serveroutput on
declare 
b_no hospital_branch.branch_no%type;
loc hospital_branch.location%type;
eml VARCHAR(40);
begin
select branch_no,location,email into b_no,loc,eml from hospital_branch where branch_no=1;
dbms_output.put_line('Branch_no:'||b_no|| '     Location :'||loc || '   Email:'||eml);
end;
/
