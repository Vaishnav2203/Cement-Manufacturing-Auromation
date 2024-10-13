use cement;
select * from  dataset;

desc dataset;

#First Moment Decision

#Mill_TPH

#mean
SELECT AVG(Mill_TPH) AS mean_Mill_TPH
FROM dataset;

#median
SELECT Mill_TPH AS median_experience
FROM (
    SELECT Mill_TPH, ROW_NUMBER() OVER (ORDER BY Mill_TPH) AS row_num,
           COUNT(*) OVER () AS total_count
    FROM dataset
) AS subquery
WHERE row_num = (total_count + 1) / 2 OR row_num = (total_count + 2) / 2; 

#mode
 SELECT Mill_TPH AS Mill_TPH
FROM (
    SELECT Mill_TPH, COUNT(*) AS frequency
    FROM dataset
    GROUP BY Mill_TPH
    ORDER BY frequency DESC
    LIMIT 1
) AS subquery;



#Clinker_TPH

#mean
SELECT AVG(Clinker_TPH) AS mean_Clinker_TPH
FROM dataset;

#median
SELECT Clinker_TPH AS median_Clinker_TPH
FROM (
    SELECT Clinker_TPH, ROW_NUMBER() OVER (ORDER BY Clinker_TPH) AS row_num,
           COUNT(*) OVER () AS total_count
    FROM dataset
) AS subquery
WHERE row_num = (total_count + 1) / 2 OR row_num = (total_count + 2) / 2; 

#mode
 SELECT Clinker_TPH AS mode_Clinker_TPH
FROM (
    SELECT Clinker_TPH, COUNT(*) AS frequency
    FROM dataset
    GROUP BY Clinker_TPH
    ORDER BY frequency DESC
    LIMIT 1
) AS subquery;



#Gypsum_TPH

#mean
SELECT AVG(Gypsum_TPH) AS mean_Gypsum_TPH
FROM dataset;

#median
SELECT Gypsum_TPH AS median_Gypsum_TPH
FROM (
    SELECT Gypsum_TPH, ROW_NUMBER() OVER (ORDER BY Gypsum_TPH) AS row_num,
           COUNT(*) OVER () AS total_count
    FROM dataset
) AS subquery
WHERE row_num = (total_count + 1) / 2 OR row_num = (total_count + 2) / 2; 

#mode
 SELECT Gypsum_TPH AS mode_Gypsum_TPH
FROM (
    SELECT Gypsum_TPH, COUNT(*) AS frequency
    FROM dataset
    GROUP BY Gypsum_TPH
    ORDER BY frequency DESC
    LIMIT 1
) AS subquery;



#DFA_TPH

#mean
SELECT AVG(DFA_TPH) AS mean_DFA_TPH
FROM dataset;

#median
SELECT DFA_TPH AS median_DFA_TPH
FROM (
    SELECT DFA_TPH, ROW_NUMBER() OVER (ORDER BY DFA_TPH) AS row_num,
           COUNT(*) OVER () AS total_count
    FROM dataset
) AS subquery
WHERE row_num = (total_count + 1) / 2 OR row_num = (total_count + 2) / 2; 

#mode
 SELECT DFA_TPH AS mode_DFA_TPH
FROM (
    SELECT DFA_TPH, COUNT(*) AS frequency
    FROM dataset
    GROUP BY DFA_TPH
    ORDER BY frequency DESC
    LIMIT 1
) AS subquery;



#WFA_TPH

#mean
SELECT AVG(WFA_TPH) AS mean_WFA_TPH
FROM dataset;

#median
SELECT WFA_TPH AS median_WFA_TPH
FROM (
    SELECT WFA_TPH, ROW_NUMBER() OVER (ORDER BY WFA_TPH) AS row_num,
           COUNT(*) OVER () AS total_count
    FROM dataset
) AS subquery
WHERE row_num = (total_count + 1) / 2 OR row_num = (total_count + 2) / 2; 

#mode
 SELECT WFA_TPH AS mode_WFA_TPH
FROM (
    SELECT WFA_TPH, COUNT(*) AS frequency
    FROM dataset
    GROUP BY WFA_TPH
    ORDER BY frequency DESC
    LIMIT 1
) AS subquery;



#Mill_KW
#mean
SELECT AVG(Mill_KW) AS mean_Mill_KW
FROM dataset;

#median
SELECT Mill_KW AS median_Mill_KW
FROM (
    SELECT Mill_KW, ROW_NUMBER() OVER (ORDER BY Mill_KW) AS row_num,
           COUNT(*) OVER () AS total_count
    FROM dataset
) AS subquery
WHERE row_num = (total_count + 1) / 2 OR row_num = (total_count + 2) / 2; 

#mode
 SELECT Mill_KW AS mode_Mill_KW
FROM (
    SELECT Mill_KW, COUNT(*) AS frequency
    FROM dataset
    GROUP BY Mill_KW
    ORDER BY frequency DESC
    LIMIT 1
) AS subquery;



#Mill_InLet_Temp

#mean
SELECT AVG(Mill_InLet_Temp) AS mean_Mill_InLet_Temp
FROM dataset;

#median
SELECT Mill_InLet_Temp AS median_Mill_InLet_Temp
FROM (
    SELECT Mill_InLet_Temp, ROW_NUMBER() OVER (ORDER BY Mill_InLet_Temp) AS row_num,
           COUNT(*) OVER () AS total_count
    FROM dataset
) AS subquery
WHERE row_num = (total_count + 1) / 2 OR row_num = (total_count + 2) / 2; 

#mode
 SELECT Mill_InLet_Temp AS mode_Mill_InLet_Temp
FROM (
    SELECT Mill_InLet_Temp, COUNT(*) AS frequency
    FROM dataset
    GROUP BY Mill_InLet_Temp
    ORDER BY frequency DESC
    LIMIT 1
) AS subquery;



#Mill_OutLet_Temp

#mean
SELECT AVG(Mill_OutLet_Temp) AS mean_Mill_OutLet_Temp
FROM dataset;

#median
SELECT Mill_OutLet_Temp AS median_Mill_OutLet_Temp
FROM (
    SELECT Mill_OutLet_Temp, ROW_NUMBER() OVER (ORDER BY Mill_OutLet_Temp) AS row_num,
           COUNT(*) OVER () AS total_count
    FROM dataset
) AS subquery
WHERE row_num = (total_count + 1) / 2 OR row_num = (total_count + 2) / 2; 

#mode
 SELECT Mill_OutLet_Temp AS mode_Mill_OutLet_Temp
FROM (
    SELECT Mill_OutLet_Temp, COUNT(*) AS frequency
    FROM dataset
    GROUP BY Mill_OutLet_Temp
    ORDER BY frequency DESC
    LIMIT 1
) AS subquery;



#Mill_OutLet_BE_Amp

#mean
SELECT AVG(Mill_OutLet_BE_Amp) AS mean_Mill_OutLet_BE_Amp
FROM dataset;

#median
SELECT Mill_OutLet_BE_Amp AS median_Mill_OutLet_BE_Amp
FROM (
    SELECT Mill_OutLet_BE_Amp, ROW_NUMBER() OVER (ORDER BY Mill_OutLet_BE_Amp) AS row_num,
           COUNT(*) OVER () AS total_count
    FROM dataset
) AS subquery
WHERE row_num = (total_count + 1) / 2 OR row_num = (total_count + 2) / 2; 

#mode
 SELECT Mill_OutLet_BE_Amp AS mode_Mill_OutLet_BE_Amp
FROM (
    SELECT Mill_OutLet_BE_Amp, COUNT(*) AS frequency
    FROM dataset
    GROUP BY Mill_OutLet_BE_Amp
    ORDER BY frequency DESC
    LIMIT 1
) AS subquery;



#Mill_Vent_Fan_RPM

#mean
SELECT AVG(Mill_Vent_Fan_RPM) AS mean_Mill_Vent_Fan_RPM
FROM dataset;

#median
SELECT Mill_Vent_Fan_RPM AS median_Mill_Vent_Fan_RPM
FROM (
    SELECT Mill_Vent_Fan_RPM, ROW_NUMBER() OVER (ORDER BY Mill_Vent_Fan_RPM) AS row_num,
           COUNT(*) OVER () AS total_count
    FROM dataset
) AS subquery
WHERE row_num = (total_count + 1) / 2 OR row_num = (total_count + 2) / 2; 

#mode
 SELECT Mill_Vent_Fan_RPM AS mode_Mill_Vent_Fan_RPM
FROM (
    SELECT Mill_Vent_Fan_RPM, COUNT(*) AS frequency
    FROM dataset
    GROUP BY Mill_Vent_Fan_RPM
    ORDER BY frequency DESC
    LIMIT 1
) AS subquery;



#Mill_Vent_Fan_KW

#mean
SELECT AVG(Mill_Vent_Fan_KW) AS mean_Mill_Vent_Fan_KW
FROM dataset;

#median
SELECT Mill_Vent_Fan_KW AS median_Mill_Vent_Fan_KW
FROM (
    SELECT Mill_Vent_Fan_KW, ROW_NUMBER() OVER (ORDER BY Mill_Vent_Fan_KW) AS row_num,
           COUNT(*) OVER () AS total_count
    FROM dataset
) AS subquery
WHERE row_num = (total_count + 1) / 2 OR row_num = (total_count + 2) / 2; 

#mode
 SELECT Mill_Vent_Fan_KW AS mode_Mill_Vent_Fan_KW
FROM (
    SELECT Mill_Vent_Fan_KW, COUNT(*) AS frequency
    FROM dataset
    GROUP BY Mill_Vent_Fan_KW
    ORDER BY frequency DESC
    LIMIT 1
) AS subquery;



#Mill_Vent_BF_InLet_Draft

#mean
SELECT AVG(Mill_Vent_BF_InLet_Draft) AS mean_Mill_Vent_BF_InLet_Draft
FROM dataset;

#median
SELECT Mill_Vent_BF_InLet_Draft AS median_Mill_Vent_BF_InLet_Draft
FROM (
    SELECT Mill_Vent_BF_InLet_Draft, ROW_NUMBER() OVER (ORDER BY Mill_Vent_BF_InLet_Draft) AS row_num,
           COUNT(*) OVER () AS total_count
    FROM dataset
) AS subquery
WHERE row_num = (total_count + 1) / 2 OR row_num = (total_count + 2) / 2; 

