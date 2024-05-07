CREATE OR REPLACE VIEW appointment_details_view AS
SELECT 
    a.app_si,
    a.app_date,
    a.app_time,
    p.p_id,
    p.p_name,
    p.gender,
    p.age,
    p.weight,
    ph.doc_code,
    ph.doc_name,
    ph.designation,
    d.dept_id,
    d.dept_name,
    d.total_doc,
    d.dept_head,
    hb.branch_no,
    hb.location,
    hb.contact_no AS branch_contact,
    hb.email AS branch_email
FROM 
    appointment a
JOIN 
    patient p ON a.p_id = p.p_id
JOIN 
    physician ph ON a.doc_code = ph.doc_code
JOIN 
    department d ON ph.dept_id = d.dept_id
JOIN 
    hospital_branch hb ON d.branch_no = hb.branch_no;
