/*********************************************************************************************
Name of DS: Mr.Mario Caesar Kristantoputra-(TP061966)
Name of SAS program: mydapassignment_TP061966.sas
Description: SAS Codes for Data Analytical Programming in Lasiandra Finance Inc.
Data first written: Mon, 19-Jul-2021
Data last updated: Fri, 03-Sep-2021
Folder name: MYDAPFTTP061966
Library name: LIBFT966
**********************************************************************************************/

/*********************************************************************************************
To Create a Copy of "TRAINING_DS" Dataset
**********************************************************************************************/
TITLE 'Create a Copy of "TRAINING_DS" Dataset';
/* SAS code to create a copy of "TRAINING_DS" dataset */
PROC SQL;

CREATE TABLE LIBFT966.TRAINING_DS_TP061966_BK AS
SELECT * FROM LIBFT966.TRAINING_DS;

QUIT;


/*********************************************************************************************
To Display the Structure (Metadata) of "TRAINING_DS_TP061966_BK" Dataset
**********************************************************************************************/
TITLE 'Display the Structure (Metadata) of "TRAINING_DS_TP061966_BK" Dataset';
/* SAS code to display the structure (metadata) of "TRAINING_DS" dataset */
PROC SQL;

DESCRIBE TABLE LIBFT966.TRAINING_DS_TP061966_BK;

QUIT;


/*********************************************************************************************
To Label Each Variable of the "TRAINING_DS_TP061966_BK" Dataset
**********************************************************************************************/
TITLE 'Label Each Variable of the Dataset';
/* SAS code to label each variable of the "TRAINING_DS_TP061966_BK" dataset */
DATA LIBFT966.TRAINING_DS_TP061966_BK;
SET LIBFT966.TRAINING_DS_TP061966_BK;
LABEL SME_LOAN_ID_NO = 'Loan Application Number'
    GENDER = 'Gender Name'
    MARITAL_STATUS = 'Marital Status'
    FAMILY_MEMBERS = 'Family Members'
    QUALIFICATION = 'Qualification'
    EMPLOYMENT = 'Employment'
    CANDIDATE_INCOME = 'Candidate Income'
    GUARANTEE_INCOME = 'Guarantee Income'
    LOAN_AMOUNT = 'Loan Amount'
    LOAN_DURATION = 'Loan Duration'
    LOAN_HISTORY = 'Loan History'
    LOAN_LOCATION = 'Loan Location'
    LOAN_APPROVAL_STATUS = 'Loan Approval Status';
RUN;


/*********************************************************************************************
To Display "TRAINING_DS_TP061966_BK" Dataset after labelling
**********************************************************************************************/
TITLE 'TRAINING_DS_TP061966_BK table after labelling';
/* SAS code to display table after labelling */
PROC SQL;

SELECT * FROM LIBFT966.TRAINING_DS_TP061966_BK;

RUN;

/*********************************************************************************************
Univariate Analysis
**********************************************************************************************/
/*********************************************************************************************
Categorical Variable
**********************************************************************************************/

/* GENDER */
TITLE 'Univariate Analysis of the "GENDER" Variable - Categorical Variable';
/* SAS code to do Univariate Analysis of the "GENDER" variable */
PROC FREQ DATA = LIBFT966.TRAINING_DS_TP061966_BK;
TABLE GENDER;
RUN;
ODS GRAPHICS / RESET WIDTH=4.0 IN HEIGHT=3.0 IN IMAGEMAP;
PROC SGPLOT DATA = LIBFT966.TRAINING_DS_TP061966_BK;
VBAR GENDER;
RUN;


/* MARITAL_STATUS */
TITLE 'Univariate Analysis of the "MARITAL_STATUS" Variable - Categorical Variable';
/* SAS code to do Univariate Analysis of the "MARITAL_STATUS" variable */
PROC FREQ DATA =  LIBFT966.TRAINING_DS_TP061966_BK;
TABLE MARITAL_STATUS;
RUN;
ODS GRAPHICS / RESET WIDTH=4.0 IN HEIGHT=3.0 IN IMAGEMAP;
PROC SGPLOT DATA = LIBFT966.TRAINING_DS_TP061966_BK;
VBAR MARITAL_STATUS;
RUN;


/* FAMILY_MEMBERS */
TITLE 'Univariate Analysis of the "FAMILY_MEMBERS" Variable - Categorical Variable';
/* SAS code to do Univariate Analysis of the "FAMILY_MEMBERS" variable */
PROC FREQ DATA = LIBFT966.TRAINING_DS_TP061966_BK;
TABLE FAMILY_MEMBERS;
RUN;
ODS GRAPHICS / RESET WIDTH=4.0 IN HEIGHT=3.0 IN IMAGEMAP;
PROC SGPLOT DATA = LIBFT966.TRAINING_DS_TP061966_BK;
VBAR FAMILY_MEMBERS;
RUN;


/* QUALIFICATION */
TITLE 'Univariate Analysis of the "QUALIFICATION" Variable - Categorical Variable';
/* SAS code to do Univariate Analysis of the "QUALIFICATION" variable */
PROC FREQ DATA = LIBFT966.TRAINING_DS_TP061966_BK;
TABLE QUALIFICATION;
RUN;
ODS GRAPHICS / RESET WIDTH=4.0 IN HEIGHT=3.0 IN IMAGEMAP;
PROC SGPLOT DATA = LIBFT966.TRAINING_DS_TP061966_BK;
VBAR QUALIFICATION;
RUN;


/* EMPLOYMENT */
TITLE 'Univariate Analysis of the "EMPLOYMENT" Variable - Categorical Variable';
/* SAS code to do Univariate Analysis of the "EMPLOYMENT" variable */
PROC FREQ DATA = LIBFT966.TRAINING_DS_TP061966_BK;
TABLE EMPLOYMENT;
RUN;
ODS GRAPHICS / RESET WIDTH=4.0 IN HEIGHT=3.0 IN IMAGEMAP;
PROC SGPLOT DATA = LIBFT966.TRAINING_DS_TP061966_BK;
VBAR EMPLOYMENT;
RUN;


/* LOAN_HISTORY */
TITLE 'Univariate Analysis of the "LOAN_HISTORY" Variable - Categorical Variable';
/* SAS code to do Univariate Analysis of the "LOAN_HISTORY" variable */
PROC FREQ DATA = LIBFT966.TRAINING_DS_TP061966_BK;
TABLE LOAN_HISTORY;
RUN;
ODS GRAPHICS / RESET WIDTH=4.0 IN HEIGHT=3.0 IN IMAGEMAP;
PROC SGPLOT DATA = LIBFT966.TRAINING_DS_TP061966_BK;
VBAR LOAN_HISTORY;
RUN;


/* LOAN_LOCATION */
TITLE 'Univariate Analysis of the "LOAN_LOCATION" Variable - Categorical Variable';
/* SAS code to do Univariate Analysis of the "LOAN_LOCATION" variable */
PROC FREQ DATA = LIBFT966.TRAINING_DS_TP061966_BK;
TABLE LOAN_LOCATION;
RUN;
ODS GRAPHICS / RESET WIDTH=4.0 IN HEIGHT=3.0 IN IMAGEMAP;
PROC SGPLOT DATA = LIBFT966.TRAINING_DS_TP061966_BK;
VBAR LOAN_LOCATION;
RUN;


/* LOAN_APPROVAL_STATUS */
TITLE 'Univariate Analysis of the "LOAN_APPROVAL_STATUS" Variable - Categorical Variable';
/* SAS code to do Univariate Analysis of the "LOAN_APPROVAL_STATUS" variable */
PROC FREQ DATA = LIBFT966.TRAINING_DS_TP061966_BK;
TABLE LOAN_APPROVAL_STATUS;
RUN;
ODS GRAPHICS / RESET WIDTH=4.0 IN HEIGHT=3.0 IN IMAGEMAP;
PROC SGPLOT DATA = LIBFT966.TRAINING_DS_TP061966_BK;
VBAR LOAN_APPROVAL_STATUS;
RUN;


/*********************************************************************************************
Numerical Variable
**********************************************************************************************/

/* CANDIDATE_INCOME */
TITLE 'Univariate Analysis of the "CANDIDATE_INCOME" Variable - Continuous Variable';
/* SAS code to do Univariate Analysis of the "CANDIDATE_INCOME" variable */
PROC MEANS DATA = LIBFT966.TRAINING_DS_TP061966_BK N NMISS MIN MAX MEAN MEDIAN STD;
VAR CANDIDATE_INCOME;
RUN;
ODS GRAPHICS / RESET WIDTH =4.0 IN HEIGHT=3.0 IN IMAGEMAP;
PROC SGPLOT DATA = LIBFT966.TRAINING_DS_TP061966_BK;
HISTOGRAM CANDIDATE_INCOME;

RUN;


/* GUARANTEE_INCOME */
TITLE 'Univariate Analysis of the "GUARANTEE_INCOME" Variable - Continuous Variable';
/* SAS code to do Univariate Analysis of the "GUARANTEE_INCOME" variable */
PROC MEANS DATA = LIBFT966.TRAINING_DS_TP061966_BK N NMISS MIN MAX MEAN MEDIAN STD;
VAR GUARANTEE_INCOME;
RUN;
ODS GRAPHICS / RESET WIDTH =4.0 IN HEIGHT=3.0 IN IMAGEMAP;
PROC SGPLOT DATA = LIBFT966.TRAINING_DS_TP061966_BK;
HISTOGRAM GUARANTEE_INCOME;

RUN;


/* LOAN_AMOUNT */
TITLE 'Univariate Analysis of the "LOAN_AMOUNT" Variable - Continuous Variable';
/* SAS code to do Univariate Analysis of the "LOAN_AMOUNT" variable */
PROC MEANS DATA = LIBFT966.TRAINING_DS_TP061966_BK N NMISS MIN MAX MEAN MEDIAN STD;
VAR LOAN_AMOUNT;
RUN;
ODS GRAPHICS / RESET WIDTH =4.0 IN HEIGHT=3.0 IN IMAGEMAP;
PROC SGPLOT DATA = LIBFT966.TRAINING_DS_TP061966_BK;
HISTOGRAM LOAN_AMOUNT;

RUN;


/* LOAN_DURATION */
TITLE 'Univariate Analysis of the "LOAN_DURATION" Variable - Continuous Variable';
/* SAS code to do Univariate Analysis of the "LOAN_DURATION" variable */
PROC MEANS DATA = LIBFT966.TRAINING_DS_TP061966_BK N NMISS MIN MAX MEAN MEDIAN STD;
VAR LOAN_DURATION;
RUN;
ODS GRAPHICS / RESET WIDTH =4.0 IN HEIGHT=3.0 IN IMAGEMAP;
PROC SGPLOT DATA = LIBFT966.TRAINING_DS_TP061966_BK;
HISTOGRAM LOAN_DURATION;

