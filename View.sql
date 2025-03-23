# CREATE VIEW which joins Patient ID, Name, Record ID, Blood Sugar Level, Monitoring Agreement ID, Time Stamp, and Patient Status
CREATE VIEW PatientMonitoringDetail AS
SELECT 
    P.Patient_ID, 
    P.Name, 
    MR.Record_ID, 
    BSM.Blood_Sugar_Level, 
    MA.Monitoring_Agreement_ID, 
    MR.Time_Stamp, 
    MR.Patient_Status
FROM 
    patient P, 
    monitoring_agreement MA, 
    medical_record MR, 
    blood_sugar_measurement BSM
WHERE 
    P.Patient_ID = MA.Patient_ID AND
    MA.Monitoring_Agreement_ID = MR.Monitoring_Agreement_ID AND
    MR.Record_ID = BSM.Blood_Sugar_Record_ID;
