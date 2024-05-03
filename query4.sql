CREATE OR REPLACE PROCEDURE UpdatePatientWeight(
    p_patient_id IN patient.p_id%TYPE,
    p_new_weight IN patient.weight%TYPE,
    p_old_weight OUT patient.weight%TYPE
)
AS
BEGIN
    SELECT weight INTO p_old_weight FROM patient WHERE p_id = p_patient_id;
    UPDATE patient SET weight = p_new_weight WHERE p_id = p_patient_id;
    DBMS_OUTPUT.PUT_LINE('Old Weight for Patient ID ' || p_patient_id || ': ' || p_old_weight);
    DBMS_OUTPUT.PUT_LINE('New Weight for Patient ID ' || p_patient_id || ': ' || p_new_weight);
END;


SET SERVEROUTPUT ON;

DECLARE
    patient_id patient.p_id%TYPE := 18;
    new_weight patient.weight%TYPE := 79;
    old_weight patient.weight%TYPE;
BEGIN
    UpdatePatientWeight(patient_id, new_weight, old_weight);
END;
/