#mode
 SELECT Mill_Vent_BF_InLet_Draft AS mode_Mill_Vent_BF_InLet_Draft
FROM (
    SELECT Mill_Vent_BF_InLet_Draft, COUNT(*) AS frequency
    FROM dataset
    GROUP BY Mill_Vent_BF_InLet_Draft
    ORDER BY frequency DESC
    LIMIT 1
) AS subquery;



#Mill_Vent_BF_OutLet_Draft

#mean
SELECT AVG(Mill_Vent_BF_OutLet_Draft) AS mean_Mill_Vent_BF_OutLet_Draft
FROM dataset;

#median
SELECT Mill_Vent_BF_OutLet_Draft AS median_Mill_Vent_BF_OutLet_Draft
FROM (
    SELECT Mill_Vent_BF_OutLet_Draft, ROW_NUMBER() OVER (ORDER BY Mill_Vent_BF_OutLet_Draft) AS row_num,
           COUNT(*) OVER () AS total_count
    FROM dataset
) AS subquery
WHERE row_num = (total_count + 1) / 2 OR row_num = (total_count + 2) / 2; 

#mode
 SELECT Mill_Vent_BF_OutLet_Draft AS mode_Mill_Vent_BF_OutLet_Draft
FROM (
    SELECT Mill_Vent_BF_OutLet_Draft, COUNT(*) AS frequency
    FROM dataset
    GROUP BY Mill_Vent_BF_OutLet_Draft
    ORDER BY frequency DESC
    LIMIT 1
) AS subquery;



#Reject

#mean
SELECT AVG(Reject) AS mean_Reject
FROM dataset;

#median
SELECT Reject AS median_Reject
FROM (
    SELECT Reject, ROW_NUMBER() OVER (ORDER BY Reject) AS row_num,
           COUNT(*) OVER () AS total_count
    FROM dataset
) AS subquery
WHERE row_num = (total_count + 1) / 2 OR row_num = (total_count + 2) / 2; 

#mode
 SELECT Reject AS mode_Reject
FROM (
    SELECT Reject, COUNT(*) AS frequency
    FROM dataset
    GROUP BY Reject
    ORDER BY frequency DESC
    LIMIT 1
) AS subquery;



#Sep_RPM

#mean
SELECT AVG(Sep_RPM) AS mean_Sep_RPM
FROM dataset;

#median
SELECT Sep_RPM AS median_Sep_RPM
FROM (
    SELECT Sep_RPM, ROW_NUMBER() OVER (ORDER BY Sep_RPM) AS row_num,
           COUNT(*) OVER () AS total_count
    FROM dataset
) AS subquery
WHERE row_num = (total_count + 1) / 2 OR row_num = (total_count + 2) / 2; 

#mode
 SELECT Sep_RPM AS mode_Sep_RPM
FROM (
    SELECT Sep_RPM, COUNT(*) AS frequency
    FROM dataset
    GROUP BY Sep_RPM
    ORDER BY frequency DESC
    LIMIT 1
) AS subquery;



#Sep_KW

#mean
SELECT AVG(Sep_KW) AS mean_Mill_TPHSep_KW
FROM dataset;

#median
SELECT Sep_KW AS median_Sep_KW
FROM (
    SELECT Sep_KW, ROW_NUMBER() OVER (ORDER BY Sep_KW) AS row_num,
           COUNT(*) OVER () AS total_count
    FROM dataset
) AS subquery
WHERE row_num = (total_count + 1) / 2 OR row_num = (total_count + 2) / 2; 

#mode
 SELECT Sep_KW AS mode_Sep_KW
FROM (
    SELECT Sep_KW, COUNT(*) AS frequency
    FROM dataset
    GROUP BY Sep_KW
    ORDER BY frequency DESC
    LIMIT 1
) AS subquery;



#Sep_Amp

#mean
SELECT AVG(Sep_Amp) AS mean_Sep_Amp
FROM dataset;

#median
SELECT Sep_Amp AS median_Sep_Amp
FROM (
    SELECT Sep_Amp, ROW_NUMBER() OVER (ORDER BY Sep_Amp) AS row_num,
           COUNT(*) OVER () AS total_count
    FROM dataset
) AS subquery
WHERE row_num = (total_count + 1) / 2 OR row_num = (total_count + 2) / 2; 

#mode
 SELECT Sep_Amp AS mode_Sep_Amp
FROM (
    SELECT Sep_Amp, COUNT(*) AS frequency
    FROM dataset
    GROUP BY Sep_Amp
    ORDER BY frequency DESC
    LIMIT 1
) AS subquery;



#CA_Fan_RPM

#mean
SELECT AVG(CA_Fan_RPM) AS mean_CA_Fan_RPM
FROM dataset;

#median
SELECT CA_Fan_RPM AS median_CA_Fan_RPM
FROM (
    SELECT CA_Fan_RPM, ROW_NUMBER() OVER (ORDER BY CA_Fan_RPM) AS row_num,
           COUNT(*) OVER () AS total_count
    FROM dataset
) AS subquery
WHERE row_num = (total_count + 1) / 2 OR row_num = (total_count + 2) / 2; 

#mode
 SELECT CA_Fan_RPM AS mode_CA_Fan_RPM
FROM (
    SELECT CA_Fan_RPM, COUNT(*) AS frequency
    FROM dataset
    GROUP BY CA_Fan_RPM
    ORDER BY frequency DESC
    LIMIT 1
) AS subquery;



#CA_Fan_KW

#mean
SELECT AVG(CA_Fan_KW) AS mean_CA_Fan_KW
FROM dataset;

#median
SELECT CA_Fan_KW AS median_CA_Fan_KW
FROM (
    SELECT CA_Fan_KW, ROW_NUMBER() OVER (ORDER BY CA_Fan_KW) AS row_num,
           COUNT(*) OVER () AS total_count
    FROM dataset
) AS subquery
WHERE row_num = (total_count + 1) / 2 OR row_num = (total_count + 2) / 2; 

#mode
 SELECT CA_Fan_KW AS mode_CA_Fan_KW
FROM (
    SELECT CA_Fan_KW, COUNT(*) AS frequency
    FROM dataset
    GROUP BY CA_Fan_KW
    ORDER BY frequency DESC
    LIMIT 1
) AS subquery;



#Mill_Folaphone

#mean
SELECT AVG(Mill_Folaphone) AS mean_Mill_Folaphone
FROM dataset;

#median
SELECT Mill_Folaphone AS median_Mill_Folaphone
FROM (
    SELECT Mill_Folaphone, ROW_NUMBER() OVER (ORDER BY Mill_Folaphone) AS row_num,
           COUNT(*) OVER () AS total_count
    FROM dataset
) AS subquery
WHERE row_num = (total_count + 1) / 2 OR row_num = (total_count + 2) / 2; 

#mode
 SELECT Mill_Folaphone AS mode_Mill_Folaphone
FROM (
    SELECT Mill_Folaphone, COUNT(*) AS frequency
    FROM dataset
    GROUP BY Mill_Folaphone
    ORDER BY frequency DESC
    LIMIT 1
) AS subquery;



#Mill_InLet_Draft

#mean
SELECT AVG(Mill_InLet_Draft) AS mean_Mill_InLet_Draft
FROM dataset;

#median
SELECT Mill_InLet_Draft AS median_Mill_InLet_Draft
FROM (
    SELECT Mill_InLet_Draft, ROW_NUMBER() OVER (ORDER BY Mill_InLet_Draft) AS row_num,
           COUNT(*) OVER () AS total_count
    FROM dataset
) AS subquery
WHERE row_num = (total_count + 1) / 2 OR row_num = (total_count + 2) / 2; 

#mode
 SELECT Mill_InLet_Draft AS mode_Mill_InLet_Draft
FROM (
    SELECT Mill_InLet_Draft, COUNT(*) AS frequency
    FROM dataset
    GROUP BY Mill_InLet_Draft
    ORDER BY frequency DESC
    LIMIT 1
) AS subquery;



#Mill_OutLet_Draft

#mean
SELECT AVG(Mill_OutLet_Draft) AS mean_Mill_OutLet_Draft
FROM dataset;

#median
SELECT Mill_OutLet_Draft AS median_Mill_OutLet_Draft
FROM (
    SELECT Mill_OutLet_Draft, ROW_NUMBER() OVER (ORDER BY Mill_OutLet_Draft) AS row_num,
           COUNT(*) OVER () AS total_count
    FROM dataset
) AS subquery
WHERE row_num = (total_count + 1) / 2 OR row_num = (total_count + 2) / 2; 

#mode
 SELECT Mill_OutLet_Draft AS mode_Mill_OutLet_Draft
FROM (
    SELECT Mill_OutLet_Draft, COUNT(*) AS frequency
    FROM dataset
    GROUP BY Mill_OutLet_Draft
    ORDER BY frequency DESC
    LIMIT 1
) AS subquery;



#Sep_Vent_InLet_Draft

#mean
SELECT AVG(Sep_Vent_InLet_Draft) AS mean_Sep_Vent_InLet_Draft
FROM dataset;

#median
SELECT Sep_Vent_InLet_Draft AS median_Sep_Vent_InLet_Draft
FROM (
    SELECT Sep_Vent_InLet_Draft, ROW_NUMBER() OVER (ORDER BY Sep_Vent_InLet_Draft) AS row_num,
           COUNT(*) OVER () AS total_count
    FROM dataset
) AS subquery
WHERE row_num = (total_count + 1) / 2 OR row_num = (total_count + 2) / 2; 

#mode
 SELECT Sep_Vent_InLet_Draft AS mode_Sep_Vent_InLet_Draft
FROM (
    SELECT Sep_Vent_InLet_Draft, COUNT(*) AS frequency
    FROM dataset
    GROUP BY Sep_Vent_InLet_Draft
    ORDER BY frequency DESC
    LIMIT 1
) AS subquery;



#Sep_Vent_OutLet_Draft

#mean
SELECT AVG(Sep_Vent_OutLet_Draft) AS mean_Sep_Vent_OutLet_Draft
FROM dataset;