RUN;


/*********************************************************************************************
Bivariate Analysis on the dataset TRAINING_DS_TP061966_BK using Macro
**********************************************************************************************/
/*********************************************************************************************
To create a MACRO for bivariate analysis on categorical variable versus categorical variable
**********************************************************************************************/

%MACRO MACRO_BIVA_CV_TP061966( DATASET_NAME, VARIABLE_1, VARIABLE_2, TITLE_1, TITLE_2);
PROC FREQ DATA = &DATASET_NAME;
TABLE &VARIABLE_1 * &VARIABLE_2 /
PLOTS = FREQPLOT( TWOWAY = STACKED SCALE = GROUPPCT );
TITLE &TITLE_1;
TITLE2 &TITLE_2;
RUN;
%MEND MACRO_BIVA_CV_TP061966;

/*********************************************************************************************
To run bivariate analysis on Categorical variable versus Categorical variable
**********************************************************************************************/

/* GENDER Vs. MARITAL_STATUS */
%MACRO_BIVA_CV_TP061966(LIBFT966.TRAINING_DS_TP061966_BK, GENDER, MARITAL_STATUS, 'Bivariate analysis', 'on GENDER (Categorical) Vs. MARITAL_STATUS (Categorical)');


/* FAMILY_MEMBERS Vs. QUALIFICATION */
%MACRO_BIVA_CV_TP061966(LIBFT966.TRAINING_DS_TP061966_BK, FAMILY_MEMBERS, QUALIFICATION, 'Bivariate analysis', 'on FAMILY_MEMBERS (Categorical) Vs. QUALIFICATION (Categorical)');


/* EMPLOYMENT Vs. LOAN_HISTORY */
%MACRO_BIVA_CV_TP061966(LIBFT966.TRAINING_DS_TP061966_BK, EMPLOYMENT, LOAN_HISTORY, 'Bivariate analysis', 'on EMPLOYMENT (Categorical) Vs. LOAN_HISTORY (Categorical)');


/* LOAN_LOCATION Vs. LOAN_APPROVAL_STATUS */
%MACRO_BIVA_CV_TP061966(LIBFT966.TRAINING_DS_TP061966_BK, LOAN_LOCATION, LOAN_APPROVAL_STATUS, 'Bivariate analysis', 'on LOAN_LOCATION (Categorical) Vs. LOAN_APPROVAL_STATUS (Categorical)');


/* GENDER Vs. LOAN_APPROVAL_STATUS */
%MACRO_BIVA_CV_TP061966(LIBFT966.TRAINING_DS_TP061966_BK, GENDER, LOAN_APPROVAL_STATUS, 'Bivariate analysis', 'on GENDER (Categorical) Vs. LOAN_APPROVAL_STATUS (Categorical)');


/*********************************************************************************************
Categorical Vs. Numerical
**********************************************************************************************/

/* LOAN_APPROVAL_STATUS Vs. CANDIDATE_INCOME */
PROC MEANS DATA = LIBFT966.TRAINING_DS_TP061966_BK;
/* SAS code to do Bivariate Analysis of the "LOAN_APPROVAL_STATUS" vs. "CANDIDATE_INCOME" variable */
CLASS LOAN_APPROVAL_STATUS ; /* CHAR */
VAR CANDIDATE_INCOME; /* NUMERIC */
TITLE "Bivariate analysis on LOAN_APPROVAL_STATUS  ( CHAR ) Versus CANDIDATE_INCOME ( NUMERIC )";

RUN;

PROC SGPLOT DATA = LIBFT966.TRAINING_DS_TP061966_BK;
VBOX CANDIDATE_INCOME / CATEGORY = LOAN_APPROVAL_STATUS ;
TITLE "Bivariate analysis on LOAN_APPROVAL_STATUS  ( CHAR ) Versus CANDIDATE_INCOME ( NUMERIC )";

RUN;


/* LOAN_APPROVAL_STATUS Vs. GUARANTEE_INCOME */
PROC MEANS DATA = LIBFT966.TRAINING_DS_TP061966_BK;
/* SAS code to do Bivariate Analysis of the "LOAN_APPROVAL_STATUS" vs. "GUARANTEE_INCOME" variable */
CLASS LOAN_APPROVAL_STATUS ; /* CHAR */
VAR GUARANTEE_INCOME; /* NUMERIC */
TITLE "Bivariate analysis on LOAN_APPROVAL_STATUS  ( CHAR ) Versus GUARANTEE_INCOME ( NUMERIC )";

RUN;

PROC SGPLOT DATA = LIBFT966.TRAINING_DS_TP061966_BK;
VBOX GUARANTEE_INCOME / CATEGORY = LOAN_APPROVAL_STATUS ;
TITLE "Bivariate analysis on LOAN_APPROVAL_STATUS  ( CHAR ) Versus GUARANTEE_INCOME ( NUMERIC )";

RUN;


/* LOAN_APPROVAL_STATUS Vs. LOAN_AMOUNT */
PROC MEANS DATA = LIBFT966.TRAINING_DS_TP061966_BK;
/* SAS code to do Bivariate Analysis of the "LOAN_APPROVAL_STATUS" vs. "LOAN_AMOUNT" variable */
CLASS LOAN_APPROVAL_STATUS ; /* CHAR */
VAR LOAN_AMOUNT; /* NUMERIC */
TITLE "Bivariate analysis on LOAN_APPROVAL_STATUS  ( CHAR ) Versus LOAN_AMOUNT ( NUMERIC )";

RUN;

PROC SGPLOT DATA = LIBFT966.TRAINING_DS_TP061966_BK;
VBOX LOAN_AMOUNT / CATEGORY = LOAN_APPROVAL_STATUS ;
TITLE "Bivariate analysis on LOAN_APPROVAL_STATUS  ( CHAR ) Versus LOAN_AMOUNT ( NUMERIC )";

RUN;


/*********************************************************************************************
Numerical Vs. Numerical
**********************************************************************************************/

/* CANDIDATE_INCOME Vs. GUARANTEE_INCOME */
PROC CORR DATA = LIBFT966.TRAINING_DS_TP061966_BK PLOTS = SCATTER;
/* SAS code to do Bivariate Analysis of the "CANDIDATE_INCOME" vs. "GUARANTEE_INCOME" variable */
VAR CANDIDATE_INCOME GUARANTEE_INCOME;
ODS GRAPHICS / RESET WIDTH = 4.0 IN HEIGHT = 3.0 IN IMAGEMAP;
TITLE "Bivariate analysis on CANDIDATE_INCOME ( NUMERIC ) Versus GUARANTEE_INCOME ( NUMERIC )";

QUIT;


/* LOAN_AMOUNT Vs. LOAN_DURATION */
PROC CORR DATA = LIBFT966.TRAINING_DS_TP061966_BK PLOTS = SCATTER;
/* SAS code to do Bivariate Analysis of the "LOAN_AMOUNT" vs. "LOAN_DURATION" variable */
VAR LOAN_AMOUNT LOAN_DURATION;
ODS GRAPHICS / RESET WIDTH = 4.0 IN HEIGHT = 3.0 IN IMAGEMAP;
TITLE "Bivariate analysis on LOAN_AMOUNT ( NUMERIC ) Versus LOAN_DURATION ( NUMERIC )";

QUIT;


/************************************************************************
Imputation for categorical variable on dataset LIBFT966.TRAINING_TP061966
*************************************************************************/
/******************************
GENDER - Categorical Variable
*******************************/
/* Step 1. Make a copy of TRAINING_TP061966_COPY_DS */

PROC SQL;

CREATE TABLE LIBFT966.TRAINING_FI_GENDER_DS_BK AS
SELECT * FROM LIBFT966.TRAINING_DS_TP061966_BK;

QUIT;

/* Step 2. List the Missing Values in "GENDER" Variable */
TITLE 'Before Imputation: ';
TITLE2 'List the missing values';
PROC SQL;
SELECT *
FROM LIBFT966.TRAINING_FI_GENDER_DS_BK g
WHERE ( ( g.gender EQ '' ) OR
		( g.gender IS NULL) );
QUIT;

TITLE 'Total of Missing Values in "GENDER" Variable';
PROC SQL;
SELECT COUNT (*) LABEL = 'NUMBER OF MISSING VALUES'
FROM LIBFT966.TRAINING_FI_GENDER_DS_BK g
WHERE ( ( g.gender EQ '' ) OR
		( g.gender IS NULL) );
QUIT;


/* Step 3. Make a copy from current table to Count the Total Observations from Each GENDER */
TITLE 'Make a copy from current table to Count the Total Observations from Each GENDER';
PROC SQL;

CREATE TABLE LIBFT966.TRAINING_FI_GENDER_DS_BK_NEW AS
SELECT g.GENDER AS GENDER_NAME, COUNT(*) AS TOTAL_COUNTS
FROM LIBFT966.TRAINING_FI_GENDER_DS_BK g
WHERE ( ( g.GENDER IS NOT NULL ) OR
		( g.GENDER NE '' ) )
GROUP BY g.GENDER;
QUIT;


/* Step 4. Display the content in new table that has previously created */
TITLE 'Count of Total Observations from Each Gender';
PROC SQL;

SELECT * 
FROM LIBFT966.TRAINING_FI_GENDER_DS_BK_NEW;
QUIT;


/* Step 5. Find the Maximum Count in new table */
TITLE 'Maximum Count in new table';

PROC SQL;
SELECT MAX(g.TOTAL_COUNTS) AS MAX_COUNTS
FROM LIBFT966.TRAINING_FI_GENDER_DS_BK_NEW g;
QUIT;


/* Step 6. Find the mode for "GENDER" variable */
TITLE 'Mode for "GENDER" variable';
PROC SQL;
SELECT go.GENDER_NAME
FROM LIBFT966.TRAINING_FI_GENDER_DS_BK_NEW go
WHERE go.TOTAL_COUNTS EQ ( SELECT MAX(gi.TOTAL_COUNTS)
						   FROM LIBFT966.TRAINING_FI_GENDER_DS_BK_NEW gi); 
						   /* subquery to find the mode for gender */
QUIT;


/* Step 7. Impute the missing values using mode */
TITLE 'Impute the missing values using mode';
PROC SQL;
UPDATE LIBFT966.TRAINING_FI_GENDER_DS_BK
SET GENDER = ( SELECT go.GENDER_NAME
					FROM LIBFT966.TRAINING_FI_GENDER_DS_BK_NEW go 
					WHERE go.TOTAL_COUNTS EQ ( SELECT MAX(gi.TOTAL_COUNTS)
										 	   FROM LIBFT966.TRAINING_FI_GENDER_DS_BK_NEW gi ) )
WHERE ( ( GENDER IS NULL) OR 
		( GENDER EQ '' ) );						
