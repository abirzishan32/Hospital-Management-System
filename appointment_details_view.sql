CREATE OR REPLACE VIEW nurse_details_view AS
SELECT 
    n.nurse_id,
    n.nurse_name,
    n.yr_of_exp,
    n.contact_no AS nurse_contact,
    n.email AS nurse_email,
    d.dept_id,
    d.dept_name,
    d.total_doc,
    d.dept_head,
    hb.branch_no,
    hb.location,
    hb.contact_no AS branch_contact,
    hb.email AS branch_email
FROM 
    nurse n
JOIN 
    department d ON n.dept_id = d.dept_id
JOIN 
    hospital_branch hb ON d.branch_no = hb.branch_no;