#median
SELECT Sep_Vent_OutLet_Draft AS median_Sep_Vent_OutLet_Draft
FROM (
    SELECT Sep_Vent_OutLet_Draft, ROW_NUMBER() OVER (ORDER BY Sep_Vent_OutLet_Draft) AS row_num,
           COUNT(*) OVER () AS total_count
    FROM dataset
) AS subquery
WHERE row_num = (total_count + 1) / 2 OR row_num = (total_count + 2) / 2; 

#mode
 SELECT Sep_Vent_OutLet_Draft AS mode_Sep_Vent_OutLet_Draft
FROM (
    SELECT Sep_Vent_OutLet_Draft, COUNT(*) AS frequency
    FROM dataset
    GROUP BY Sep_Vent_OutLet_Draft
    ORDER BY frequency DESC
    LIMIT 1
) AS subquery;



#Sep_Vent_bag_filter_fan_kw

#mean
SELECT AVG(Sep_Vent_bag_filter_fan_kw) AS mean_Sep_Vent_bag_filter_fan_kw
FROM dataset;

#median
SELECT Sep_Vent_bag_filter_fan_kw AS median_Sep_Vent_bag_filter_fan_kw
FROM (
    SELECT Sep_Vent_bag_filter_fan_kw, ROW_NUMBER() OVER (ORDER BY Sep_Vent_bag_filter_fan_kw) AS row_num,
           COUNT(*) OVER () AS total_count
    FROM dataset
) AS subquery
WHERE row_num = (total_count + 1) / 2 OR row_num = (total_count + 2) / 2; 

#mode
 SELECT Sep_Vent_bag_filter_fan_kw AS mode_Sep_Vent_bag_filter_fan_kw
FROM (
    SELECT Sep_Vent_bag_filter_fan_kw, COUNT(*) AS frequency
    FROM dataset
    GROUP BY Sep_Vent_bag_filter_fan_kw
    ORDER BY frequency DESC
    LIMIT 1
) AS subquery;



#Sep_Vent_bag_filter_fan_rpm

#mean
SELECT AVG(Sep_Vent_bag_filter_fan_rpm) AS mean_Sep_Vent_bag_filter_fan_rpm
FROM dataset;

#median
SELECT Sep_Vent_bag_filter_fan_rpm AS median_Sep_Vent_bag_filter_fan_rpm
FROM (
    SELECT Sep_Vent_bag_filter_fan_rpm, ROW_NUMBER() OVER (ORDER BY Sep_Vent_bag_filter_fan_rpm) AS row_num,
           COUNT(*) OVER () AS total_count
    FROM dataset
) AS subquery
WHERE row_num = (total_count + 1) / 2 OR row_num = (total_count + 2) / 2; 

#mode
 SELECT Sep_Vent_bag_filter_fan_rpm AS mode_Sep_Vent_bag_filter_fan_rpm
FROM (
    SELECT Sep_Vent_bag_filter_fan_rpm, COUNT(*) AS frequency
    FROM dataset
    GROUP BY Sep_Vent_bag_filter_fan_rpm
    ORDER BY frequency DESC
    LIMIT 1
) AS subquery;

#Residue

#mean
SELECT AVG(Residue) AS mean_Residue
FROM dataset;

#median
SELECT Residue AS median_Residue
FROM (
    SELECT Residue, ROW_NUMBER() OVER (ORDER BY Residue) AS row_num,
           COUNT(*) OVER () AS total_count
    FROM dataset
) AS subquery
WHERE row_num = (total_count + 1) / 2 OR row_num = (total_count + 2) / 2; 

#mode
 SELECT Residue AS mode_Residue
FROM (
    SELECT Residue, COUNT(*) AS frequency
    FROM dataset
    GROUP BY Residue
    ORDER BY frequency DESC
    LIMIT 1
) AS subquery;


# Second Moment Business Decision/Measures of Dispersion

#Mill_TPH
SELECT VARIANCE(Mill_TPH) AS Mill_TPH_variance , 
STDDEV(Mill_TPH) AS Mill_TPH_stddev , 
MAX(Mill_TPH) - MIN(Mill_TPH) AS experience_range_Mill_TPH
FROM dataset;

#Clinker_TPH
SELECT VARIANCE(Clinker_TPH) AS variance , 
STDDEV(Clinker_TPH) AS stddev , 
MAX(Clinker_TPH) - MIN(Clinker_TPH) AS rrange
FROM dataset;

#Gypsum_TPH
SELECT VARIANCE(Gypsum_TPH) AS variance , 
STDDEV(Gypsum_TPH) AS stddev , 
MAX(Gypsum_TPH) - MIN(Gypsum_TPH) AS rrange
FROM dataset;

#DFA_TPH
SELECT VARIANCE(DFA_TPH) AS variance , 
STDDEV(DFA_TPH) AS stddev , 
MAX(DFA_TPH) - MIN(DFA_TPH) AS rrange
FROM dataset;

#WFA_TPH
SELECT VARIANCE(WFA_TPH) AS variance , 
STDDEV(WFA_TPH) AS stddev , 
MAX(WFA_TPH) - MIN(WFA_TPH) AS rrange
FROM dataset;

#Mill_KW
SELECT VARIANCE(Mill_KW) AS variance , 
STDDEV(Mill_KW) AS stddev , 
MAX(Mill_KW) - MIN(Mill_KW) AS rrange
FROM dataset;

#Mill_InLet_Temp
SELECT VARIANCE(Mill_InLet_Temp) AS variance , 
STDDEV(Mill_InLet_Temp) AS stddev , 
MAX(Mill_InLet_Temp) - MIN(Mill_InLet_Temp) AS rrange
FROM dataset;

#Mill_OutLet_Temp
SELECT VARIANCE(Mill_OutLet_Temp) AS variance , 
STDDEV(Mill_OutLet_Temp) AS stddev , 
MAX(Mill_OutLet_Temp) - MIN(Mill_OutLet_Temp) AS rrange
FROM dataset;

#Mill_OutLet_BE_Amp
SELECT VARIANCE(Mill_OutLet_BE_Amp) AS variance , 
STDDEV(Mill_OutLet_BE_Amp) AS stddev , 
MAX(Mill_OutLet_BE_Amp) - MIN(Mill_OutLet_BE_Amp) AS rrange
FROM dataset;

#Mill_Vent_Fan_RPM
SELECT VARIANCE(Mill_Vent_Fan_RPM) AS variance , 
STDDEV(Mill_Vent_Fan_RPM) AS stddev , 
MAX(Mill_Vent_Fan_RPM) - MIN(Mill_Vent_Fan_RPM) AS rrange
FROM dataset;

#Mill_Vent_Fan_KW
SELECT VARIANCE(Mill_Vent_Fan_KW) AS variance , 
STDDEV(Mill_Vent_Fan_KW) AS stddev , 
MAX(Mill_Vent_Fan_KW) - MIN(Mill_Vent_Fan_KW) AS rrange
FROM dataset;

#Mill_Vent_BF_InLet_Draft
SELECT VARIANCE(Mill_Vent_BF_InLet_Draft) AS variance , 
STDDEV(Mill_Vent_BF_InLet_Draft) AS stddev , 
MAX(Mill_Vent_BF_InLet_Draft) - MIN(Mill_Vent_BF_InLet_Draft) AS rrange
FROM dataset;

#Mill_Vent_BF_OutLet_Draft
SELECT VARIANCE(Mill_Vent_BF_OutLet_Draft) AS variance , 
STDDEV(Mill_Vent_BF_OutLet_Draft) AS stddev , 
MAX(Mill_Vent_BF_OutLet_Draft) - MIN(Mill_Vent_BF_OutLet_Draft) AS rrange
FROM dataset;

#Reject
SELECT VARIANCE(Reject) AS variance , 
STDDEV(Reject) AS stddev , 
MAX(Reject) - MIN(Reject) AS rrange
FROM dataset;

#Sep_RPM
SELECT VARIANCE(Sep_RPM) AS variance , 
STDDEV(Sep_RPM) AS stddev , 
MAX(Sep_RPM) - MIN(Sep_RPM) AS rrange
FROM dataset;

#Sep_KW
SELECT VARIANCE(Sep_KW) AS variance , 
STDDEV(Sep_KW) AS stddev , 
MAX(Sep_KW) - MIN(Sep_KW) AS rrange
FROM dataset;

#Sep_Amp
SELECT VARIANCE(Sep_Amp) AS variance , 
STDDEV(Sep_Amp) AS stddev , 
MAX(Sep_Amp) - MIN(Sep_Amp) AS rrange
FROM dataset;

#CA_Fan_RPM
SELECT VARIANCE(CA_Fan_RPM) AS variance , 
STDDEV(CA_Fan_RPM) AS stddev , 
MAX(CA_Fan_RPM) - MIN(CA_Fan_RPM) AS rrange
FROM dataset;

#CA_Fan_KW
SELECT VARIANCE(CA_Fan_KW) AS variance , 
STDDEV(CA_Fan_KW) AS stddev , 
MAX(CA_Fan_KW) - MIN(CA_Fan_KW) AS rrange
FROM dataset;

#Mill_Folaphone
SELECT VARIANCE(Mill_Folaphone) AS variance , 
STDDEV(Mill_Folaphone) AS stddev , 
MAX(Mill_Folaphone) - MIN(Gypsum_TPH) AS rrange
FROM dataset;

#Mill_InLet_Draft
SELECT VARIANCE(Mill_InLet_Draft) AS variance , 
STDDEV(Mill_InLet_Draft) AS stddev , 
MAX(Mill_InLet_Draft) - MIN(Mill_InLet_Draft) AS rrange
FROM dataset;

#Mill_OutLet_Draft
SELECT VARIANCE(Mill_OutLet_Draft) AS variance , 
STDDEV(Mill_OutLet_Draft) AS stddev , 
MAX(Mill_OutLet_Draft) - MIN(Mill_OutLet_Draft) AS rrange
FROM dataset;

#Sep_Vent_InLet_Draft
SELECT VARIANCE(Sep_Vent_InLet_Draft) AS variance , 
STDDEV(Sep_Vent_InLet_Draft) AS stddev , 
MAX(Sep_Vent_InLet_Draft) - MIN(Sep_Vent_InLet_Draft) AS rrange
FROM dataset;