QUIT;							



/* Step 8. List the Missing Values in "GENDER" Variable after imputation */
TITLE 'After Imputation: ';
TITLE2 'List the missing values after imputation';
PROC SQL;
SELECT *
FROM LIBFT966.TRAINING_FI_GENDER_DS_BK g
WHERE ( ( g.gender EQ '' ) OR
		( g.gender IS NULL) );
QUIT;

TITLE 'Total of Missing Values in "GENDER" Variable after imputation';
PROC SQL;
SELECT COUNT (*) LABEL = 'NUMBER OF MISSING VALUES'
FROM LIBFT966.TRAINING_FI_GENDER_DS_BK g
WHERE ( ( g.gender EQ '' ) OR
		( g.gender IS NULL) );
QUIT;


/******************************
FAMILY_MEMBERS - Categorical Variable
*******************************/
/* Step 1. Make a copy of LIBFT966.TRAINING_FI_GENDER_DS_BK */

PROC SQL;

CREATE TABLE LIBFT966.TRAINING_FI_FAMILY_MEMBERS_DS_BK AS
SELECT * FROM LIBFT966.TRAINING_FI_GENDER_DS_BK;

QUIT;

/* Step 2. List the Missing Values in "FAMILY_MEMBERS" Variable */
TITLE 'Before Imputation: ';
TITLE2 'List the missing values';
PROC SQL;
SELECT *
FROM LIBFT966.TRAINING_FI_FAMILY_MEMBERS_DS_BK fm
WHERE ( ( fm.FAMILY_MEMBERS EQ '' ) OR
		( fm.FAMILY_MEMBERS IS NULL) );
QUIT;

TITLE 'Total of Missing Values in "FAMILY_MEMBERS" Variable';
PROC SQL;
SELECT COUNT (*) LABEL = 'NUMBER OF MISSING VALUES'
FROM LIBFT966.TRAINING_FI_FAMILY_MEMBERS_DS_BK FM
WHERE ( ( fm.FAMILY_MEMBERS EQ '' ) OR
		( fm.FAMILY_MEMBERS IS NULL) );
QUIT;


/* Step 3. Make a copy from current table to Count the Total Observations from Each family members */
TITLE 'Make a copy from current table to Count the Total Observations from Each family members';
PROC SQL;

CREATE TABLE LIBFT966.TRAINING_FI_FM_DS_BK_N AS
SELECT fm.FAMILY_MEMBERS AS FAMILY_MEMBERS, COUNT(*) AS TOTAL_COUNTS
FROM LIBFT966.TRAINING_FI_FAMILY_MEMBERS_DS_BK fm
WHERE ( ( fm.FAMILY_MEMBERS IS NOT NULL ) OR
		( fm.FAMILY_MEMBERS NE '' ) )
GROUP BY fm.FAMILY_MEMBERS;
QUIT;


/* Step 4. Display the content in new table that has previously created */
TITLE 'Count of Total Observations from Each family members';
PROC SQL;

SELECT * 
FROM LIBFT966.TRAINING_FI_FM_DS_BK_N;
QUIT;


/* Step 5. Find the Maximum Count in new table */
TITLE 'Maximum Count in new table';

PROC SQL;
SELECT MAX(fm.TOTAL_COUNTS) AS MAX_COUNTS
FROM LIBFT966.TRAINING_FI_FM_DS_BK_N fm;
QUIT;


/* Step 6. Find the mode for "FAMILY_MEMBERS" variable */
TITLE 'Mode for "FAMILY_MEMBERS" variable';
PROC SQL;
SELECT fmo.FAMILY_MEMBERS
FROM LIBFT966.TRAINING_FI_FM_DS_BK_N fmo
WHERE fmo.TOTAL_COUNTS EQ ( SELECT MAX(fmi.TOTAL_COUNTS)
						   FROM LIBFT966.TRAINING_FI_FM_DS_BK_N fmi); 
						   /* subquery to find the mode for family members */
QUIT;


/* Step 7. Impute the missing values using mode */
TITLE 'Impute the missing values using mode';
PROC SQL;
UPDATE LIBFT966.TRAINING_FI_FAMILY_MEMBERS_DS_BK
SET FAMILY_MEMBERS = ( SELECT fmo.FAMILY_MEMBERS
					FROM LIBFT966.TRAINING_FI_FM_DS_BK_N fmo
					WHERE fmo.TOTAL_COUNTS EQ ( SELECT MAX(fmi.TOTAL_COUNTS)
										 	   FROM LIBFT966.TRAINING_FI_FM_DS_BK_N fmi ) )
WHERE ( ( FAMILY_MEMBERS IS NULL) OR 
		( FAMILY_MEMBERS EQ '' ) );						
QUIT;							



/* Step 8. List the Missing Values in "FAMILY_MEMBERS" Variable after imputation */
TITLE 'After Imputation: ';
TITLE2 'List the missing values after imputation';
PROC SQL;
SELECT *
FROM LIBFT966.TRAINING_FI_FAMILY_MEMBERS_DS_BK fm
WHERE ( ( fm.FAMILY_MEMBERS EQ '' ) OR
		( fm.FAMILY_MEMBERS IS NULL) );
QUIT;

TITLE 'Total of Missing Values in "FAMILY_MEMBERS" Variable after imputation';
PROC SQL;
SELECT COUNT (*) LABEL = 'NUMBER OF MISSING VALUES'
FROM LIBFT966.TRAINING_FI_FAMILY_MEMBERS_DS_BK fm
WHERE ( ( fm.FAMILY_MEMBERS EQ '' ) OR
		( fm.FAMILY_MEMBERS IS NULL) );
QUIT;


/* SAS codes to remove '+" */
/* Step 1: SAS Code to List "3+" in FAMILY_MEMBERS variable */
TITLE 'List of "3+" in FAMILY_MEMBERS variable';
PROC SQL;

SELECT fm.FAMILY_MEMBERS,
	   SUBSTR(fm.FAMILY_MEMBERS,1,1),
	   SUBSTR(fm.FAMILY_MEMBERS,2,1)
FROM LIBFT966.TRAINING_FI_FAMILY_MEMBERS_DS_BK fm
WHERE ( SUBSTR(fm.FAMILY_MEMBERS,2,1) EQ '+');
QUIT;

/* Step 2: Count Total Observations that has "+" in "FAMILY_MEMBERS" variable */
TITLE 'Total Observations that has "+" in "FAMILY_MEMBERS" variable';
PROC SQL;
SELECT COUNT(*) LABEL = 'Total Observation'
FROM LIBFT966.TRAINING_FI_FAMILY_MEMBERS_DS_BK fm
WHERE ( SUBSTR(fm.FAMILY_MEMBERS,2,1) EQ '+' );
QUIT;

/* Step 3: Remove "+" from Observations in "FAMILY_MEMBERS" variable */
TITLE 'Remove "+" from Observations in "FAMILY_MEMBERS" variable';
PROC SQL;
UPDATE LIBFT966.TRAINING_FI_FAMILY_MEMBERS_DS_BK
SET FAMILY_MEMBERS = SUBSTR(FAMILY_MEMBERS,1,1)
WHERE ( SUBSTR(FAMILY_MEMBERS,2,1) EQ '+' );
QUIT;

/* Step 4: List the Observations after removing "+" in "FAMILY_MEMBERS" variable */
TITLE 'List the Observations after removing "+" in "FAMILY_MEMBERS" variable';
PROC SQL;
SELECT fm.FAMILY_MEMBERS LABEL = 'FAMILY_MEMBERS',
	   COUNT(*) LABEL = 'Number of Applicants'
FROM LIBFT966.TRAINING_FI_FAMILY_MEMBERS_DS_BK fm
GROUP BY fm.FAMILY_MEMBERS;
QUIT;


/******************************
MARITAL_STATUS - Categorical Variable
*******************************/
/* Step 1. Make a copy of LIBFT966.TRAINING_FI_FAMILY_MEMBERS_DS_BK */

PROC SQL;

CREATE TABLE LIBFT966.TRAINING_FI_MARITAL_STATUS_DS_BK AS
SELECT * FROM LIBFT966.TRAINING_FI_FAMILY_MEMBERS_DS_BK;

QUIT;

/* Step 2. List the Missing Values in "MARITAL_STATUS" Variable */
TITLE 'Before Imputation: ';
TITLE2 'List the missing values';
PROC SQL;
SELECT *
FROM LIBFT966.TRAINING_FI_MARITAL_STATUS_DS_BK ms
WHERE ( ( ms.MARITAL_STATUS EQ '' ) OR
		( ms.MARITAL_STATUS IS NULL) );
QUIT;

TITLE 'Total of Missing Values in "MARITAL_STATUS" Variable';
PROC SQL;
SELECT COUNT (*) LABEL = 'NUMBER OF MISSING VALUES'
FROM LIBFT966.TRAINING_FI_MARITAL_STATUS_DS_BK ms
WHERE ( ( ms.MARITAL_STATUS EQ '' ) OR
		( ms.MARITAL_STATUS IS NULL) );
QUIT;


/* Step 3. Make a copy from current table to Count the Total Observations from Each marital status */
TITLE 'Make a copy from current table to Count the Total Observations from Each marital status';
PROC SQL;

CREATE TABLE LIBFT966.TRAINING_FI_MS_DS_BK_NEW AS
SELECT ms.MARITAL_STATUS AS MARITAL_STATUS, COUNT(*) AS TOTAL_COUNTS
FROM LIBFT966.TRAINING_FI_MARITAL_STATUS_DS_BK ms
WHERE ( ( ms.MARITAL_STATUS IS NOT NULL ) OR
		( ms.MARITAL_STATUS NE '' ) )
GROUP BY ms.MARITAL_STATUS;
QUIT;


/* Step 4. Display the content in new table that has previously created */
TITLE 'Count of Total Observations from Each family members';
PROC SQL;

SELECT * 
FROM LIBFT966.TRAINING_FI_MS_DS_BK_NEW;
QUIT;


/* Step 5. Find the Maximum Count in new table */
TITLE 'Maximum Count in new table';

PROC SQL;
SELECT MAX(ms.TOTAL_COUNTS) AS MAX_COUNTS
FROM LIBFT966.TRAINING_FI_MS_DS_BK_NEW ms;
QUIT;


/* Step 6. Find the mode for "MARITAL_STATUS" variable */
TITLE 'Mode for "MARITAL_STATUS" variable';
PROC SQL;
SELECT mso.MARITAL_STATUS
FROM LIBFT966.TRAINING_FI_MS_DS_BK_NEW mso
WHERE mso.TOTAL_COUNTS EQ ( SELECT MAX(msi.TOTAL_COUNTS)
						   FROM LIBFT966.TRAINING_FI_MS_DS_BK_NEW msi); 
						   /* subquery to find the mode for marital status */
