# 1 List a patient's emergency contact information: 
-- Staff needs to find the relative contact information for a patient named Will Smith: 

SELECT R.Name, R.Contact_Info
FROM relative as R, relationship as RS, patient as P
WHERE R.Relative_ID = RS.Relative_ID
AND RS.Patient_ID = P.Patient_ID
AND P.Name = 'Will Smith';

# 2 List all patients with a peanut allergy：
-- Dr. Abby is compiling a list of all patients who have reported peanut allergy:

SELECT MC.Allergies, P.Name, P.Patient_ID
FROM medical_chart MC, monitoring_agreement MA, patient P
WHERE MC. Monitoring_Agreement_ID = MA. Monitoring_Agreement_ID
AND MA. Patient_ID = P.Patient_ID
AND MC.Allergies= 'peanut';

# 3 The count of patients for each measurement method. 
-- The health care team wants to count the distinct number of patients for each measurement method (fingerstick and continuous monitor):

SELECT 
  bsm.Measurement_Method,
  COUNT(DISTINCT p.Patient_ID) AS NumberOfPatients
FROM blood_sugar_measurement bsm, medical_record mr, monitoring_agreement ma, patient p
WHERE bsm.Blood_Sugar_Record_ID = mr.Record_ID 
	AND mr.Monitoring_Agreement_ID = ma.Monitoring_Agreement_ID
	AND ma.Patient_ID = p.Patient_ID
GROUP BY bsm.Measurement_Method;
    
# 4 Find the blood sugar level of Angelina Jolie:
-- Our celebrity patient- Angelina Jolie - is due for a follow up appointment, and her doctor needs to review her most recent blood sugar level to adjust her treatment plan effectively: 
SELECT Patient_ID, Name, Time_Stamp, Blood_Sugar_Level
FROM PatientMonitoringDetail
WHERE Name = 'Angelina Jolie';

# 5 Update the contact information of Angelina Jolie: 
-- Angelina Jolie has recently changed her phone number: 

UPDATE Patient
SET Contact_Info = '626-661-8888'
WHERE Patient_ID = 111106;

-- to check update:   
SELECT Patient_ID, Name, Contact_Info 
FROM Patient
WHERE Patient_ID = 111106;

# 6 Patient’s blood sugar level exceed 140 levels
-- The medical team wants to identify all occurrences for all patients for when blood sugar levels exceeded 140 mg/dl:  
SELECT Patient_ID, Name, Time_Stamp, Blood_Sugar_Level
FROM PatientMonitoringDetail
WHERE Blood_Sugar_Level > 140; 

# 7 List current Diagnoses for patient named Angelina Jolie:
-- Dr. Amy needs to review Angelina Jolie’s current diagnosis to prepare for an upcoming consultation. 
SELECT p.Name, p.Patient_ID, mc.Current_Diagnoses
FROM Patient p, Monitoring_Agreement ma, Medical_Chart mc
WHERE p.Patient_ID = ma.Patient_ID
AND ma.Monitoring_Agreement_ID = mc.Monitoring_Agreement_ID
AND p.Patient_ID = 111106;

# 8 List of all blood sugar measurements for each patient, ordered by Date and Time.
-- Dr. Amy needs to focus on the most recent blood sugar measurements to identify acute changes that might require immediate medical attention: 
SELECT p.Name, bsm.Date, bsm.Time, bsm.Blood_Sugar_Level, bsm.Measurement_Method
FROM patient p, monitoring_agreement ma, medical_record mr, blood_sugar_measurement bsm
WHERE p.Patient_ID = ma.Patient_ID 
	AND ma.Monitoring_Agreement_ID = mr.Monitoring_Agreement_ID 
	AND mr.Record_ID = bsm.Blood_Sugar_Record_ID
ORDER BY bsm.Date DESC, bsm.Time DESC;

# 9 Delete discontinued medical device
-- The manufacturer, Animas, announces that firmware version 3.5 for their Continuous Glucose Monitoring devices has been discontinued due to compatibility issues with the latest health monitoring software updates. This firmware is no longer supported. 

DELETE FROM monitoring_device
WHERE Firmware = 'v3.5';
SELECT * FROM monitoring_device;
 
-- to check your deletion:   
SELECT * FROM monitoring_device;

# 10 Find patients who had received 0-40g of carbs 
-- One of our staff-David is preparing for a review of his patients dietary habits. He wants to find out which patients had received 0-40g of carbs: 

SELECT p.Patient_ID, p.Name, ci.Food, ci.Carbs
FROM patient p, monitoring_agreement ma, medical_record mr, 
    carb_intake ci
WHERE p.Patient_ID = ma.Patient_ID 
	AND ma.Monitoring_Agreement_ID = mr.Monitoring_Agreement_ID 
    AND mr.Record_ID = ci.Carb_Record_ID AND ci.Carbs BETWEEN 0 AND 40;
    