#Sep_Vent_OutLet_Draft
SELECT VARIANCE(Sep_Vent_OutLet_Draft) AS variance , 
STDDEV(Sep_Vent_OutLet_Draft) AS stddev , 
MAX(Sep_Vent_OutLet_Draft) - MIN(Sep_Vent_OutLet_Draft) AS rrange
FROM dataset;

#Sep_Vent_bag_filter_fan_kw
SELECT VARIANCE(Sep_Vent_bag_filter_fan_kw) AS variance , 
STDDEV(Sep_Vent_bag_filter_fan_kw) AS stddev , 
MAX(Sep_Vent_bag_filter_fan_kw) - MIN(Sep_Vent_bag_filter_fan_kw) AS rrange
FROM dataset;

#Sep_Vent_bag_filter_fan_rpm
SELECT VARIANCE(Sep_Vent_bag_filter_fan_rpm) AS variance , 
STDDEV(Sep_Vent_bag_filter_fan_rpm) AS stddev , 
MAX(Sep_Vent_bag_filter_fan_rpm) - MIN(Sep_Vent_bag_filter_fan_rpm) AS rrange
FROM dataset;

#Residue
SELECT VARIANCE(Residue) AS variance , 
STDDEV(Residue) AS stddev , 
MAX(Residue) - MIN(Residue) AS rrange
FROM dataset;



# Third and Fourth Moment Business Decision
-- skewness and kurkosis 

#Mill_TPH
SELECT
    (
        SUM(POWER(Mill_TPH - (SELECT AVG(Mill_TPH) FROM dataset), 3)) / 
        (COUNT(*) * POWER((SELECT STDDEV(Mill_TPH) FROM dataset), 3))
    ) AS skewness,
    (
        (SUM(POWER(Mill_TPH - (SELECT AVG(Mill_TPH) FROM dataset), 4)) / 
        (COUNT(*) * POWER((SELECT STDDEV(Mill_TPH) FROM dataset), 4))) - 3
    ) AS kurtosis
FROM dataset;

#Clinker_TPH
SELECT
    (
        SUM(POWER(Clinker_TPH - (SELECT AVG(Clinker_TPH) FROM dataset), 3)) / 
        (COUNT(*) * POWER((SELECT STDDEV(Clinker_TPH) FROM dataset), 3))
    ) AS skewness,
    (
        (SUM(POWER(Clinker_TPH - (SELECT AVG(Clinker_TPH) FROM dataset), 4)) / 
        (COUNT(*) * POWER((SELECT STDDEV(Clinker_TPH) FROM dataset), 4))) - 3
    ) AS kurtosis
FROM dataset;

#Gypsum_TPH
SELECT
    (
        SUM(POWER(Gypsum_TPH - (SELECT AVG(Gypsum_TPH) FROM dataset), 3)) / 
        (COUNT(*) * POWER((SELECT STDDEV(Gypsum_TPH) FROM dataset), 3))
    ) AS skewness,
    (
        (SUM(POWER(Gypsum_TPH - (SELECT AVG(Gypsum_TPH) FROM dataset), 4)) / 
        (COUNT(*) * POWER((SELECT STDDEV(Gypsum_TPH) FROM dataset), 4))) - 3
    ) AS kurtosis
FROM dataset;

#DFA_TPH
SELECT
    (
        SUM(POWER(DFA_TPH - (SELECT AVG(DFA_TPH) FROM dataset), 3)) / 
        (COUNT(*) * POWER((SELECT STDDEV(DFA_TPH) FROM dataset), 3))
    ) AS DFA_skewness,
    (
        (SUM(POWER(DFA_TPH - (SELECT AVG(DFA_TPH) FROM dataset), 4)) / 
        (COUNT(*) * POWER((SELECT STDDEV(DFA_TPH) FROM dataset), 4))) - 3
    ) AS kurtosis
FROM dataset;

#WFA_TPH
SELECT
    (
        SUM(POWER(WFA_TPH - (SELECT AVG(WFA_TPH) FROM dataset), 3)) / 
        (COUNT(*) * POWER((SELECT STDDEV(WFA_TPH) FROM dataset), 3))
    ) AS skewness,
    (
        (SUM(POWER(WFA_TPH - (SELECT AVG(WFA_TPH) FROM dataset), 4)) / 
        (COUNT(*) * POWER((SELECT STDDEV(WFA_TPH) FROM dataset), 4))) - 3
    ) AS kurtosis
FROM dataset;

#Mill_KW
SELECT
    (
        SUM(POWER(Mill_KW - (SELECT AVG(Mill_KW) FROM dataset), 3)) / 
        (COUNT(*) * POWER((SELECT STDDEV(Mill_KW) FROM dataset), 3))
    ) AS skewness,
    (
        (SUM(POWER(Mill_KW - (SELECT AVG(Mill_KW) FROM dataset), 4)) / 
        (COUNT(*) * POWER((SELECT STDDEV(Mill_KW) FROM dataset), 4))) - 3
    ) AS kurtosis
FROM dataset;

#Mill_InLet_Temp
SELECT
    (
        SUM(POWER(Mill_InLet_Temp - (SELECT AVG(Mill_InLet_Temp) FROM dataset), 3)) / 
        (COUNT(*) * POWER((SELECT STDDEV(Mill_InLet_Temp) FROM dataset), 3))
    ) AS skewness,
    (
        (SUM(POWER(Mill_InLet_Temp - (SELECT AVG(Mill_InLet_Temp) FROM dataset), 4)) / 
        (COUNT(*) * POWER((SELECT STDDEV(Mill_InLet_Temp) FROM dataset), 4))) - 3
    ) AS kurtosis
FROM dataset;

#Mill_OutLet_Temp
SELECT
    (
        SUM(POWER(Mill_OutLet_Temp - (SELECT AVG(Mill_OutLet_Temp) FROM dataset), 3)) / 
        (COUNT(*) * POWER((SELECT STDDEV(Mill_OutLet_Temp) FROM dataset), 3))
    ) AS skewness,
    (
        (SUM(POWER(Mill_OutLet_Temp - (SELECT AVG(Mill_OutLet_Temp) FROM dataset), 4)) / 
        (COUNT(*) * POWER((SELECT STDDEV(Mill_OutLet_Temp) FROM dataset), 4))) - 3
    ) AS kurtosis
FROM dataset;

#Mill_OutLet_BE_Amp

SELECT
    (
        SUM(POWER(Mill_OutLet_BE_Amp - (SELECT AVG(Mill_OutLet_BE_Amp) FROM dataset), 3)) / 
        (COUNT(*) * POWER((SELECT STDDEV(Mill_OutLet_BE_Amp) FROM dataset), 3))
    ) AS skewness,
    (
        (SUM(POWER(Mill_OutLet_BE_Amp - (SELECT AVG(Mill_OutLet_BE_Amp) FROM dataset), 4)) / 
        (COUNT(*) * POWER((SELECT STDDEV(Mill_OutLet_BE_Amp) FROM dataset), 4))) - 3
    ) AS kurtosis
FROM dataset;

#Mill_Vent_Fan_RPM
SELECT
    (
        SUM(POWER(Mill_Vent_Fan_RPM - (SELECT AVG(Mill_Vent_Fan_RPM) FROM dataset), 3)) / 
        (COUNT(*) * POWER((SELECT STDDEV(Mill_Vent_Fan_RPM) FROM dataset), 3))
    ) AS skewness,
    (
        (SUM(POWER(Mill_Vent_Fan_RPM - (SELECT AVG(Mill_Vent_Fan_RPM) FROM dataset), 4)) / 
        (COUNT(*) * POWER((SELECT STDDEV(Mill_Vent_Fan_RPM) FROM dataset), 4))) - 3
    ) AS kurtosis
FROM dataset;

#Mill_Vent_Fan_KW
SELECT
    (
        SUM(POWER(Mill_Vent_Fan_KW - (SELECT AVG(Mill_Vent_Fan_KW) FROM dataset), 3)) / 
        (COUNT(*) * POWER((SELECT STDDEV(Mill_Vent_Fan_KW) FROM dataset), 3))
    ) AS skewness,
    (
        (SUM(POWER(Mill_Vent_Fan_KW - (SELECT AVG(Mill_Vent_Fan_KW) FROM dataset), 4)) / 
        (COUNT(*) * POWER((SELECT STDDEV(Mill_Vent_Fan_KW) FROM dataset), 4))) - 3
    ) AS kurtosis
FROM dataset;

#Mill_Vent_BF_InLet_Draft
SELECT
    (
        SUM(POWER(Mill_Vent_BF_InLet_Draft - (SELECT AVG(Mill_Vent_BF_InLet_Draft) FROM dataset), 3)) / 
        (COUNT(*) * POWER((SELECT STDDEV(Mill_Vent_BF_InLet_Draft) FROM dataset), 3))
    ) AS skewness,
    (
        (SUM(POWER(Mill_Vent_BF_InLet_Draft - (SELECT AVG(Mill_Vent_BF_InLet_Draft) FROM dataset), 4)) / 
        (COUNT(*) * POWER((SELECT STDDEV(Mill_Vent_BF_InLet_Draft) FROM dataset), 4))) - 3
    ) AS kurtosis
FROM dataset;

#Mill_Vent_BF_OutLet_Draft
SELECT
    (
        SUM(POWER(Mill_Vent_BF_OutLet_Draft - (SELECT AVG(Mill_Vent_BF_OutLet_Draft) FROM dataset), 3)) / 
        (COUNT(*) * POWER((SELECT STDDEV(Mill_Vent_BF_OutLet_Draft) FROM dataset), 3))
    ) AS skewness,
    (
        (SUM(POWER(Mill_Vent_BF_OutLet_Draft - (SELECT AVG(Mill_Vent_BF_OutLet_Draft) FROM dataset), 4)) / 
        (COUNT(*) * POWER((SELECT STDDEV(Mill_Vent_BF_OutLet_Draft) FROM dataset), 4))) - 3
    ) AS kurtosis
FROM dataset;