QUIT;


/* Step 7. Impute the missing values using mode */
TITLE 'Impute the missing values using mode';
PROC SQL;
UPDATE LIBFT966.TRAINING_FI_MARITAL_STATUS_DS_BK
SET MARITAL_STATUS = ( SELECT mso.MARITAL_STATUS
					FROM LIBFT966.TRAINING_FI_MS_DS_BK_NEW mso
					WHERE mso.TOTAL_COUNTS EQ ( SELECT MAX(msi.TOTAL_COUNTS)
										 	   FROM LIBFT966.TRAINING_FI_MS_DS_BK_NEW msi ) )
WHERE ( ( MARITAL_STATUS IS NULL) OR 
		( MARITAL_STATUS EQ '' ) );						
QUIT;							



/* Step 8. List the Missing Values in "MARITAL_STATUS" Variable after imputation */
TITLE 'After Imputation: ';
TITLE2 'List the missing values after imputation';
PROC SQL;
SELECT *
FROM LIBFT966.TRAINING_FI_MARITAL_STATUS_DS_BK ms
WHERE ( ( ms.MARITAL_STATUS EQ '' ) OR
		( ms.MARITAL_STATUS IS NULL) );
QUIT;

TITLE 'Total of Missing Values in "MARITAL_STATUS" Variable after imputation';
PROC SQL;
SELECT COUNT (*) LABEL = 'NUMBER OF MISSING VALUES'
FROM LIBFT966.TRAINING_FI_MARITAL_STATUS_DS_BK ms
WHERE ( ( ms.MARITAL_STATUS EQ '' ) OR
		( ms.MARITAL_STATUS IS NULL) );
QUIT;


/******************************
EMPLOYMENT - Categorical Variable
*******************************/
/* Step 1. Make a copy of LIBFT966.TRAINING_FI_MARITAL_STATUS_DS_BK */

PROC SQL;

CREATE TABLE LIBFT966.TRAINING_FI_EMPLOYMENT_DS_BK AS
SELECT * FROM LIBFT966.TRAINING_FI_MARITAL_STATUS_DS_BK;

QUIT;

/* Step 2. List the Missing Values in "EMPLOYMENT" Variable */
TITLE 'Before Imputation: ';
TITLE2 'List the missing values';
PROC SQL;
SELECT *
FROM LIBFT966.TRAINING_FI_EMPLOYMENT_DS_BK e
WHERE ( ( e.EMPLOYMENT EQ '' ) OR
		( e.EMPLOYMENT IS NULL) );
QUIT;

TITLE 'Total of Missing Values in "EMPLOYMENT" Variable';
PROC SQL;
SELECT COUNT (*) LABEL = 'NUMBER OF MISSING VALUES'
FROM LIBFT966.TRAINING_FI_EMPLOYMENT_DS_BK e
WHERE ( ( e.EMPLOYMENT EQ '' ) OR
		( e.EMPLOYMENT IS NULL) );
QUIT;


/* Step 3. Make a copy from current table to Count the Total Observations from Each employment */
TITLE 'Make a copy from current table to Count the Total Observations from Each employment';
PROC SQL;

CREATE TABLE LIBFT966.TRAINING_FI_EMPLOYMENT_DS_BK_NEW AS
SELECT e.EMPLOYMENT AS EMPLOYMENT, COUNT(*) AS TOTAL_COUNTS
FROM LIBFT966.TRAINING_FI_EMPLOYMENT_DS_BK e
WHERE ( ( e.EMPLOYMENT IS NOT NULL ) OR
		( e.EMPLOYMENT NE '' ) )
GROUP BY e.EMPLOYMENT;
QUIT;


/* Step 4. Display the content in new table that has previously created */
TITLE 'Count of Total Observations from Each employment';
PROC SQL;

SELECT * 
FROM LIBFT966.TRAINING_FI_EMPLOYMENT_DS_BK_NEW;
QUIT;


/* Step 5. Find the Maximum Count in new table */
TITLE 'Maximum Count in new table';

PROC SQL;
SELECT MAX(e.TOTAL_COUNTS) AS MAX_COUNTS
FROM LIBFT966.TRAINING_FI_EMPLOYMENT_DS_BK_NEW e;
QUIT;


/* Step 6. Find the mode for "EMPLOYMENT" variable */
TITLE 'Mode for "EMPLOYMENT" variable';
PROC SQL;
SELECT eo.EMPLOYMENT
FROM LIBFT966.TRAINING_FI_EMPLOYMENT_DS_BK_NEW eo
WHERE eo.TOTAL_COUNTS EQ ( SELECT MAX(ei.TOTAL_COUNTS)
						   FROM LIBFT966.TRAINING_FI_EMPLOYMENT_DS_BK_NEW ei); 
						   /* subquery to find the mode for employment */
QUIT;


/* Step 7. Impute the missing values using mode */
TITLE 'Impute the missing values using mode';
PROC SQL;
UPDATE LIBFT966.TRAINING_FI_EMPLOYMENT_DS_BK
SET EMPLOYMENT = ( SELECT eo.EMPLOYMENT
					FROM LIBFT966.TRAINING_FI_EMPLOYMENT_DS_BK_NEW eo
					WHERE eo.TOTAL_COUNTS EQ ( SELECT MAX(ei.TOTAL_COUNTS)
										 	   FROM LIBFT966.TRAINING_FI_EMPLOYMENT_DS_BK_NEW ei ) )
WHERE ( ( EMPLOYMENT IS NULL) OR 
		( EMPLOYMENT EQ '' ) );						
QUIT;							


/* Step 8. List the Missing Values in "EMPLOYMENT" Variable after imputation */
TITLE 'After Imputation: ';
TITLE2 'List the missing values after imputation';
PROC SQL;
SELECT *
FROM LIBFT966.TRAINING_FI_EMPLOYMENT_DS_BK e
WHERE ( ( e.EMPLOYMENT EQ '' ) OR
		( e.EMPLOYMENT IS NULL) );
QUIT;

TITLE 'Total of Missing Values in "EMPLOYMENT" Variable after imputation';
PROC SQL;
SELECT COUNT (*) LABEL = 'NUMBER OF MISSING VALUES'
FROM LIBFT966.TRAINING_FI_EMPLOYMENT_DS_BK e
WHERE ( ( e.EMPLOYMENT EQ '' ) OR
		( e.EMPLOYMENT IS NULL) );
QUIT;


/******************************
LOAN_HISTORY - Categorical Variable
*******************************/
/* Step 1. Make a copy of LIBFT966.TRAINING_FI_EMPLOYMENT_DS_BK */

PROC SQL;

CREATE TABLE LIBFT966.TRAINING_FI_LOAN_HISTORY_DS_BK AS
SELECT * FROM LIBFT966.TRAINING_FI_EMPLOYMENT_DS_BK;

QUIT;

/* Step 2. List the Missing Values in "LOAN_HISTORY" Variable */
TITLE 'Before Imputation: ';
TITLE2 'List the missing values';
PROC SQL;
SELECT *
FROM LIBFT966.TRAINING_FI_LOAN_HISTORY_DS_BK lh
WHERE ( ( lh.LOAN_HISTORY EQ . ) OR
		( lh.LOAN_HISTORY IS NULL) );
QUIT;

TITLE 'Total of Missing Values in "LOAN_HISTORY" Variable';
PROC SQL;
SELECT COUNT (*) LABEL = 'NUMBER OF MISSING VALUES'
FROM LIBFT966.TRAINING_FI_LOAN_HISTORY_DS_BK lh
WHERE ( ( lh.LOAN_HISTORY EQ . ) OR
		( lh.LOAN_HISTORY IS NULL) );
QUIT;


/* Step 3. Make a copy from current table to Count the Total Observations from Each loan history */
TITLE 'Make a copy from current table to Count the Total Observations from Each loan history';
PROC SQL;

CREATE TABLE LIBFT966.TRAINING_FI_LH_DS_BK_NEW AS
SELECT lh.LOAN_HISTORY AS LOAN_HISTORY, COUNT(*) AS TOTAL_COUNTS
FROM LIBFT966.TRAINING_FI_LOAN_HISTORY_DS_BK lh
WHERE ( ( lh.LOAN_HISTORY IS NOT NULL ) OR
		( lh.LOAN_HISTORY NE . ) )
GROUP BY lh.LOAN_HISTORY;
QUIT;


/* Step 4. Display the content in new table that has previously created */
TITLE 'Count of Total Observations from Each loan history';
PROC SQL;

SELECT * 
FROM LIBFT966.TRAINING_FI_LH_DS_BK_NEW;
QUIT;


/* Step 5. Find the Maximum Count in new table */
TITLE 'Maximum Count in new table';

PROC SQL;
SELECT MAX(lh.TOTAL_COUNTS) AS MAX_COUNTS
FROM LIBFT966.TRAINING_FI_LH_DS_BK_NEW lh;
QUIT;


/* Step 6. Find the mode for "LOAN_HISTORY" variable */
TITLE 'Mode for "LOAN_HISTORY" variable';
PROC SQL;
SELECT lho.LOAN_HISTORY
FROM LIBFT966.TRAINING_FI_LH_DS_BK_NEW lho
WHERE lho.TOTAL_COUNTS EQ ( SELECT MAX(lhi.TOTAL_COUNTS)
						   FROM LIBFT966.TRAINING_FI_LH_DS_BK_NEW lhi); 
						   /* subquery to find the mode for loan history */
QUIT;


/* Step 7. Impute the missing values using mode */
TITLE 'Impute the missing values using mode';
PROC SQL;
UPDATE LIBFT966.TRAINING_FI_LOAN_HISTORY_DS_BK
SET LOAN_HISTORY = ( SELECT lho.LOAN_HISTORY
					FROM LIBFT966.TRAINING_FI_LH_DS_BK_NEW lho
					WHERE lho.TOTAL_COUNTS EQ ( SELECT MAX(lhi.TOTAL_COUNTS)
										 	   FROM LIBFT966.TRAINING_FI_LH_DS_BK_NEW lhi ) )
WHERE ( ( LOAN_HISTORY IS NULL) OR 
		( LOAN_HISTORY EQ . ) );						
QUIT;							


/* Step 8. List the Missing Values in "LOAN_HISTORY" Variable after imputation */
TITLE 'After Imputation: ';
TITLE2 'List the missing values after imputation';
PROC SQL;
SELECT *
FROM LIBFT966.TRAINING_FI_LOAN_HISTORY_DS_BK lh
WHERE ( ( lh.LOAN_HISTORY EQ . ) OR
		( lh.LOAN_HISTORY IS NULL) );
QUIT;