#Reject
SELECT
    (
        SUM(POWER(Reject - (SELECT AVG(Reject) FROM dataset), 3)) / 
        (COUNT(*) * POWER((SELECT STDDEV(Reject) FROM dataset), 3))
    ) AS skewness,
    (
        (SUM(POWER(Reject - (SELECT AVG(Reject) FROM dataset), 4)) / 
        (COUNT(*) * POWER((SELECT STDDEV(Reject) FROM dataset), 4))) - 3
    ) AS kurtosis
FROM dataset;

#Sep_RPM
SELECT
    (
        SUM(POWER(Sep_RPM - (SELECT AVG(Sep_RPM) FROM dataset), 3)) / 
        (COUNT(*) * POWER((SELECT STDDEV(Sep_RPM) FROM dataset), 3))
    ) AS skewness,
    (
        (SUM(POWER(Sep_RPM - (SELECT AVG(Sep_RPM) FROM dataset), 4)) / 
        (COUNT(*) * POWER((SELECT STDDEV(Sep_RPM) FROM dataset), 4))) - 3
    ) AS kurtosis
FROM dataset;

#Sep_KW
SELECT
    (
        SUM(POWER(Sep_KW - (SELECT AVG(Sep_KW) FROM dataset), 3)) / 
        (COUNT(*) * POWER((SELECT STDDEV(Sep_KW) FROM dataset), 3))
    ) AS skewness,
    (
        (SUM(POWER(Sep_KW - (SELECT AVG(Sep_KW) FROM dataset), 4)) / 
        (COUNT(*) * POWER((SELECT STDDEV(Sep_KW) FROM dataset), 4))) - 3
    ) AS kurtosis
FROM dataset;

#Sep_Amp
SELECT
    (
        SUM(POWER(Sep_Amp - (SELECT AVG(Sep_Amp) FROM dataset), 3)) / 
        (COUNT(*) * POWER((SELECT STDDEV(Sep_Amp) FROM dataset), 3))
    ) AS skewness,
    (
        (SUM(POWER(Sep_Amp - (SELECT AVG(Sep_Amp) FROM dataset), 4)) / 
        (COUNT(*) * POWER((SELECT STDDEV(Sep_Amp) FROM dataset), 4))) - 3
    ) AS kurtosis
FROM dataset;

#CA_Fan_RPM
SELECT
    (
        SUM(POWER(CA_Fan_RPM - (SELECT AVG(CA_Fan_RPM) FROM dataset), 3)) / 
        (COUNT(*) * POWER((SELECT STDDEV(CA_Fan_RPM) FROM dataset), 3))
    ) AS skewness,
    (
        (SUM(POWER(CA_Fan_RPM - (SELECT AVG(CA_Fan_RPM) FROM dataset), 4)) / 
        (COUNT(*) * POWER((SELECT STDDEV(CA_Fan_RPM) FROM dataset), 4))) - 3
    ) AS kurtosis
FROM dataset;

#CA_Fan_KW
SELECT
    (
        SUM(POWER(CA_Fan_KW - (SELECT AVG(CA_Fan_KW) FROM dataset), 3)) / 
        (COUNT(*) * POWER((SELECT STDDEV(CA_Fan_KW) FROM dataset), 3))
    ) AS skewness,
    (
        (SUM(POWER(CA_Fan_KW - (SELECT AVG(CA_Fan_KW) FROM dataset), 4)) / 
        (COUNT(*) * POWER((SELECT STDDEV(CA_Fan_KW) FROM dataset), 4))) - 3
    ) AS kurtosis
FROM dataset;

#Mill_Folaphone
SELECT
    (
        SUM(POWER(Mill_Folaphone - (SELECT AVG(Mill_Folaphone) FROM dataset), 3)) / 
        (COUNT(*) * POWER((SELECT STDDEV(Mill_Folaphone) FROM dataset), 3))
    ) AS skewness,
    (
        (SUM(POWER(Mill_Folaphone - (SELECT AVG(Mill_Folaphone) FROM dataset), 4)) / 
        (COUNT(*) * POWER((SELECT STDDEV(Mill_Folaphone) FROM dataset), 4))) - 3
    ) AS kurtosis
FROM dataset;

#Mill_InLet_Draft
SELECT
    (
        SUM(POWER(Mill_InLet_Draft - (SELECT AVG(Mill_InLet_Draft) FROM dataset), 3)) / 
        (COUNT(*) * POWER((SELECT STDDEV(Mill_InLet_Draft) FROM dataset), 3))
    ) AS skewness,
    (
        (SUM(POWER(Mill_InLet_Draft - (SELECT AVG(Mill_InLet_Draft) FROM dataset), 4)) / 
        (COUNT(*) * POWER((SELECT STDDEV(Mill_InLet_Draft) FROM dataset), 4))) - 3
    ) AS kurtosis
FROM dataset;

#Mill_OutLet_Draft
SELECT
    (
        SUM(POWER(Mill_OutLet_Draft - (SELECT AVG(Mill_OutLet_Draft) FROM dataset), 3)) / 
        (COUNT(*) * POWER((SELECT STDDEV(Mill_OutLet_Draft) FROM dataset), 3))
    ) AS skewness,
    (
        (SUM(POWER(Mill_OutLet_Draft - (SELECT AVG(Mill_OutLet_Draft) FROM dataset), 4)) / 
        (COUNT(*) * POWER((SELECT STDDEV(Mill_OutLet_Draft) FROM dataset), 4))) - 3
    ) AS kurtosis
FROM dataset;

#Sep_Vent_InLet_Draft
SELECT
    (
        SUM(POWER(Sep_Vent_InLet_Draft - (SELECT AVG(Sep_Vent_InLet_Draft) FROM dataset), 3)) / 
        (COUNT(*) * POWER((SELECT STDDEV(Sep_Vent_InLet_Draft) FROM dataset), 3))
    ) AS skewness,
    (
        (SUM(POWER(Sep_Vent_InLet_Draft - (SELECT AVG(Sep_Vent_InLet_Draft) FROM dataset), 4)) / 
        (COUNT(*) * POWER((SELECT STDDEV(Sep_Vent_InLet_Draft) FROM dataset), 4))) - 3
    ) AS kurtosis
FROM dataset;

#Sep_Vent_OutLet_Draft
SELECT
    (
        SUM(POWER(Sep_Vent_OutLet_Draft - (SELECT AVG(Sep_Vent_OutLet_Draft) FROM dataset), 3)) / 
        (COUNT(*) * POWER((SELECT STDDEV(Sep_Vent_OutLet_Draft) FROM dataset), 3))
    ) AS skewness,
    (
        (SUM(POWER(Sep_Vent_OutLet_Draft - (SELECT AVG(Sep_Vent_OutLet_Draft) FROM dataset), 4)) / 
        (COUNT(*) * POWER((SELECT STDDEV(Sep_Vent_OutLet_Draft) FROM dataset), 4))) - 3
    ) AS kurtosis
FROM dataset;

#Sep_Vent_bag_filter_fan_kw
SELECT
    (
        SUM(POWER(Sep_Vent_bag_filter_fan_kw - (SELECT AVG(Sep_Vent_bag_filter_fan_kw) FROM dataset), 3)) / 
        (COUNT(*) * POWER((SELECT STDDEV(Sep_Vent_bag_filter_fan_kw) FROM dataset), 3))
    ) AS skewness,
    (
        (SUM(POWER(Sep_Vent_bag_filter_fan_kw - (SELECT AVG(Sep_Vent_bag_filter_fan_kw) FROM dataset), 4)) / 
        (COUNT(*) * POWER((SELECT STDDEV(Sep_Vent_bag_filter_fan_kw) FROM dataset), 4))) - 3
    ) AS kurtosis
FROM dataset;

#Sep_Vent_bag_filter_fan_rpm
SELECT
    (
        SUM(POWER(Sep_Vent_bag_filter_fan_rpm - (SELECT AVG(Sep_Vent_bag_filter_fan_rpm) FROM dataset), 3)) / 
        (COUNT(*) * POWER((SELECT STDDEV(Sep_Vent_bag_filter_fan_rpm) FROM dataset), 3))
    ) AS skewness,
    (
        (SUM(POWER(Sep_Vent_bag_filter_fan_rpm - (SELECT AVG(Sep_Vent_bag_filter_fan_rpm) FROM dataset), 4)) / 
        (COUNT(*) * POWER((SELECT STDDEV(Sep_Vent_bag_filter_fan_rpm) FROM dataset), 4))) - 3
    ) AS kurtosis
FROM dataset;

#Residue
SELECT
    (
        SUM(POWER(Residue - (SELECT AVG(Residue) FROM dataset), 3)) / 
        (COUNT(*) * POWER((SELECT STDDEV(Residue) FROM dataset), 3))
    ) AS skewness,
    (
        (SUM(POWER(Residue - (SELECT AVG(Residue) FROM dataset), 4)) / 
        (COUNT(*) * POWER((SELECT STDDEV(Residue) FROM dataset), 4))) - 3
    ) AS kurtosis
FROM dataset;

#             DUPLICATES

SELECT `Date_&_Time`,Mill_TPH, Clinker_TPH, Gypsum_TPH, DFA_TPH, WFA_TPH, Mill_KW, Mill_InLet_Temp, Mill_OutLet_Temp, Mill_OutLet_BE_Amp,
Mill_Vent_Fan_RPM, Mill_Vent_Fan_KW, Mill_Vent_BF_InLet_Draft, Mill_Vent_BF_OutLet_Draft, Reject, Sep_RPM, Sep_KW, Sep_Amp, CA_Fan_RPM,
CA_Fan_KW, Mill_Folaphone, Mill_InLet_Draft, Mill_OutLet_Draft, Sep_Vent_InLet_Draft, Sep_Vent_OutLet_Draft, 
Sep_Vent_bag_filter_fan_kw, Sep_Vent_bag_filter_fan_rpm, Residue, COUNT(*) AS Count 
FROM dataset
GROUP BY `Date_&_Time`,Mill_TPH, Clinker_TPH, Gypsum_TPH, DFA_TPH, WFA_TPH, Mill_KW, Mill_InLet_Temp, Mill_OutLet_Temp, Mill_OutLet_BE_Amp,
Mill_Vent_Fan_RPM, Mill_Vent_Fan_KW, Mill_Vent_BF_InLet_Draft, Mill_Vent_BF_OutLet_Draft, Reject, Sep_RPM, Sep_KW, Sep_Amp, CA_Fan_RPM,
CA_Fan_KW, Mill_Folaphone, Mill_InLet_Draft, Mill_OutLet_Draft, Sep_Vent_InLet_Draft, Sep_Vent_OutLet_Draft, 
Sep_Vent_bag_filter_fan_kw, Sep_Vent_bag_filter_fan_rpm, Residue
HAVING Count > 1 ;