TITLE 'Total of Missing Values in "LOAN_HISTORY" Variable after imputation';
PROC SQL;
SELECT COUNT (*) LABEL = 'NUMBER OF MISSING VALUES'
FROM LIBFT966.TRAINING_FI_LOAN_HISTORY_DS_BK lh
WHERE ( ( lh.LOAN_HISTORY EQ . ) OR
		( lh.LOAN_HISTORY IS NULL) );
QUIT;


/************************************************************************
Imputation for continuous variable on dataset LIBFT966.TRAINING_TP061966
*************************************************************************/
/******************************
LOAN_AMOUNT - Continuous Variable
******************************/
/* Step 1. List the missing values in "LOAN_AMOUNT" Variable */
TITLE 'Missing values in "LOAN_AMOUNT" Variable';
PROC SQL;
SELECT * 
FROM LIBFT966.TRAINING_FI_LOAN_HISTORY_DS_BK la
WHERE ( la.LOAN_AMOUNT EQ . );
QUIT;

/* Step 2. Count the total of missing values in "LOAN_AMOUNT" Variable */
TITLE 'The total of missing values in "LOAN_AMOUNT" Variable';
PROC SQL;
SELECT COUNT(*) LABEL = 'Total Missing Values'
FROM LIBFT966.TRAINING_FI_LOAN_HISTORY_DS_BK la
WHERE ( la.LOAN_AMOUNT EQ . );
QUIT;

/* Step 3. SAS Code to make a Copy of the "TRAINING_FI_LOAN_HISTORY_DS_BK" for "LOAN_AMOUNT" Variable Imputation */
TITLE 'Make a Copy of the "TRAINING_FI_LOAN_HISTORY_DS_BK" for "LOAN_AMOUNT" Variable Imputation';
PROC SQL;
CREATE TABLE LIBFT966.TRAINING_FI_LOAN_AMOUNT_DS_BK AS
SELECT * FROM LIBFT966.TRAINING_FI_LOAN_HISTORY_DS_BK;
QUIT;

/* Step 4. Impute the missing values using mean for "LOAN_AMOUNT" variable */
TITLE 'Impute the missing values using mean';
PROC STDIZE DATA = LIBFT966.TRAINING_FI_LOAN_AMOUNT_DS_BK REPONLY
METHOD = MEAN OUT=LIBFT966.TRAINING_FI_LOAN_AMOUNT_DS_BK;
VAR LOAN_AMOUNT;
QUIT;


/******************************
LOAN_DURATION - Continuous Variable
******************************/
/* Step 1. List the missing values in "LOAN_DURATION" Variable */
TITLE 'Missing values in "LOAN_DURATION" Variable';
PROC SQL;
SELECT * 
FROM LIBFT966.TRAINING_FI_LOAN_AMOUNT_DS_BK ld
WHERE ( ld.LOAN_DURATION EQ . );
QUIT;

/* Step 2. Count the total of missing values in "LOAN_DURATION" Variable */
TITLE 'The total of missing values in "LOAN_DURATION" Variable';
PROC SQL;
SELECT COUNT(*) LABEL = 'Total Missing Values'
FROM LIBFT966.TRAINING_FI_LOAN_AMOUNT_DS_BK ld
WHERE ( ld.LOAN_DURATION EQ . );
QUIT;

/* Step 3. SAS Code to make a Copy of the "TRAINING_FI_LOAN_AMOUNT_DS_BK" for "LOAN_DURATION" Variable Imputation */
TITLE 'Make a Copy of the "TRAINING_FI_LOAN_AMOUNT_DS_BK" for "LOAN_DURATION" Variable Imputation';
PROC SQL;
CREATE TABLE LIBFT966.TRAINING_FI_LOAN_DURATION_DS_BK AS
SELECT * FROM LIBFT966.TRAINING_FI_LOAN_AMOUNT_DS_BK;
QUIT;

/* Step 4. Impute the missing values using mean for "LOAN_DURATION" variable */
TITLE 'Impute the missing values using mean';
PROC STDIZE DATA = LIBFT966.TRAINING_FI_LOAN_DURATION_DS_BK REPONLY
METHOD = MEAN OUT=LIBFT966.TRAINING_FI_LOAN_DURATION_DS_BK;
VAR LOAN_DURATION;
QUIT;


/*********************************************************************************************
To Create a Copy of "TESTING_DS" Dataset
**********************************************************************************************/
TITLE 'Create a Copy of "TESTING_DS" Dataset';
/* SAS code to create a copy of "TESTING_DS" dataset */
PROC SQL;

CREATE TABLE LIBFT966.TESTING_DS_TP061966_BK AS
SELECT * FROM LIBFT966.TESTING_DS;

QUIT;


/*********************************************************************************************
To create a MACRO for univariate analysis on categorical variable in “TESTING_DS_TP061966_BK”
**********************************************************************************************/
%MACRO MACRO_UVA_CatV_TP061966_TESTING( DATASET_NAME, VARIABLE_1, TITLE_1, TITLE_2);
TITLE &TITLE_1;
TITLE2 &TITLE_2;
PROC FREQ DATA = &DATASET_NAME;
TABLE &VARIABLE_1;
ODS GRAPHICS / RESET WIDTH=4.0 IN HEIGHT=3.0 IN IMAGEMAP;
PROC SGPLOT DATA = &DATASET_NAME;
VBAR &VARIABLE_1;
RUN;
%MEND MACRO_UVA_CatV_TP061966_TESTING;

/*********************************************************************************************
To run univariate analysis on Categorical variable in “TESTING_DS_TP061966_BK”
**********************************************************************************************/

/* GENDER */
%MACRO_UVA_CatV_TP061966_TESTING(LIBFT966.TESTING_DS_TP061966_BK, GENDER, 'Univariate analysis', 'on GENDER (Categorical) Variable');

/* MARITAL_STATUS */
%MACRO_UVA_CatV_TP061966_TESTING(LIBFT966.TESTING_DS_TP061966_BK, MARITAL_STATUS, 'Univariate analysis', 'on MARITAL_STATUS (Categorical) Variable');

/* FAMILY_MEMBERS */
%MACRO_UVA_CatV_TP061966_TESTING(LIBFT966.TESTING_DS_TP061966_BK, FAMILY_MEMBERS, 'Univariate analysis', 'on FAMILY_MEMBERS (Categorical) Variable');

/* QUALIFICATION */
%MACRO_UVA_CatV_TP061966_TESTING(LIBFT966.TESTING_DS_TP061966_BK, QUALIFICATION, 'Univariate analysis', 'on QUALIFICATION (Categorical) Variable');

/* EMPLOYMENT */
%MACRO_UVA_CatV_TP061966_TESTING(LIBFT966.TESTING_DS_TP061966_BK, EMPLOYMENT, 'Univariate analysis', 'on EMPLOYMENT (Categorical) Variable');

/* LOAN_HISTORY */
%MACRO_UVA_CatV_TP061966_TESTING(LIBFT966.TESTING_DS_TP061966_BK, LOAN_HISTORY, 'Univariate analysis', 'on LOAN_HISTORY (Categorical) Variable');

/* LOAN_LOCATION */
%MACRO_UVA_CatV_TP061966_TESTING(LIBFT966.TESTING_DS_TP061966_BK, LOAN_LOCATION, 'Univariate analysis', 'on LOAN_LOCATION (Categorical) Variable');


/*********************************************************************************************
To create a MACRO for univariate analysis on continuous variable in “TESTING_DS_TP061966_BK”
**********************************************************************************************/
%MACRO MACRO_UVA_ConV_TP061966_TESTING( DATASET_NAME, VARIABLE_1, TITLE_1, TITLE_2);
PROC MEANS DATA = &DATASET_NAME N NMISS MIN MAX MEAN MEDIAN STD;
VAR &VARIABLE_1;
TITLE &TITLE_1;
TITLE2 &TITLE_2;
RUN;
ODS GRAPHICS / RESET WIDTH=4.0 IN HEIGHT=3.0 IN IMAGEMAP;
PROC SGPLOT DATA = &DATASET_NAME;
HISTOGRAM &VARIABLE_1;
RUN;
%MEND MACRO_UVA_ConV_TP061966_TESTING;

/* CANDIDATE_INCOME */
%MACRO_UVA_ConV_TP061966_TESTING(LIBFT966.TESTING_DS_TP061966_BK, CANDIDATE_INCOME, 'Univariate analysis', 'on CANDIDATE_INCOME (Continuous) Variable');

/* GUARANTEE_INCOME */
%MACRO_UVA_ConV_TP061966_TESTING(LIBFT966.TESTING_DS_TP061966_BK, GUARANTEE_INCOME, 'Univariate analysis', 'on GUARANTEE_INCOME (Continuous) Variable');

/* LOAN_AMOUNT */
%MACRO_UVA_ConV_TP061966_TESTING(LIBFT966.TESTING_DS_TP061966_BK, LOAN_AMOUNT, 'Univariate analysis', 'on LOAN_AMOUNT (Continuous) Variable');

/* LOAN_DURATION */
%MACRO_UVA_ConV_TP061966_TESTING(LIBFT966.TESTING_DS_TP061966_BK, LOAN_DURATION, 'Univariate analysis', 'on LOAN_DURATION (Continuous) Variable');


/*********************************************************************************************
Bivariate Analysis on the dataset TESTING_DS_TP061966_BK using Macro
**********************************************************************************************/
/*********************************************************************************************
To create a MACRO for bivariate analysis on categorical variable versus categorical variable
DATASET_NAME -> Name of the Data set
VARIABLE_1 -> 1st variable name to be involved in bivariate analysis (Categorical)
VARIABLE_2 -> 2nd variable name to be involved in bivariate analysis (Categorical)
TITLE_1 -> 1st title to be displayed in the output
TITLE_2 -> 2nd title to be displayed in the output
**********************************************************************************************/

%MACRO MACRO_BIVA_Cat_Testing_TP061966( DATASET_NAME, VARIABLE_1, VARIABLE_2, TITLE_1, TITLE_2);
PROC FREQ DATA = &DATASET_NAME;
TABLE &VARIABLE_1 * &VARIABLE_2 /
PLOTS = FREQPLOT( TWOWAY = STACKED SCALE = GROUPPCT );
TITLE &TITLE_1;
TITLE2 &TITLE_2;
RUN;
%MEND MACRO_BIVA_Cat_Testing_TP061966;


/*********************************************************************************************
To run bivariate analysis on Categorical variable versus Categorical variable in testing dataset
**********************************************************************************************/

/* GENDER Vs. MARITAL_STATUS */
%MACRO_BIVA_Cat_Testing_TP061966(LIBFT966.TESTING_DS_TP061966_BK, GENDER, MARITAL_STATUS, 'Bivariate analysis', 'on GENDER (Categorical) Vs. MARITAL_STATUS (Categorical)');


/* FAMILY_MEMBERS Vs. QUALIFICATION */
%MACRO_BIVA_Cat_Testing_TP061966(LIBFT966.TESTING_DS_TP061966_BK, FAMILY_MEMBERS, QUALIFICATION, 'Bivariate analysis', 'on FAMILY_MEMBERS (Categorical) Vs. QUALIFICATION (Categorical)');


/* EMPLOYMENT Vs. LOAN_HISTORY */
%MACRO_BIVA_Cat_Testing_TP061966(LIBFT966.TESTING_DS_TP061966_BK, EMPLOYMENT, LOAN_HISTORY, 'Bivariate analysis', 'on EMPLOYMENT (Categorical) Vs. LOAN_HISTORY (Categorical)');


/* GENDER Vs. QUALIFICATION */
%MACRO_BIVA_Cat_Testing_TP061966(LIBFT966.TESTING_DS_TP061966_BK, GENDER, QUALIFICATION, 'Bivariate analysis', 'on GENDER (Categorical) Vs. QUALIFICATION (Categorical)');


/* GENDER Vs. LOAN_LOCATION */
%MACRO_BIVA_Cat_Testing_TP061966(LIBFT966.TESTING_DS_TP061966_BK, GENDER, LOAN_LOCATION, 'Bivariate analysis', 'on GENDER (Categorical) Vs. LOAN_LOCATION (Categorical)');


/* FAMILY_MEMBERS Vs. LOAN_LOCATION */
%MACRO_BIVA_Cat_Testing_TP061966(LIBFT966.TESTING_DS_TP061966_BK, FAMILY_MEMBERS, LOAN_LOCATION, 'Bivariate analysis', 'on FAMILY_MEMBERS (Categorical) Vs. LOAN_LOCATION (Categorical)');


/*********************************************************************************************
To create a MACRO for bivariate analysis on categorical variable versus continuous variable
DATASET_NAME -> Name of the Data set
VARIABLE_1 -> 1st variable name to be involved in bivariate analysis (Categorical)
VARIABLE_2 -> 2nd variable name to be involved in bivariate analysis (Continuous)
TITLE_1 -> 1st title to be displayed in the output
**********************************************************************************************/
%MACRO MACRO_BIVA_CatVCon_Test_TP061966( DATASET_NAME, VARIABLE_1, VARIABLE_2, TITLE_1);
PROC MEANS DATA = &DATASET_NAME;
CLASS &VARIABLE_1; /* CHAR */
VAR &VARIABLE_2; /* NUMERIC */
TITLE &TITLE_1;
RUN;
PROC SGPLOT DATA = &DATASET_NAME;
VBOX &VARIABLE_2 / CATEGORY = &VARIABLE_1;
/* FM X-AXIS CI Y-AXIS */
TITLE &TITLE_1;
RUN;
%MEND MACRO_BIVA_CatVCon_Test_TP061966;

/*********************************************************************************************
To run bivariate analysis on Categorical variable versus Continuous variable in testing dataset
**********************************************************************************************/

/* GENDER Vs. CANDIDATE_INCOME */
%MACRO_BIVA_CatVCon_Test_TP061966(LIBFT966.TESTING_DS_TP061966_BK, GENDER, CANDIDATE_INCOME, 'Bivariate analysis on GENDER ( CHAR ) Versus CANDIDATE_INCOME ( NUMERIC )');

/* MARITAL_STATUS Vs. GUARANTEE_INCOME */
%MACRO_BIVA_CatVCon_Test_TP061966(LIBFT966.TESTING_DS_TP061966_BK, MARITAL_STATUS, GUARANTEE_INCOME, 'Bivariate analysis on MARITAL_STATUS ( CHAR ) Versus GUARANTEE_INCOME ( NUMERIC )');

/* EMPLOYMENT Vs. LOAN_AMOUNT */
%MACRO_BIVA_CatVCon_Test_TP061966(LIBFT966.TESTING_DS_TP061966_BK, EMPLOYMENT, LOAN_AMOUNT, 'Bivariate analysis on EMPLOYMENT ( CHAR ) Versus LOAN_AMOUNT ( NUMERIC )');


/*********************************************************************************************
To create a MACRO for bivariate analysis on continuous variable versus continuous variable
DATASET_NAME -> Name of the Data set
VARIABLE_1 -> 1st variable name to be involved in bivariate analysis (Continuous)
VARIABLE_2 -> 2nd variable name to be involved in bivariate analysis (Continuous)
TITLE_1 -> 1st title to be displayed in the output
**********************************************************************************************/
%MACRO MACRO_BIVA_ConVCon_Test_TP061966( DATASET_NAME, VARIABLE_1, VARIABLE_2, TITLE_1);
PROC CORR DATA = &DATASET_NAME PLOTS = SCATTER;
VAR &VARIABLE_1 &VARIABLE_2;
ODS GRAPHICS / RESET WIDTH=4.0 IN HEIGHT=3.0 IN IMAGEMAP;
TITLE &TITLE_1;
QUIT;
%MEND MACRO_BIVA_ConVCon_Test_TP061966;

/*********************************************************************************************
To run bivariate analysis on Continuous variable versus Continuous variable in testing dataset
**********************************************************************************************/

/* CANDIDATE_INCOME Vs. GUARANTEE_INCOME */
%MACRO_BIVA_ConVCon_Test_TP061966(LIBFT966.TESTING_DS_TP061966_BK, CANDIDATE_INCOME, GUARANTEE_INCOME, 'Bivariate analysis on CANDIDATE_INCOME ( NUMERIC ) Versus GUARANTEE_INCOME ( NUMERIC )');

/* LOAN_AMOUNT Vs. LOAN_DURATION */
%MACRO_BIVA_ConVCon_Test_TP061966(LIBFT966.TESTING_DS_TP061966_BK, LOAN_AMOUNT, LOAN_DURATION, 'Bivariate analysis on LOAN_AMOUNT ( NUMERIC ) Versus LOAN_DURATION ( NUMERIC )');

/* CANDIDATE_INCOME Vs. LOAN_DURATION */
%MACRO_BIVA_ConVCon_Test_TP061966(LIBFT966.TESTING_DS_TP061966_BK, CANDIDATE_INCOME, LOAN_DURATION, 'Bivariate analysis on CANDIDATE_INCOME ( NUMERIC ) Versus LOAN_DURATION ( NUMERIC )');


/************************************************************************
Imputation for categorical variable on dataset LIBFT966.TESTING_TP061966
*************************************************************************/
/******************************
GENDER - Categorical Variable
*******************************/
/* Step 1. Make a copy of TESTING_TP061966_COPY_DS */

PROC SQL;

CREATE TABLE LIBFT966.TESTING_FI_GENDER_DS_BK AS
SELECT * FROM LIBFT966.TESTING_DS_TP061966_BK;

QUIT;

/* Step 2. List the Missing Values in "GENDER" Variable */
TITLE 'Before Imputation: ';
TITLE2 'List the missing values';
PROC SQL;
SELECT *
FROM LIBFT966.TESTING_FI_GENDER_DS_BK g
WHERE ( ( g.gender EQ '' ) OR
		( g.gender IS NULL) );
QUIT;

TITLE 'Total of Missing Values in "GENDER" Variable';
PROC SQL;
SELECT COUNT (*) LABEL = 'NUMBER OF MISSING VALUES'
FROM LIBFT966.TESTING_FI_GENDER_DS_BK g
WHERE ( ( g.gender EQ '' ) OR
		( g.gender IS NULL) );
QUIT;


/* Step 3. Make a copy from current table to Count the Total Observations from Each GENDER */
TITLE 'Make a copy from current table to Count the Total Observations from Each GENDER';
PROC SQL;

CREATE TABLE LIBFT966.TESTING_FI_GENDER_DS_BK_NEW AS
SELECT g.GENDER AS GENDER_NAME, COUNT(*) AS TOTAL_COUNTS
FROM LIBFT966.TESTING_FI_GENDER_DS_BK g
WHERE ( ( g.GENDER IS NOT NULL ) OR
		( g.GENDER NE '' ) )
GROUP BY g.GENDER;
QUIT;


/* Step 4. Display the content in new table that has previously created */
TITLE 'Count of Total Observations from Each Gender';
PROC SQL;

SELECT * 
FROM LIBFT966.TESTING_FI_GENDER_DS_BK_NEW;
QUIT;


/* Step 5. Find the Maximum Count in new table */
TITLE 'Maximum Count in new table';

PROC SQL;
SELECT MAX(g.TOTAL_COUNTS) AS MAX_COUNTS
FROM LIBFT966.TESTING_FI_GENDER_DS_BK_NEW g;
QUIT;


/* Step 6. Find the mode for "GENDER" variable */
TITLE 'Mode for "GENDER" variable';
PROC SQL;
SELECT go.GENDER_NAME
FROM LIBFT966.TESTING_FI_GENDER_DS_BK_NEW go
WHERE go.TOTAL_COUNTS EQ ( SELECT MAX(gi.TOTAL_COUNTS)
						   FROM LIBFT966.TESTING_FI_GENDER_DS_BK_NEW gi); 
						   /* subquery to find the mode for gender */
QUIT;


/* Step 7. Impute the missing values using mode */
TITLE 'Impute the missing values using mode';
PROC SQL;
UPDATE LIBFT966.TESTING_FI_GENDER_DS_BK
SET GENDER = ( SELECT go.GENDER_NAME
					FROM LIBFT966.TESTING_FI_GENDER_DS_BK_NEW go 
					WHERE go.TOTAL_COUNTS EQ ( SELECT MAX(gi.TOTAL_COUNTS)
										 	   FROM LIBFT966.TESTING_FI_GENDER_DS_BK_NEW gi ) )
WHERE ( ( GENDER IS NULL) OR 
		( GENDER EQ '' ) );						
QUIT;							



/* Step 8. List the Missing Values in "GENDER" Variable after imputation */
TITLE 'After Imputation: ';
TITLE2 'List the missing values after imputation';
PROC SQL;
SELECT *
FROM LIBFT966.TESTING_FI_GENDER_DS_BK g
WHERE ( ( g.gender EQ '' ) OR
		( g.gender IS NULL) );
QUIT;

TITLE 'Total of Missing Values in "GENDER" Variable after imputation';
PROC SQL;
SELECT COUNT (*) LABEL = 'NUMBER OF MISSING VALUES'
FROM LIBFT966.TESTING_FI_GENDER_DS_BK g
WHERE ( ( g.gender EQ '' ) OR
		( g.gender IS NULL) );
QUIT;


/******************************
FAMILY_MEMBERS - Categorical Variable
*******************************/
/* Step 1. Make a copy of LIBFT966.TESTING_FI_GENDER_DS_BK */

PROC SQL;

CREATE TABLE LIBFT966.TESTING_FI_FAMILY_MEMBERS_DS_BK AS
SELECT * FROM LIBFT966.TESTING_FI_GENDER_DS_BK;