# TREATMENT OF DUPLICATE
SELECT DISTINCT* FROM dataset;

create table temp_table1 as select distinct* from dataset;

delete from dataset;

insert into dataset select * from temp_table1;


# TREATMENT OF OUTLIER

# Identifing outlier using standard deviation
#         Mill_TPH
# OUTLIER PRESENT
SELECT  Mill_TPH
FROM dataset 
WHERE Mill_TPH > ( SELECT AVG(Mill_TPH) + (3* STDDEV(Mill_TPH))
FROM dataset)
OR Mill_TPH < ( SELECT AVG(Mill_TPH) - (3* STDDEV(Mill_TPH))
FROM dataset);
# TREATMENT: Winsorization 
UPDATE dataset
SET Mill_TPH =
LEAST(GREATEST(Mill_TPH, 139.22375), 195.47375) 
WHERE Mill_TPH < 139.22375 OR Mill_TPH > 195.47375;
 
 #Clinker_TPH
# OUTLIER PRESENT
SELECT  Clinker_TPH
FROM dataset 
WHERE Clinker_TPH > ( SELECT AVG(Clinker_TPH) + (3* STDDEV(Clinker_TPH))
FROM dataset)
OR Clinker_TPH < ( SELECT AVG(Clinker_TPH) - (3* STDDEV(Clinker_TPH))
FROM dataset);
# TREATMENT: Winsorization 
UPDATE dataset
SET Clinker_TPH =
LEAST(GREATEST(Clinker_TPH, 79.55875), 114.48875000000001) 
WHERE Clinker_TPH < 79.55875 OR Clinker_TPH > 114.48875000000001;

 #Gypsum_TPH
# OUTLIER PRESENT
SELECT  Gypsum_TPH
FROM dataset 
WHERE Gypsum_TPH > ( SELECT AVG(Gypsum_TPH) + (3* STDDEV(Gypsum_TPH))
FROM dataset)
OR Gypsum_TPH < ( SELECT AVG(Gypsum_TPH) - (3* STDDEV(Gypsum_TPH))
FROM dataset);
# TREATMENT: Winsorization 
UPDATE dataset
SET Gypsum_TPH =
LEAST(GREATEST(Gypsum_TPH, 3.53), 6.56) 
WHERE Gypsum_TPH < 3.53 OR Gypsum_TPH > 6.569;

 #DFA_TPH
# OUTLIER PRESENT
SELECT  DFA_TPH
FROM dataset 
WHERE DFA_TPH > ( SELECT AVG(DFA_TPH) + (3* STDDEV(DFA_TPH))
FROM dataset)
OR DFA_TPH < ( SELECT AVG(DFA_TPH) - (3* STDDEV(DFA_TPH))
FROM dataset);
# TREATMENT: Winsorization 
UPDATE dataset
SET DFA_TPH =
LEAST(GREATEST(DFA_TPH, 44.39500000000001), 70.91499999999999) 
WHERE DFA_TPH < 44.39500000000001 OR DFA_TPH > 70.91499999999999;

 #WFA_TPH
# OUTLIER PRESENT
SELECT  WFA_TPH
FROM dataset 
WHERE WFA_TPH > ( SELECT AVG(WFA_TPH) + (3* STDDEV(WFA_TPH))
FROM dataset)
OR WFA_TPH < ( SELECT AVG(WFA_TPH) - (3* STDDEV(WFA_TPH))
FROM dataset);
# TREATMENT: Winsorization 
UPDATE dataset
SET WFA_TPH =
LEAST(GREATEST(WFA_TPH, -0.245), 14.355) 
WHERE WFA_TPH < -0.245 OR WFA_TPH > 14.355;

 #Mill_KW
# OUTLIER PRESENT
SELECT  Mill_KW
FROM dataset 
WHERE Mill_KW > ( SELECT AVG(Mill_KW) + (3* STDDEV(Mill_KW))
FROM dataset)
OR Mill_KW < ( SELECT AVG(Mill_KW) - (3* STDDEV(Mill_KW))
FROM dataset);
# TREATMENT: Winsorization 
UPDATE dataset
SET Mill_KW =
LEAST(GREATEST(Mill_KW, 3337.175), 4015.7750000000005) 
WHERE Mill_KW < 3337.175 OR Mill_KW > 4015.7750000000005;

 #Mill_InLet_Temp
# OUTLIER PRESENT
SELECT  Mill_InLet_Temp
FROM dataset 
WHERE Mill_InLet_Temp > ( SELECT AVG(Mill_InLet_Temp) + (3* STDDEV(Mill_InLet_Temp))
FROM dataset)
OR Mill_InLet_Temp < ( SELECT AVG(Mill_InLet_Temp) - (3* STDDEV(Mill_InLet_Temp))
FROM dataset);
# TREATMENT: Winsorization 
UPDATE dataset
SET Mill_InLet_Temp =
LEAST(GREATEST(Mill_InLet_Temp, 23.089), 41.89) 
WHERE Mill_InLet_Temp < 23.089 OR Mill_InLet_Temp > 41.89;

 #Mill_OutLet_Temp
# OUTLIER PRESENT
SELECT  Mill_OutLet_Temp
FROM dataset 
WHERE Mill_OutLet_Temp > ( SELECT AVG(Mill_OutLet_Temp) + (3* STDDEV(Mill_OutLet_Temp))
FROM dataset)
OR Mill_OutLet_Temp < ( SELECT AVG(Mill_OutLet_Temp) - (3* STDDEV(Mill_OutLet_Temp))
FROM dataset);
# TREATMENT: Winsorization 
UPDATE dataset
SET Mill_OutLet_Temp =
LEAST(GREATEST(Mill_OutLet_Temp, 79.03250000000003), 106.01249999999999) 
WHERE Mill_OutLet_Temp < 79.03250000000003 OR Mill_OutLet_Temp > 106.01249999999999;

 #Mill_OutLet_BE_Amp
# OUTLIER PRESENT
SELECT  Mill_OutLet_BE_Amp
FROM dataset 
WHERE Mill_OutLet_BE_Amp > ( SELECT AVG(Mill_OutLet_BE_Amp) + (3* STDDEV(Mill_OutLet_BE_Amp))
FROM dataset)
OR Mill_OutLet_BE_Amp < ( SELECT AVG(Mill_OutLet_BE_Amp) - (3* STDDEV(Mill_OutLet_BE_Amp))
FROM dataset);
# TREATMENT: Winsorization 
UPDATE dataset
SET Mill_OutLet_BE_Amp =
LEAST(GREATEST(Mill_OutLet_BE_Amp, 33.135), 67.015) 
WHERE Mill_OutLet_BE_Amp < 33.135 OR Mill_OutLet_BE_Amp > 67.015;

 #Mill_Vent_Fan_RPM
# OUTLIER PRESENT
SELECT  Mill_Vent_Fan_RPM
FROM dataset 
WHERE Mill_Vent_Fan_RPM > ( SELECT AVG(Mill_Vent_Fan_RPM) + (3* STDDEV(Mill_Vent_Fan_RPM))
FROM dataset)
OR Mill_Vent_Fan_RPM < ( SELECT AVG(Mill_Vent_Fan_RPM) - (3* STDDEV(Mill_Vent_Fan_RPM))
FROM dataset);


 #Mill_Vent_Fan_KW
# OUTLIER PRESENT
SELECT  Mill_Vent_Fan_KW
FROM dataset 
WHERE Mill_Vent_Fan_KW > ( SELECT AVG(Mill_Vent_Fan_KW) + (3* STDDEV(Mill_Vent_Fan_KW))
FROM dataset)
OR Mill_Vent_Fan_KW < ( SELECT AVG(Mill_Vent_Fan_KW) - (3* STDDEV(Mill_Vent_Fan_KW))
FROM dataset);
# TREATMENT: Winsorization 
UPDATE dataset
SET Mill_Vent_Fan_KW =
LEAST(GREATEST(Mill_Vent_Fan_KW, 33.425000000000004), 59.865) 
WHERE Mill_Vent_Fan_KW < 33.425000000000004 OR Mill_Vent_Fan_KW > 59.865;

 #Mill_Vent_BF_outlet_Draft
# OUTLIER PRESENT
SELECT  Mill_Vent_BF_outlet_Draft
FROM dataset 
WHERE Mill_Vent_BF_outlet_Draft > ( SELECT AVG(Mill_Vent_BF_outlet_Draft) + (3* STDDEV(Mill_Vent_BF_outlet_Draft))
FROM dataset)
OR Mill_Vent_BF_outlet_Draft < ( SELECT AVG(Mill_Vent_BF_outlet_Draft) - (3* STDDEV(Mill_Vent_BF_outlet_Draft))
FROM dataset);
# TREATMENT: Winsorization 
UPDATE dataset
SET Mill_Vent_BF_outlet_Draft =
LEAST(GREATEST(Mill_Vent_BF_outlet_Draft, 133.39999999999998), 244.94000000000005) 
WHERE Mill_Vent_BF_outlet_Draft < 133.39999999999998 OR Mill_Vent_BF_outlet_Draft > 244.94000000000005;

 #Reject 
# OUTLIER PRESENT
SELECT  Reject
FROM dataset 
WHERE Reject > ( SELECT AVG(Reject) + (3* STDDEV(Reject))
FROM dataset)
OR Reject < ( SELECT AVG(Reject) - (3* STDDEV(Reject))
FROM dataset);
# TREATMENT: Winsorization 
UPDATE dataset
SET Reject =
LEAST(GREATEST(Reject, 19.97), 218.75) 
WHERE Reject < 19.97 OR Reject > 218.75;

 #Sep_RPM