QUIT;

/* Step 2. List the Missing Values in "FAMILY_MEMBERS" Variable */
TITLE 'Before Imputation: ';
TITLE2 'List the missing values';
PROC SQL;
SELECT *
FROM LIBFT966.TESTING_FI_FAMILY_MEMBERS_DS_BK fm
WHERE ( ( fm.FAMILY_MEMBERS EQ '' ) OR
		( fm.FAMILY_MEMBERS IS NULL) );
QUIT;

TITLE 'Total of Missing Values in "FAMILY_MEMBERS" Variable';
PROC SQL;
SELECT COUNT (*) LABEL = 'NUMBER OF MISSING VALUES'
FROM LIBFT966.TESTING_FI_FAMILY_MEMBERS_DS_BK FM
WHERE ( ( fm.FAMILY_MEMBERS EQ '' ) OR
		( fm.FAMILY_MEMBERS IS NULL) );
QUIT;


/* Step 3. Make a copy from current table to Count the Total Observations from Each family members */
TITLE 'Make a copy from current table to Count the Total Observations from Each family members';
PROC SQL;

CREATE TABLE LIBFT966.TESTING_FI_FM_DS_BK_N AS
SELECT fm.FAMILY_MEMBERS AS FAMILY_MEMBERS, COUNT(*) AS TOTAL_COUNTS
FROM LIBFT966.TESTING_FI_FAMILY_MEMBERS_DS_BK fm
WHERE ( ( fm.FAMILY_MEMBERS IS NOT NULL ) OR
		( fm.FAMILY_MEMBERS NE '' ) )
GROUP BY fm.FAMILY_MEMBERS;
QUIT;


/* Step 4. Display the content in new table that has previously created */
TITLE 'Count of Total Observations from Each family members';
PROC SQL;

SELECT * 
FROM LIBFT966.TESTING_FI_FM_DS_BK_N;
QUIT;


/* Step 5. Find the Maximum Count in new table */
TITLE 'Maximum Count in new table';

PROC SQL;
SELECT MAX(fm.TOTAL_COUNTS) AS MAX_COUNTS
FROM LIBFT966.TESTING_FI_FM_DS_BK_N fm;
QUIT;


/* Step 6. Find the mode for "FAMILY_MEMBERS" variable */
TITLE 'Mode for "FAMILY_MEMBERS" variable';
PROC SQL;
SELECT fmo.FAMILY_MEMBERS
FROM LIBFT966.TESTING_FI_FM_DS_BK_N fmo
WHERE fmo.TOTAL_COUNTS EQ ( SELECT MAX(fmi.TOTAL_COUNTS)
						   FROM LIBFT966.TESTING_FI_FM_DS_BK_N fmi); 
						   /* subquery to find the mode for family members */
QUIT;


/* Step 7. Impute the missing values using mode */
TITLE 'Impute the missing values using mode';
PROC SQL;
UPDATE LIBFT966.TESTING_FI_FAMILY_MEMBERS_DS_BK
SET FAMILY_MEMBERS = ( SELECT fmo.FAMILY_MEMBERS
					FROM LIBFT966.TESTING_FI_FM_DS_BK_N fmo
					WHERE fmo.TOTAL_COUNTS EQ ( SELECT MAX(fmi.TOTAL_COUNTS)
										 	   FROM LIBFT966.TESTING_FI_FM_DS_BK_N fmi ) )
WHERE ( ( FAMILY_MEMBERS IS NULL) OR 
		( FAMILY_MEMBERS EQ '' ) );						
QUIT;							



/* Step 8. List the Missing Values in "FAMILY_MEMBERS" Variable after imputation */
TITLE 'After Imputation: ';
TITLE2 'List the missing values after imputation';
PROC SQL;
SELECT *
FROM LIBFT966.TESTING_FI_FAMILY_MEMBERS_DS_BK fm
WHERE ( ( fm.FAMILY_MEMBERS EQ '' ) OR
		( fm.FAMILY_MEMBERS IS NULL) );
QUIT;

TITLE 'Total of Missing Values in "FAMILY_MEMBERS" Variable after imputation';
PROC SQL;
SELECT COUNT (*) LABEL = 'NUMBER OF MISSING VALUES'
FROM LIBFT966.TESTING_FI_FAMILY_MEMBERS_DS_BK fm
WHERE ( ( fm.FAMILY_MEMBERS EQ '' ) OR
		( fm.FAMILY_MEMBERS IS NULL) );
QUIT;


/* SAS codes to remove '+" */
/* Step 1: SAS Code to List "3+" in FAMILY_MEMBERS variable */
TITLE 'List of "3+" in FAMILY_MEMBERS variable';
PROC SQL;

SELECT fm.FAMILY_MEMBERS,
	   SUBSTR(fm.FAMILY_MEMBERS,1,1),
	   SUBSTR(fm.FAMILY_MEMBERS,2,1)
FROM LIBFT966.TESTING_FI_FAMILY_MEMBERS_DS_BK fm
WHERE ( SUBSTR(fm.FAMILY_MEMBERS,2,1) EQ '+');
QUIT;

/* Step 2: Count Total Observations that has "+" in "FAMILY_MEMBERS" variable */
TITLE 'Total Observations that has "+" in "FAMILY_MEMBERS" variable';
PROC SQL;
SELECT COUNT(*) LABEL = 'Total Observation'
FROM LIBFT966.TESTING_FI_FAMILY_MEMBERS_DS_BK fm
WHERE ( SUBSTR(fm.FAMILY_MEMBERS,2,1) EQ '+' );
QUIT;

/* Step 3: Remove "+" from Observations in "FAMILY_MEMBERS" variable */
TITLE 'Remove "+" from Observations in "FAMILY_MEMBERS" variable';
PROC SQL;
UPDATE LIBFT966.TESTING_FI_FAMILY_MEMBERS_DS_BK
SET FAMILY_MEMBERS = SUBSTR(FAMILY_MEMBERS,1,1)
WHERE ( SUBSTR(FAMILY_MEMBERS,2,1) EQ '+' );
QUIT;

/* Step 4: List the Observations after removing "+" in "FAMILY_MEMBERS" variable */
TITLE 'List the Observations after removing "+" in "FAMILY_MEMBERS" variable';
PROC SQL;
SELECT fm.FAMILY_MEMBERS LABEL = 'FAMILY_MEMBERS',
	   COUNT(*) LABEL = 'Number of Applicants'
FROM LIBFT966.TESTING_FI_FAMILY_MEMBERS_DS_BK fm
GROUP BY fm.FAMILY_MEMBERS;
QUIT;


/******************************
EMPLOYMENT - Categorical Variable
*******************************/
/* Step 1. Make a copy of LIBFT966.TESTING_FI_FAMILY_MEMBERS_DS_BK */

PROC SQL;

CREATE TABLE LIBFT966.TESTING_FI_EMPLOYMENT_DS_BK AS
SELECT * FROM LIBFT966.TESTING_FI_FAMILY_MEMBERS_DS_BK;

QUIT;

/* Step 2. List the Missing Values in "EMPLOYMENT" Variable */
TITLE 'Before Imputation: ';
TITLE2 'List the missing values';
PROC SQL;
SELECT *
FROM LIBFT966.TESTING_FI_EMPLOYMENT_DS_BK e
WHERE ( ( e.EMPLOYMENT EQ '' ) OR
		( e.EMPLOYMENT IS NULL) );
QUIT;

TITLE 'Total of Missing Values in "EMPLOYMENT" Variable';
PROC SQL;
SELECT COUNT (*) LABEL = 'NUMBER OF MISSING VALUES'
FROM LIBFT966.TESTING_FI_EMPLOYMENT_DS_BK e
WHERE ( ( e.EMPLOYMENT EQ '' ) OR
		( e.EMPLOYMENT IS NULL) );
QUIT;


/* Step 3. Make a copy from current table to Count the Total Observations from Each employment */
TITLE 'Make a copy from current table to Count the Total Observations from Each employment';
PROC SQL;

CREATE TABLE LIBFT966.TESTING_FI_EMPLOYMENT_DS_BK_NEW AS
SELECT e.EMPLOYMENT AS EMPLOYMENT, COUNT(*) AS TOTAL_COUNTS
FROM LIBFT966.TESTING_FI_EMPLOYMENT_DS_BK e
WHERE ( ( e.EMPLOYMENT IS NOT NULL ) OR
		( e.EMPLOYMENT NE '' ) )
GROUP BY e.EMPLOYMENT;
QUIT;


/* Step 4. Display the content in new table that has previously created */
TITLE 'Count of Total Observations from Each employment';
PROC SQL;

SELECT * 
FROM LIBFT966.TESTING_FI_EMPLOYMENT_DS_BK_NEW;
QUIT;


/* Step 5. Find the Maximum Count in new table */
TITLE 'Maximum Count in new table';

PROC SQL;
SELECT MAX(e.TOTAL_COUNTS) AS MAX_COUNTS
FROM LIBFT966.TESTING_FI_EMPLOYMENT_DS_BK_NEW e;
QUIT;


/* Step 6. Find the mode for "EMPLOYMENT" variable */
TITLE 'Mode for "EMPLOYMENT" variable';
PROC SQL;
SELECT eo.EMPLOYMENT
FROM LIBFT966.TESTING_FI_EMPLOYMENT_DS_BK_NEW eo
WHERE eo.TOTAL_COUNTS EQ ( SELECT MAX(ei.TOTAL_COUNTS)
						   FROM LIBFT966.TESTING_FI_EMPLOYMENT_DS_BK_NEW ei); 
						   /* subquery to find the mode for employment */
QUIT;


/* Step 7. Impute the missing values using mode */
TITLE 'Impute the missing values using mode';
PROC SQL;
UPDATE LIBFT966.TESTING_FI_EMPLOYMENT_DS_BK
SET EMPLOYMENT = ( SELECT eo.EMPLOYMENT
					FROM LIBFT966.TESTING_FI_EMPLOYMENT_DS_BK_NEW eo
					WHERE eo.TOTAL_COUNTS EQ ( SELECT MAX(ei.TOTAL_COUNTS)
										 	   FROM LIBFT966.TESTING_FI_EMPLOYMENT_DS_BK_NEW ei ) )
WHERE ( ( EMPLOYMENT IS NULL) OR 
		( EMPLOYMENT EQ '' ) );						
QUIT;							


/* Step 8. List the Missing Values in "EMPLOYMENT" Variable after imputation */
TITLE 'After Imputation: ';
TITLE2 'List the missing values after imputation';
PROC SQL;
SELECT *
FROM LIBFT966.TESTING_FI_EMPLOYMENT_DS_BK e
WHERE ( ( e.EMPLOYMENT EQ '' ) OR
		( e.EMPLOYMENT IS NULL) );
QUIT;