# OUTLIER PRESENT
SELECT  Sep_RPM
FROM dataset 
WHERE Sep_RPM > ( SELECT AVG(Sep_RPM) + (3* STDDEV(Sep_RPM))
FROM dataset)
OR Sep_RPM < ( SELECT AVG(Sep_RPM) - (3* STDDEV(Sep_RPM))
FROM dataset);
# TREATMENT: Winsorization 
UPDATE dataset
SET Sep_RPM =
LEAST(GREATEST(Sep_RPM, 901.12), 999.19) 
WHERE Sep_RPM < 901.12 OR Sep_RPM > 999.19;

 #Sep_KW
# OUTLIER PRESENT
SELECT  Sep_KW
FROM dataset 
WHERE Sep_KW > ( SELECT AVG(Sep_KW) + (3* STDDEV(Sep_KW))
FROM dataset)
OR Sep_KW < ( SELECT AVG(Sep_KW) - (3* STDDEV(Sep_KW))
FROM dataset);
# TREATMENT: Winsorization 
UPDATE dataset
SET Sep_KW =
LEAST(GREATEST(Sep_KW, 14), 92.54) 
WHERE Sep_KW < 14 OR Sep_KW > 92.54;

 #Clinker_TPH
# OUTLIER PRESENT
SELECT  Sep_Amp
FROM dataset 
WHERE Sep_Amp > ( SELECT AVG(Sep_Amp) + (3* STDDEV(Sep_Amp))
FROM dataset)
OR Sep_Amp < ( SELECT AVG(Sep_Amp) - (3* STDDEV(Sep_Amp))
FROM dataset);
# TREATMENT: Winsorization 
UPDATE dataset
SET Sep_Amp =
LEAST(GREATEST(Sep_Amp, 112.0175), 171.15749) 
WHERE Sep_Amp < 112.0175 OR Sep_Amp > 171.15749;

 #CA_Fan_RPM
# OUTLIER PRESENT
SELECT  CA_Fan_RPM
FROM dataset 
WHERE CA_Fan_RPM > ( SELECT AVG(CA_Fan_RPM) + (3* STDDEV(CA_Fan_RPM))
FROM dataset)
OR CA_Fan_RPM < ( SELECT AVG(CA_Fan_RPM) - (3* STDDEV(CA_Fan_RPM))
FROM dataset);
# TREATMENT: Winsorization 
UPDATE dataset
SET CA_Fan_RPM =
LEAST(GREATEST(CA_Fan_RPM, 885.00125), 925.8512499999999) 
WHERE CA_Fan_RPM < 885.00125 OR CA_Fan_RPM > 925.8512499999999;

 #CA_Fan_KW
# OUTLIER PRESENT
SELECT  CA_Fan_KW
FROM dataset 
WHERE CA_Fan_KW > ( SELECT AVG(CA_Fan_KW) + (3* STDDEV(CA_Fan_KW))
FROM dataset)
OR CA_Fan_KW < ( SELECT AVG(CA_Fan_KW) - (3* STDDEV(CA_Fan_KW))
FROM dataset);
# TREATMENT: Winsorization 
UPDATE dataset
SET CA_Fan_KW =
LEAST(GREATEST(CA_Fan_KW, 302.65), 356.09) 
WHERE CA_Fan_KW < 302.65 OR CA_Fan_KW > 356.09;

 #Mill_InLet_Draft
# OUTLIER PRESENT
SELECT  Mill_InLet_Draft
FROM dataset 
WHERE Mill_InLet_Draft > ( SELECT AVG(Mill_InLet_Draft) + (3* STDDEV(Mill_InLet_Draft))
FROM dataset)
OR Mill_InLet_Draft < ( SELECT AVG(Mill_InLet_Draft) - (3* STDDEV(Mill_InLet_Draft))
FROM dataset);
# TREATMENT: Winsorization 
UPDATE dataset
SET Mill_InLet_Draft =
LEAST(GREATEST(Mill_InLet_Draft, 12.35), 33.55) 
WHERE Mill_InLet_Draft < 12.35 OR Mill_InLet_Draft > 33.55;

 #Sep_Vent_InLet_Draft
# OUTLIER PRESENT
SELECT  Sep_Vent_InLet_Draft
FROM dataset 
WHERE Sep_Vent_InLet_Draft > ( SELECT AVG(Sep_Vent_InLet_Draft) + (3* STDDEV(Sep_Vent_InLet_Draft))
FROM dataset)
OR Sep_Vent_InLet_Draft < ( SELECT AVG(Sep_Vent_InLet_Draft) - (3* STDDEV(Sep_Vent_InLet_Draft))
FROM dataset);
# TREATMENT: Winsorization 
UPDATE dataset
SET Sep_Vent_InLet_Draft =
LEAST(GREATEST(Sep_Vent_InLet_Draft, 125.20499999999997), 146.52500000000003) 
WHERE Sep_Vent_InLet_Draft < 125.20499999999997 OR Sep_Vent_InLet_Draft > 146.52500000000003;

 #Sep_Vent_OutLet_Draft
# OUTLIER PRESENT
SELECT  Sep_Vent_OutLet_Draft
FROM dataset 
WHERE Sep_Vent_OutLet_Draft > ( SELECT AVG(Sep_Vent_OutLet_Draft) + (3* STDDEV(Sep_Vent_OutLet_Draft))
FROM dataset)
OR Sep_Vent_OutLet_Draft < ( SELECT AVG(Sep_Vent_OutLet_Draft) - (3* STDDEV(Sep_Vent_OutLet_Draft))
FROM dataset);
# TREATMENT: Winsorization 
UPDATE dataset
SET Sep_Vent_OutLet_Draft =
LEAST(GREATEST(Sep_Vent_OutLet_Draft, 200.44000000000003), 230.99999999999997) 
WHERE Sep_Vent_OutLet_Draft < 200.44000000000003 OR Sep_Vent_OutLet_Draft > 230.99999999999997;

 #Sep_Vent_bag_filter_fan_kw
# OUTLIER PRESENT
SELECT  Sep_Vent_bag_filter_fan_kw
FROM dataset 
WHERE Sep_Vent_bag_filter_fan_kw > ( SELECT AVG(Sep_Vent_bag_filter_fan_kw) + (3* STDDEV(Sep_Vent_bag_filter_fan_kw))
FROM dataset)
OR Sep_Vent_bag_filter_fan_kw < ( SELECT AVG(Sep_Vent_bag_filter_fan_kw) - (3* STDDEV(Sep_Vent_bag_filter_fan_kw))
FROM dataset);
# TREATMENT: Winsorization 
UPDATE dataset
SET Sep_Vent_bag_filter_fan_kw =
LEAST(GREATEST(Sep_Vent_bag_filter_fan_kw, 5.12500), 29.805) 
WHERE Sep_Vent_bag_filter_fan_kw < 5.12500 OR Sep_Vent_bag_filter_fan_kw > 29.805;

 #Sep_Vent_bag_filter_fan_rpm
# OUTLIER PRESENT
SELECT  Sep_Vent_bag_filter_fan_rpm
FROM dataset 
WHERE Sep_Vent_bag_filter_fan_rpm > ( SELECT AVG(Sep_Vent_bag_filter_fan_rpm) + (3* STDDEV(Sep_Vent_bag_filter_fan_rpm))
FROM dataset)
OR Sep_Vent_bag_filter_fan_rpm < ( SELECT AVG(Sep_Vent_bag_filter_fan_rpm) - (3* STDDEV(Sep_Vent_bag_filter_fan_rpm))
FROM dataset);
# TREATMENT: Winsorization 
UPDATE dataset
SET Sep_Vent_bag_filter_fan_rpm =
LEAST(GREATEST(Sep_Vent_bag_filter_fan_rpm,729.7912499999999), 783.6812500000002) 
WHERE Sep_Vent_bag_filter_fan_rpm < 729.7912499999999 OR Sep_Vent_bag_filter_fan_rpm > 783.6812500000002;


# DATA TRANSFORMATION

#Mill_TPH
# BOX COX TRANSFORMATION
ALTER TABLE dataset ADD 
Boxcox_Mill_TPH FLOAT;

UPDATE dataset
SET Boxcox_Mill_TPH=
CASE
WHEN 5.407434011189021 = 0 THEN
LOG(Mill_TPH)
ELSE (POWER(Mill_TPH, 5.407434011189021) - 1)/ 5.407434011189021
END;

#Clinker_TPH
# BOX COX TRANSFORMATION
ALTER TABLE dataset ADD 
Boxcox_Clinker_TPH FLOAT;

UPDATE dataset
SET Boxcox_Clinker_TPH = 
CASE
WHEN 4.863348598106834 = 0 THEN
LOG(Clinker_TPH)
ELSE (POWER(Clinker_TPH, 4.863348598106834) - 1)/ 4.863348598106834
END ;

#Gypsum_TPH
# BOX COX TRANSFORMATION
ALTER TABLE dataset ADD 
Boxcox_Gypsum_TPH FLOAT;

UPDATE dataset
SET Boxcox_Gypsum_TPH = 
CASE
WHEN 5.331896508150782 = 0 THEN
LOG(Gypsum_TPH)
ELSE (POWER(Gypsum_TPH, 5.331896508150782) - 1)/ 5.331896508150782
END;

#DFA_TPH
# BOX COX TRANSFORMATION
ALTER TABLE dataset ADD 
Boxcox_DFA_TPH FLOAT;

UPDATE dataset
SET Boxcox_DFA_TPH = 
CASE
WHEN 5.762509905397968 = 0 THEN
LOG(DFA_TPH)
ELSE (POWER(DFA_TPH, 5.762509905397968) - 1)/ 5.762509905397968
END;

#WFA_TPH (negative data)
# BOX COX TRANSFORMATION
#ALTER TABLE dataset ADD 
#Boxcox_WFA_TPH FLOAT;

#UPDATE dataset
#SET Boxcox_WFA_TPH =
#CASE
#WHEN lambda = 0 THEN
#LOG(WFA_TPH)
#ELSE (POWER(WFA_TPH, lambda) - 1)/ lambda
#END;

#Mill_KW
# BOX COX TRANSFORMATION
ALTER TABLE dataset ADD 
Boxcox_Mill_KW FLOAT;