TITLE 'Total of Missing Values in "EMPLOYMENT" Variable after imputation';
PROC SQL;
SELECT COUNT (*) LABEL = 'NUMBER OF MISSING VALUES'
FROM LIBFT966.TESTING_FI_EMPLOYMENT_DS_BK e
WHERE ( ( e.EMPLOYMENT EQ '' ) OR
		( e.EMPLOYMENT IS NULL) );
QUIT;


/******************************
LOAN_HISTORY - Categorical Variable
*******************************/
/* Step 1. Make a copy of LIBFT966.TESTING_FI_EMPLOYMENT_DS_BK */

PROC SQL;

CREATE TABLE LIBFT966.TESTING_FI_LOAN_HISTORY_DS_BK AS
SELECT * FROM LIBFT966.TESTING_FI_EMPLOYMENT_DS_BK;

QUIT;

/* Step 2. List the Missing Values in "LOAN_HISTORY" Variable */
TITLE 'Before Imputation: ';
TITLE2 'List the missing values';
PROC SQL;
SELECT *
FROM LIBFT966.TESTING_FI_LOAN_HISTORY_DS_BK lh
WHERE ( ( lh.LOAN_HISTORY EQ . ) OR
		( lh.LOAN_HISTORY IS NULL) );
QUIT;

TITLE 'Total of Missing Values in "LOAN_HISTORY" Variable';
PROC SQL;
SELECT COUNT (*) LABEL = 'NUMBER OF MISSING VALUES'
FROM LIBFT966.TESTING_FI_LOAN_HISTORY_DS_BK lh
WHERE ( ( lh.LOAN_HISTORY EQ . ) OR
		( lh.LOAN_HISTORY IS NULL) );
QUIT;


/* Step 3. Make a copy from current table to Count the Total Observations from Each loan history */
TITLE 'Make a copy from current table to Count the Total Observations from Each loan history';
PROC SQL;

CREATE TABLE LIBFT966.TESTING_FI_LH_DS_BK_NEW AS
SELECT lh.LOAN_HISTORY AS LOAN_HISTORY, COUNT(*) AS TOTAL_COUNTS
FROM LIBFT966.TESTING_FI_LOAN_HISTORY_DS_BK lh
WHERE ( ( lh.LOAN_HISTORY IS NOT NULL ) OR
		( lh.LOAN_HISTORY NE . ) )
GROUP BY lh.LOAN_HISTORY;
QUIT;


/* Step 4. Display the content in new table that has previously created */
TITLE 'Count of Total Observations from Each loan history';
PROC SQL;

SELECT * 
FROM LIBFT966.TESTING_FI_LH_DS_BK_NEW;
QUIT;


/* Step 5. Find the Maximum Count in new table */
TITLE 'Maximum Count in new table';

PROC SQL;
SELECT MAX(lh.TOTAL_COUNTS) AS MAX_COUNTS
FROM LIBFT966.TESTING_FI_LH_DS_BK_NEW lh;
QUIT;


/* Step 6. Find the mode for "LOAN_HISTORY" variable */
TITLE 'Mode for "LOAN_HISTORY" variable';
PROC SQL;
SELECT lho.LOAN_HISTORY
FROM LIBFT966.TESTING_FI_LH_DS_BK_NEW lho
WHERE lho.TOTAL_COUNTS EQ ( SELECT MAX(lhi.TOTAL_COUNTS)
						   FROM LIBFT966.TESTING_FI_LH_DS_BK_NEW lhi); 
						   /* subquery to find the mode for loan history */
QUIT;


/* Step 7. Impute the missing values using mode */
TITLE 'Impute the missing values using mode';
PROC SQL;
UPDATE LIBFT966.TESTING_FI_LOAN_HISTORY_DS_BK
SET LOAN_HISTORY = ( SELECT lho.LOAN_HISTORY
					FROM LIBFT966.TESTING_FI_LH_DS_BK_NEW lho
					WHERE lho.TOTAL_COUNTS EQ ( SELECT MAX(lhi.TOTAL_COUNTS)
										 	   FROM LIBFT966.TESTING_FI_LH_DS_BK_NEW lhi ) )
WHERE ( ( LOAN_HISTORY IS NULL) OR 
		( LOAN_HISTORY EQ . ) );						
QUIT;							


/* Step 8. List the Missing Values in "LOAN_HISTORY" Variable after imputation */
TITLE 'After Imputation: ';
TITLE2 'List the missing values after imputation';
PROC SQL;
SELECT *
FROM LIBFT966.TESTING_FI_LOAN_HISTORY_DS_BK lh
WHERE ( ( lh.LOAN_HISTORY EQ . ) OR
		( lh.LOAN_HISTORY IS NULL) );
QUIT;

TITLE 'Total of Missing Values in "LOAN_HISTORY" Variable after imputation';
PROC SQL;
SELECT COUNT (*) LABEL = 'NUMBER OF MISSING VALUES'
FROM LIBFT966.TESTING_FI_LOAN_HISTORY_DS_BK lh
WHERE ( ( lh.LOAN_HISTORY EQ . ) OR
		( lh.LOAN_HISTORY IS NULL) );
QUIT;


/************************************************************************
Imputation for continuous variable on dataset LIBFT966.TESTING_TP061966
*************************************************************************/
/******************************
LOAN_AMOUNT - Continuous Variable
******************************/
/* Step 1. List the missing values in "LOAN_AMOUNT" Variable */
TITLE 'Missing values in "LOAN_AMOUNT" Variable';
PROC SQL;
SELECT * 
FROM LIBFT966.TESTING_FI_LOAN_HISTORY_DS_BK la
WHERE ( la.LOAN_AMOUNT EQ . );
QUIT;

/* Step 2. Count the total of missing values in "LOAN_AMOUNT" Variable */
TITLE 'The total of missing values in "LOAN_AMOUNT" Variable';
PROC SQL;
SELECT COUNT(*) LABEL = 'Total Missing Values'
FROM LIBFT966.TESTING_FI_LOAN_HISTORY_DS_BK la
WHERE ( la.LOAN_AMOUNT EQ . );
QUIT;

/* Step 3. SAS Code to make a Copy of the "TESTING_FI_LOAN_HISTORY_DS_BK" for "LOAN_AMOUNT" Variable Imputation */
TITLE 'Make a Copy of the "TESTING_FI_LOAN_HISTORY_DS_BK" for "LOAN_AMOUNT" Variable Imputation';
PROC SQL;
CREATE TABLE LIBFT966.TESTING_FI_LOAN_AMOUNT_DS_BK AS
SELECT * FROM LIBFT966.TESTING_FI_LOAN_HISTORY_DS_BK;
QUIT;

/* Step 4. Impute the missing values using mean for "LOAN_AMOUNT" variable */
TITLE 'Impute the missing values using mean';
PROC STDIZE DATA = LIBFT966.TESTING_FI_LOAN_AMOUNT_DS_BK REPONLY
METHOD = MEAN OUT=LIBFT966.TESTING_FI_LOAN_AMOUNT_DS_BK;
VAR LOAN_AMOUNT;
QUIT;


/******************************
LOAN_DURATION - Continuous Variable
******************************/
/* Step 1. List the missing values in "LOAN_DURATION" Variable */
TITLE 'Missing values in "LOAN_DURATION" Variable';
PROC SQL;
SELECT * 
FROM LIBFT966.TESTING_FI_LOAN_AMOUNT_DS_BK ld
WHERE ( ld.LOAN_DURATION EQ . );
QUIT;

/* Step 2. Count the total of missing values in "LOAN_DURATION" Variable */
TITLE 'The total of missing values in "LOAN_DURATION" Variable';
PROC SQL;
SELECT COUNT(*) LABEL = 'Total Missing Values'
FROM LIBFT966.TESTING_FI_LOAN_AMOUNT_DS_BK ld
WHERE ( ld.LOAN_DURATION EQ . );
QUIT;

/* Step 3. SAS Code to make a Copy of the "TESTING_FI_LOAN_AMOUNT_DS_BK" for "LOAN_DURATION" Variable Imputation */
TITLE 'Make a Copy of the "TESTING_FI_LOAN_AMOUNT_DS_BK" for "LOAN_DURATION" Variable Imputation';
PROC SQL;
CREATE TABLE LIBFT966.TESTING_FI_LOAN_DURATION_DS_BK AS
SELECT * FROM LIBFT966.TESTING_FI_LOAN_AMOUNT_DS_BK;
QUIT;

/* Step 4. Impute the missing values using mean for "LOAN_DURATION" variable */
TITLE 'Impute the missing values using mean';
PROC STDIZE DATA = LIBFT966.TESTING_FI_LOAN_DURATION_DS_BK REPONLY
METHOD = MEAN OUT=LIBFT966.TESTING_FI_LOAN_DURATION_DS_BK;
VAR LOAN_DURATION;
QUIT;


/*********************************************************
Building a Logistic Regression Model AND Make a Prediction
**********************************************************/
PROC LOGISTIC DATA = LIBFT966.TRAINING_FI_LOAN_DURATION_DS_BK OUTMODEL = LIBFT966.TRAINING_DS_LRMODEL;

/* Categorical Variables */
CLASS
GENDER
MARITAL_STATUS
FAMILY_MEMBERS
QUALIFICATION
EMPLOYMENT
LOAN_LOCATION;

MODEL LOAN_APPROVAL_STATUS =
/* Independent Variables */
/* Dependent Variables is LOAN_APPROVAL_STATUS */
GENDER 
MARITAL_STATUS
FAMILY_MEMBERS
QUALIFICATION
EMPLOYMENT
CANDIDATE_INCOME
GUARANTEE_INCOME
LOAN_AMOUNT
LOAN_DURATION
LOAN_HISTORY
LOAN_LOCATION;
OUTPUT OUT = LIBFT966.TRAINING_DS_LRMODEL_OUTPUT P = PRED_PROB;

RUN;

/* Show the predicted probability that was discovered inside the “LIBFT966.TRAINING DS” dataset */

PROC SQL;
SELECT * FROM LIBFT966.TRAINING_DS_LRMODEL_OUTPUT;
QUIT;

/* Show the content of the LR Model that was generated */

PROC SQL;
SELECT * FROM LIBFT966.TRAINING_DS_LRMODEL;
QUIT;

/* Create the Prediction */

PROC LOGISTIC INMODEL = LIBFT966.TRAINING_DS_LRMODEL; /* Passing the Model that has been created */
SCORE DATA = LIBFT966.TESTING_FI_LOAN_DURATION_DS_BK /* Passing the Testing Dataset */
OUT = LIBFT966.TESTING_DS_PREDICTIONS; /* The output location */
QUIT;

/* Display the Prediction */

PROC SQL;
SELECT * FROM LIBFT966.TESTING_DS_PREDICTIONS;
QUIT;