UPDATE dataset
SET Boxcox_Mill_KW =
CASE
WHEN -6.453511682395741 = 0 THEN
LOG(Mill_KW)
ELSE (POWER(Mill_KW, -6.453511682395741) - 1)/ -6.453511682395741
END;

#Mill_InLet_Temp
# BOX COX TRANSFORMATION
ALTER TABLE dataset ADD 
Boxcox_Mill_InLet_Temp FLOAT;

UPDATE dataset
SET Boxcox_Mill_InLet_Temp =
CASE
WHEN -1.7918084051149423 = 0 THEN
LOG(Mill_InLet_Temp)
ELSE (POWER(Mill_InLet_Temp, -1.7918084051149423) - 1)/ -1.7918084051149423
END;

#Mill_OutLet_Temp
# BOX COX TRANSFORMATION
ALTER TABLE dataset ADD 
Boxcox_Mill_OutLet_Temp FLOAT;

UPDATE dataset
SET Boxcox_Mill_OutLet_Temp =
CASE
WHEN 0.6463765702588145 = 0 THEN
LOG(Mill_OutLet_Temp)
ELSE (POWER(Mill_OutLet_Temp, 0.6463765702588145) - 1)/ 0.6463765702588145
END;

#Mill_OutLet_BE_Amp
# BOX COX TRANSFORMATION
ALTER TABLE dataset ADD 
Boxcox_Mill_OutLet_BE_Amp FLOAT;

UPDATE dataset
SET Boxcox_Mill_OutLet_BE_Amp = 
CASE
WHEN -0.4412985834602368 = 0 THEN
LOG(Mill_OutLet_BE_Amp)
ELSE (POWER(Mill_OutLet_BE_Amp, -0.4412985834602368) - 1)/ -0.4412985834602368
END;

#Mill_Vent_Fan_RPM
# BOX COX TRANSFORMATION
ALTER TABLE dataset ADD 
Boxcox_Mill_Vent_Fan_RPM FLOAT;

UPDATE dataset
SET Boxcox_Mill_Vent_Fan_RPM =
CASE
WHEN 0.6001387866267651 = 0 THEN
LOG(Mill_Vent_Fan_RPM)
ELSE (POWER(Mill_Vent_Fan_RPM, 0.6001387866267651) - 1)/ 0.6001387866267651
END;

#Mill_Vent_Fan_KW
# BOX COX TRANSFORMATION
ALTER TABLE dataset ADD 
Boxcox_Mill_Vent_Fan_KW FLOAT;

UPDATE dataset
SET Boxcox_Mill_Vent_Fan_KW = 
CASE
WHEN -0.33810770195726214 = 0 THEN
LOG(Mill_Vent_Fan_KW)
ELSE (POWER(Mill_Vent_Fan_KW, -0.33810770195726214) - 1)/ -0.33810770195726214
END;

#Mill_Vent_BF_InLet_Draft
# BOX COX TRANSFORMATION
ALTER TABLE dataset ADD 
Boxcox_Mill_Vent_BF_InLet_Draft FLOAT;

UPDATE dataset
SET Boxcox_Mill_Vent_BF_InLet_Draft =
CASE
WHEN 1.969709408398535 = 0 THEN
LOG(Mill_Vent_BF_InLet_Draft)
ELSE (POWER(Mill_Vent_BF_InLet_Draft, 1.969709408398535) - 1)/ 1.969709408398535
END;

#Mill_Vent_BF_OutLet_Draft
# BOX COX TRANSFORMATION
ALTER TABLE dataset ADD 
Boxcox_Mill_Vent_BF_OutLet_Draft FLOAT;

UPDATE dataset
SET Boxcox_Mill_Vent_BF_OutLet_Draft =
CASE
WHEN 0.5032659690128318 = 0 THEN
LOG(Mill_Vent_BF_OutLet_Draft)
ELSE (POWER(Mill_Vent_BF_OutLet_Draft, 0.5032659690128318) - 1)/ 0.5032659690128318
END;

#Reject
ALTER TABLE dataset ADD 
Boxcox_Reject FLOAT;

UPDATE dataset
SET Boxcox_Sep_RPM =
CASE
WHEN 0.8065537592082542 = 0 THEN
LOG(Reject)
ELSE (POWER(Reject, 0.8065537592082542) - 1)/ 0.8065537592082542
END;

#Sep_RPM
# BOX COX TRANSFORMATION
ALTER TABLE dataset ADD 
Boxcox_Sep_RPM FLOAT;

UPDATE dataset
SET Boxcox_Sep_RPM =
CASE
WHEN 4.526409806990862 = 0 THEN
LOG(Sep_RPM)
ELSE (POWER(Sep_RPM, 4.526409806990862) - 1)/ 4.526409806990862
END;

#Sep_KW
# BOX COX TRANSFORMATION
ALTER TABLE dataset ADD 
Boxcox_Sep_KW FLOAT;

UPDATE dataset
SET Boxcox_Sep_KW =
CASE
WHEN 0.8364672781766047 = 0 THEN
LOG(Sep_KW)
ELSE (POWER(Sep_KW, 0.8364672781766047) - 1)/ 0.8364672781766047
END;

#Sep_Amp
# BOX COX TRANSFORMATION
ALTER TABLE dataset ADD 
Boxcox_Sep_Amp FLOAT;

UPDATE dataset
SET Boxcox_Sep_Amp =
CASE
WHEN -1.7710058226871497 = 0 THEN
LOG(Sep_Amp)
ELSE (POWER(Sep_Amp, -1.7710058226871497) - 1)/ -1.7710058226871497
END;

#CA_Fan_RPM
# BOX COX TRANSFORMATION
ALTER TABLE dataset ADD 
Boxcox_CA_Fan_RPM FLOAT;

UPDATE dataset
SET Boxcox_CA_Fan_RPM =
CASE
WHEN -5.238336716467653 = 0 THEN
LOG(CA_Fan_RPM)
ELSE (POWER(CA_Fan_RPM, -5.238336716467653) - 1)/ -5.238336716467653
END;

#CA_Fan_KW
# BOX COX TRANSFORMATION
ALTER TABLE dataset ADD 
Boxcox_CA_Fan_KW FLOAT;

UPDATE dataset
SET Boxcox_CA_Fan_KW =
CASE
WHEN -0.7853892203471223 = 0 THEN
LOG(CA_Fan_KW)
ELSE (POWER(CA_Fan_KW, -0.7853892203471223) - 1)/ -0.7853892203471223
END;

#Mill_Folaphone( doutfull)
# BOX COX TRANSFORMATION
#ALTER TABLE dataset ADD 
#Boxcox_Mill_Folaphone FLOAT;

#UPDATE dataset
#SET Boxcox_Mill_Folaphone =
#CASE
#WHEN lambda = 0 THEN
#LOG(Mill_TPH)
#ELSE (POWER(Mill_TPH, lambda) - 1)/ lambda
#END;

#Mill_InLet_Draft
# BOX COX TRANSFORMATION
ALTER TABLE dataset ADD 
Boxcox_Mill_InLet_Draft FLOAT;

UPDATE dataset
SET Boxcox_Mill_InLet_Draft =
CASE
WHEN -0.3641102280907977 = 0 THEN
LOG(Mill_InLet_Draft)
ELSE (POWER(Mill_InLet_Draft, -0.3641102280907977) - 1)/ -0.3641102280907977
END;

#Mill_OutLet_Draft(neative data)
#ALTER TABLE dataset ADD 
#Boxcox_DFA_TPH FLOAT;

#UPDATE dataset 
 # CASE 
 #   WHEN lambda = 0 THEN LOG(Mill_OutLet_Draft + 1)
 #   WHEN Mill_OutLet_Draft >= 0 THEN (POWER(Mill_OutLet_Draft + 1, lambda) - 1) / lambda
  #  ELSE -((POWER(ABS(Mill_OutLet_Draft) + 1, lambda) - 1) / lambda)
  #END AS transformed_column
#FROM your_table;

#Sep_Vent_InLet_Draft
# BOX COX TRANSFORMATION
ALTER TABLE dataset ADD 
Boxcox_Sep_Vent_InLet_Draft FLOAT;

UPDATE dataset
SET Boxcox_Sep_Vent_InLet_Draft =
CASE
WHEN -12.438869630146117 = 0 THEN
LOG(Sep_Vent_InLet_Draft)
ELSE (POWER(Sep_Vent_InLet_Draft, -12.438869630146117) - 1)/ -12.438869630146117
END;

#Sep_Vent_OutLet_Draft
# BOX COX TRANSFORMATION
ALTER TABLE dataset ADD 
Boxcox_Sep_Vent_OutLet_Draft FLOAT;

UPDATE dataset
SET Boxcox_Sep_Vent_OutLet_Draft =
CASE
WHEN 2.7935048967942238 = 0 THEN
LOG(Sep_Vent_OutLet_Draft)
ELSE (POWER(Sep_Vent_OutLet_Draft, 2.7935048967942238) - 1)/ 2.7935048967942238
END;

#Sep_Vent_bag_filter_fan_kw
# BOX COX TRANSFORMATION
ALTER TABLE dataset ADD 
Boxcox_Sep_Vent_bag_filter_fan_kw FLOAT;

UPDATE dataset
SET Boxcox_Sep_Vent_bag_filter_fan_kw =
CASE
WHEN -0.866940626811255 = 0 THEN
LOG(Sep_Vent_bag_filter_fan_kw)
ELSE (POWER(Sep_Vent_bag_filter_fan_kw, -0.866940626811255) - 1)/ -0.866940626811255
END;

#Sep_Vent_bag_filter_fan_rpm
# BOX COX TRANSFORMATION
ALTER TABLE dataset ADD 
Boxcox_Sep_Vent_bag_filter_fan_rpm FLOAT;

UPDATE dataset
SET Boxcox_Sep_Vent_bag_filter_fan_rpm = 
CASE 
WHEN -110.9103739560123 = 0 THEN
LOG(Sep_Vent_bag_filter_fan_rpm)
ELSE (POWER(Sep_Vent_bag_filter_fan_rpm, -110.9103739560123) - 1)/ -110.9103739560123
END ;


