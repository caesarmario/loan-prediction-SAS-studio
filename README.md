<h1 align="center">💳 Loan Prediction Eligibilty - Lasiandra Finance Inc. 💳 </h1>
<p align="center">using <b>SAS Studio 🖥</b></p><br>
<p align="center">
  <img src="https://img.shields.io/static/v1?label=%F0%9F%8C%9F&message=If%20Useful&style=style=flat&color=BC4E99" alt="Star Badge"/>
  <a href="https://www.github.com/caesarmario">
    <img src="https://img.shields.io/github/followers/caesarmario?style=social&link=https://www.github.com/caesarmario" alt"GitHub"/>
  </a>
  <a href="https://linktr.ee/caesarmario_">
    <img src="https://img.shields.io/badge/Follow%20My%20Other%20Works-019875?style=flat&labelColor=019875&link=https:/linktr.ee/caesarmario_" alt="Linktree"/>
  </a>
  <a href="https://www.kaggle.com/caesarmario/86-eligibility-prediction-w-various-ml-models/notebook">
    <img src="https://img.shields.io/badge/-Similar%20Works%20on%20Kaggle-teal?style=flat&logo=kaggle&logoColor=deepblue&link=https://www.kaggle.com/caesarmario/86-eligibility-prediction-w-various-ml-models/notebook" alt="Similar Works"/>
  </a>
</p>
<br>

## 📃 Table of Contents:
  - [About Project](#-about-project)
  - [Objectives](#-objectives)
  - [Data Set Description](#-data-set-description)
  - [EDA](#-eda)
      - [Data Sets Structure](#-data-sets-structure)
      - [Training Data Set](#-training-data-set)
          - [Univariate](#-univariate---training)
          - [Bivariate](#-bivariate---training)
      - [Testing Data Set](#-testing-data-set)
          - [Univariate](#-univariate---testing)
          - [Bivariate](#-bivariate---testing)
  - [Data Imputation](#-data-imputation)
  - [Logistic Regression Result](#-logistic-regression-result)
      - [Logistic Regression Summary](#-summary-of-logistic-regression)
      - [Model Output](#-logistic-regression-model-output)
      - [Prediction Output](#-prediction-output)

## 🖋 About Project:
👉 Lasiandra Finance Inc. (LFI) New York, USA is a leading private financing company which caters the funding needs of Small and Medium enterprises (SME). LFI clearly understood that some business dreams need that extra push to see them accelerated. Hence it allows its loaning process as tailor-made and customer centric. In the past few years, it has tremendously expanded its wings and to speed up the process, it needs to automate the loan eligibility process based on customer portfolio entered online. <br><br>
👉 The main problem faced by the LFI is the approval process of the loans. Because it is a complicated procedure of verification and validation but still there is no guarantee whether the chosen applicant is the deserving one out of all applicants. **Hence, it needs a machine learning model which can predict the loan approval**. <br><br>
👉 As data scientist in LFI, it is needed to **analyze the data set obtained from the past customer and build logistic regression model to predict the approval process**.
<br><br>

## 📌 Objectives:
*   Analyze customer data provided in data set (EDA)
*   Build logistic regression that can predict loan approval
<br><br>

## 🧾 Data Set Description:
👉 There are **2 data sets** used in this project, **"TRAINING_DS.csv"** and **"TESTING_DS.csv"**. <br>
👉 There are **13 variables in this data sets**:
  - **8** **categorical** variables,
  - **4** **continuous** variables, and
  - **1** variable to accommodate the **loan ID**
<br>
👉 The structure of the two data sets that have been given: <br><br>
<table style="width:100%">
  <thead>
    <tr>
      <th style="text-align:center; font-weight: bold; font-size:14px">Variable Name</th>
      <th style="text-align:center; font-weight: bold; font-size:14px">Description</th>
      <th style="text-align:center; font-weight: bold; font-size:14px">Sample Data</th>
      <th style="text-align:center; font-weight: bold; font-size:14px">Available in Data Set</th>
      <th style="text-align:center; font-weight: bold; font-size:14px">Variabel Type</th>
      <th style="text-align:center; font-weight: bold; font-size:14px">Data Type</th>
      <th style="text-align:center; font-weight: bold; font-size:14px">Length</th>
    </tr>
  </thead>
  <tbody>
  <tr>
    <td>SME_LOAN_ID_NO</td>
    <td>Loan reference number <br> (unique ID)</td>
    <td>TRAINING_DS, TESTING_DS</td>
    <td>Categorical</td>
    <td>Char</td>
    <td>8</td>
    <td>LP001002; LP001003; …</td>
  </tr>
  <tr>
    <td>GENDER</td>
    <td>Applicant gender <br> (Male or Female)</td>
    <td>TRAINING_DS, TESTING_DS</td>
    <td>Categorical</td>
    <td>Char</td>
    <td>6</td>
    <td>Male; Female</td>
  </tr>
  <tr>
    <td>MARITAL_STATUS</td>
    <td>Applicant marital status <br> (Married or not married)</td>
    <td>TRAINING_DS, TESTING_DS</td>
    <td>Categorical</td>
    <td>Char</td>
    <td>11</td>
    <td>Married; Not Married</td>
  </tr>
  <tr>
    <td>FAMILY_MEMBERS</td>
    <td>Numberof family members owned by applicant</td>
    <td>TRAINING_DS, TESTING_DS</td>
    <td>Categorical</td>
    <td>Char</td>
    <td>2</td>
    <td>0;1; 2; 3+</td>
  </tr>
  <tr>
    <td>QUALIFICATION</td>
    <td>Applicant qualification <br> (graduate or under graduate)</td>
    <td>TRAINING_DS, TESTING_DS</td>
    <td>Categorical</td>
    <td>Char</td>
    <td>14</td>
    <td>Graduate; Under Graduate</td>
  </tr>
  <tr>
    <td>EMPLOYMENT</td>
    <td>Applicant employment status <br> (yes or no)</td>
    <td>TRAINING_DS, TESTING_DS</td>
    <td>Categorical</td>
    <td>Char</td>
    <td>3</td>
    <td>Yes; No</td>
  </tr>
  <tr>
    <td>CANDIDATE_INCOME</td>
    <td>Applicant’s monthly salary/income</td>
    <td>TRAINING_DS, TESTING_DS</td>
    <td>Continuous</td>
    <td>Numeric</td>
    <td>8</td>
    <td>5849; 4583; …</td>
  </tr>
  <tr>
    <td>GUARANTEE_INCOME</td>
    <td>Earnings of both applicants</td>
    <td>TRAINING_DS, TESTING_DS</td>
    <td>Continuous</td>
    <td>Numeric</td>
    <td>8</td>
    <td>1508; 2358; …</td>
  </tr>
  <tr>
    <td>LOAN_AMOUNT</td>
    <td>Loan amount <br> (in thousands)</td>
    <td>TRAINING_DS, TESTING_DS</td>
    <td>Continuous</td>
    <td>Numeric</td>
    <td>8</td>
    <td>128; 66; …</td>
  </tr>
  <tr>
    <td>LOAN_DURATION</td>
    <td>The loan’s repayment period</td>
    <td>TRAINING_DS, TESTING_DS</td>
    <td>Categorical</td>
    <td>Numeric</td>
    <td>8</td>
    <td>360; 120; …</td>
  </tr>
  <tr>
    <td>LOAN_HISTORY</td>
    <td>Records of previous loans</td>
    <td>TRAINING_DS, TESTING_DS</td>
    <td>Categorical</td>
    <td>Numeric</td>
    <td>8</td>
    <td>0; 1</td>
  </tr>
  <tr>
    <td>LOAN_LOCATION</td>
    <td>The location of loan (city/village/town)</td>
    <td>TRAINING_DS, TESTING_DS</td>
    <td>Categorical</td>
    <td>Char</td>
    <td>7</td>
    <td>City; Village; Town</td>
  </tr>
  <tr>
    <td>LOAN_APPROVAL_STATUS</td>
    <td>Approval status of loan</td>
    <td>TESTING_DS</td>
    <td>Categorical</td>
    <td>Char</td>
    <td>1</td>
    <td>Y; N</td>
  </tr>
</tbody>
</table>


## 📊 EDA:
### 🏛 Data Sets Structure:
![](https://raw.githubusercontent.com/caesarmario/loan-prediction-SAS-studio/main/Screenshot/Dataset%20Structure.png)

### ⚙ Training Data Set
#### ▶ Univariate - Training:
*   GENDER <br>
![GENDER](https://github.com/caesarmario/loan-prediction-SAS-studio/blob/main/Screenshot/Training/Univariate/Training_Univariate_Gender.png)<br>
    - **13 LFI customers had an unidentified gender** due to missing values in the dataset.
    - Furthermore, the dataset has an **uneven distribution between male and female loan applicants**, with the percentage of male applicants is 81.36% (489 male applicants).
    - In comparison, the percentage of female applicants is only 18.64% (112 female applicants)
<br><br>

*   MARITAL_STATUS <br>
![MARITAL_STATUS](https://github.com/caesarmario/loan-prediction-SAS-studio/blob/main/Screenshot/Training/Univariate/Training_Univariate_MaritalStatus.png)<br>
    - **Three loan applicants** in the training dataset **had an unknown marital status** due to missing values.
    - The dataset has an **uneven distribution between married and not married loan applicants**, with the percentage of married applicants is 65.14% (398 married applicants).
    - In comparison, the percentage of not married applicants is only 34.86% (213 not married applicants)
<br><br>

*   FAMILY_MEMBERS <br>
![FAMILY_MEMBERS](https://github.com/caesarmario/loan-prediction-SAS-studio/blob/main/Screenshot/Training/Univariate/Training_Univariate_FamilyMembers.png)<br>
    - **15 loan applicants in the training dataset had an unidentified number of family members** due to missing values.
    - As many as 57.6% (345 applicants) have 0 family members, 17.03% (102 applicants) have one family member.
    - Moreover, as many as 16.86% (101 applicants) have two family members.
    - 8.51% (51 applicants) have three or more family members.
<br><br>

*   QUALIFICATION <br>
![QUALIFICATION](https://github.com/caesarmario/loan-prediction-SAS-studio/blob/main/Screenshot/Training/Univariate/Training_Univariate_Qualification.png)<br>
    - **There are no missing values** or no applicants with unidentified qualifications in the dataset.
    - The dataset has an uneven distribution between graduated and under graduated applicants, with the percentage of graduated applicants is 78.18% (480 graduated applicants).
    - In comparison, the percentage of under graduated applicants is only 21.82% (134 under graduated applicants).
<br><br>

*   EMPLOYMENT <br>
![EMPLOYMENT](https://github.com/caesarmario/loan-prediction-SAS-studio/blob/main/Screenshot/Training/Univariate/Training_Univariate_Employment.png)<br>
    - **32 loan applicants in the training dataset had an unknown employment status** due to missing values.
    - The dataset has an **uneven distribution between yes (employed) and no (unemployed) loan applicants**, with the percentage of no (unemployed) applicants is 85.91% (500 unemployed applicants).
    - While the percentage of not yes (employed) applicants is only 14.09% (82 employed applicants).
<br><br>

*   LOAN_HISTORY <br>
![LOAN_HISTORY](https://github.com/caesarmario/loan-prediction-SAS-studio/blob/main/Screenshot/Training/Univariate/Training_Univariate_LoanHistory.png)<br>
    - **50 loan applicants in the training dataset had an unidentified history of loan applicants** due to missing values.
    - As many as 57.6% (345 applicants) have 0 family members, 17.03% (102 applicants) have one family member.
    - Moreover, as many as 16.86% (101 applicants) have two family members.
    - 8.51% (51 applicants) have three or more family members.
<br><br>

*   LOAN_LOCATION <br>
![LOAN_LOCATION](https://github.com/caesarmario/loan-prediction-SAS-studio/blob/main/Screenshot/Training/Univariate/Training_Univariate_LoanLocation.png)<br>
    - **There are no missing values or no applicants with unidentified qualifications** in the dataset.
    - As many as 32.9% (202 applicants) live in the city, 37.95% (233 applicants) live in the town. 
    - Moreover, as many as 29.15% (179 applicants) live in the village
<br><br>

*   LOAN_APPROVAL_STATUS <br>
![LOAN_APPROVAL_STATUS](https://github.com/caesarmario/loan-prediction-SAS-studio/blob/main/Screenshot/Training/Univariate/Training_Univariate_LoanApprovalStatus.png)<br>
    - **There are no missing values or no applicants that had unidentified loan approval status** in the dataset.
    - The dataset has an uneven distribution between approved loans (Y) and rejected loans (N), with the percentage of the approved loan (Y) is 68.73% (422 applicants).
    - The percentage of the rejected loan (N) is 31.27% (192 applicants).
<br><br>

*   CANDIDATE_INCOME <br>
![CANDIDATE_INCOME](https://github.com/caesarmario/loan-prediction-SAS-studio/blob/main/Screenshot/Training/Univariate/Training_Univariate_CandidateIncome.png)<br>
    - It can be seen that there are no missing values or no applicants that had unidentified income in the dataset
    - Both the histogram, mean and median values indicate that the data distribution for this variable is positively skewed, with the median 3,812.5 and mean 5,403.46
    - Based on the standard deviation, mean, and maximum value, it can be determined that this variable contains extreme outliers because the maximum value is greater than the (mean + 3x standard deviation) value.
<br><br>

*   GUARANTEE_INCOME <br>
![GUARANTEE_INCOME](https://github.com/caesarmario/loan-prediction-SAS-studio/blob/main/Screenshot/Training/Univariate/Training_Univariate_GuaranteeIncome.png)<br>
    - There are no missing values or no applicants that had unidentified guarantee income in the dataset.
    - Both the histogram, mean and median values indicate that the data distribution for this variable is positively skewed, with the median 1188.50 and mean 1621.25
    - Based on the standard deviation, mean, and maximum value, it can be determined that this variable contains extreme outliers because the maximum value is greater than the (mean + 3x standard deviation) value.
<br><br>

*   LOAN_AMOUNT <br>
![LOAN_AMOUNT](https://github.com/caesarmario/loan-prediction-SAS-studio/blob/main/Screenshot/Training/Univariate/Training_Univariate_LoanAmount.png)<br>
    - There are 22 missing values.
    - Both the histogram, mean and median values indicate that the data distribution for this variable is positively skewed, with the median 128 and mean 146.4121622
<br><br>

*   LOAN_DURATION <br>
![LOAN_DURATION](https://github.com/caesarmario/loan-prediction-SAS-studio/blob/main/Screenshot/Training/Univariate/Training_Univariate_LoanDuration.png)<br>
    - It can be seen that **there are 14 missing values**.
    - Both the histogram, mean and median values indicate that the data distribution for this variable is positively skewed, with the median 360 and mean 342
<br><br>

#### ▶ Bivariate - Training:
*   GENDER - MARITAL_STATUS <br>
![GENDER - MARITAL_STATUS](https://github.com/caesarmario/loan-prediction-SAS-studio/blob/main/Screenshot/Training/Bivariate/Training_Bivariate_Gender_MaritalStatus.png)<br>
    - Most male applicants are already married (92.01%). In contrast, the majority of female applicants are not yet married (38.01%).
    - The percentage of female applicants who are already married is only 7.99%, while the percentage of male applicants who are not yet married is 61.90%.
    - There are 16 missing data due to three missing values for married status and thirteen missing values for gender.
<br><br>

*   FAMILY_MEMBERS - QUALIFICATION <br>
![FAMILY_MEMBERS - QUALIFICATION](https://github.com/caesarmario/loan-prediction-SAS-studio/blob/main/Screenshot/Training/Bivariate/Training_Bivariate_FamilyMembers_Qualification.png)<br>
    - The majority of loan applicants who are graduates do not have any family members (58.64%).
    - Most loan applicants who are undergraduates do not have any family members (53.85%).
    - Graduates with one family member are 17.27%, while undergraduates with one family member are 16.15%.
    - The percentage of graduates with two family members is 16.42%, while undergraduates with two family members are 18.46%.
    - The percentage of graduates with three or more family members is 7.68%, while undergraduates with three or more family members are 11.54%.
    - There are 15 missing values; this is since there are 15 missing data for family members but no missing value for qualification.
<br><br>

*   EMPLOYMENT - LOAN_HISTORY <br>
![EMPLOYMENT - LOAN_HISTORY](https://github.com/caesarmario/loan-prediction-SAS-studio/blob/main/Screenshot/Training/Bivariate/Training_Bivariate_Employment_LoanHistory.png)<br>
    - It can be seen that 86% of unemployed loan applicants have good loan history.
    - The loan applicants who are also unemployed have bad loan history with a percentage of 86.36%.
    - It can be seen that the percentage of applicants that are employed and have bad loan history is 13.64%, and the percentage of applicants that are employed and have good loan history is 14.00%. 
    - There are 76 missing values because there are 32 missing values in employment, 50 missing values in loan history, and the remaining missing values for employment and loan history.
<br><br>

*   LOAN_LOCATION - LOAN_APPROVAL_STATUS <br>
![LOAN_LOCATION - LOAN_APPROVAL_STATUS](https://github.com/caesarmario/loan-prediction-SAS-studio/blob/main/Screenshot/Training/Bivariate/Training_Bivariate_LoanLocation_LoanApprovalStatus.png)<br>
    - Most loan applications that got rejected belong to applicants from cities and villages, with both percentages being 35.94%.
    - It can be seen that the percentages of rejected loan applications from towns are lower than loan applications from cities and villages (28.13%).
    - It can be seen that most loan applications that got accepted are from a town with a percentage of 42.42%.
    - It can be seen that the percentage of approved loan applications from the city is 31.52% and from the village is 26.07%.
    - It can be seen that there are no missing values from the loan location variable and the loan approval status variable.
<br><br>

*   GENDER - LOAN_APPROVAL_STATUS <br>
![GENDER - LOAN_APPROVAL_STATUS](https://github.com/caesarmario/loan-prediction-SAS-studio/blob/main/Screenshot/Training/Bivariate/Training_Bivariate_Gender_LoanApprovalStatus.png)<br>
    - It can be seen that the majority of approved loan applications comes from male applicants, with a percentage of 81.88%.
    - It can also be seen that most rejected loan applications come from male applicants, with 80.21%.
    - The percentage of female applicants with approved loan applications is 18.12%. The percentage of female applicants with rejected loan applications is 19.79%
    - There are 13 missing values, with 13 missing values in the gender variable and none in loan approval status.
<br><br>
!!!!!!!!!!!!
*   LOAN_APPROVAL_STATUS - Candidate Income <br>
![LOAN_APPROVAL_STATUS - Candidate Income](https://github.com/caesarmario/loan-prediction-SAS-studio/blob/main/Screenshot/Training/Bivariate/Training_Bivariate_LoanApprovalStatus_CandidateIncome.png)<br>
    - It can be seen that **there are 14 missing values**.
    - Both the histogram, mean and median values indicate that the data distribution for this variable is positively skewed, with the median 360 and mean 342
<br><br>

*   LOAN_APPROVAL_STATUS - Guarantee Income <br>
![LOAN_APPROVAL_STATUS - Guarantee Income](https://github.com/caesarmario/loan-prediction-SAS-studio/blob/main/Screenshot/Training/Bivariate/Training_Bivariate_LoanApprovalStatus_GuaranteeIncome.png)<br>
    - It can be seen that **there are 14 missing values**.
    - Both the histogram, mean and median values indicate that the data distribution for this variable is positively skewed, with the median 360 and mean 342
<br><br>

*   Loan Approval Status - Loan Amount <br>
![Loan Approval Status - Loan Amount](https://github.com/caesarmario/loan-prediction-SAS-studio/blob/main/Screenshot/Training/Bivariate/Training_Bivariate_LoanApprovalStatus_LoanAmount.png)<br>
    - It can be seen that **there are 14 missing values**.
    - Both the histogram, mean and median values indicate that the data distribution for this variable is positively skewed, with the median 360 and mean 342
<br><br>

*   Candidate Income - Guarantee Income <br>
![Candidate Income - Guarantee Income](https://github.com/caesarmario/loan-prediction-SAS-studio/blob/main/Screenshot/Training/Bivariate/Training_Bivariate_CandidateIncome_GuaranteeIncome.png)<br>
    - It can be seen that **there are 14 missing values**.
    - Both the histogram, mean and median values indicate that the data distribution for this variable is positively skewed, with the median 360 and mean 342
<br><br>

*   Loan Amount - Loan Duration <br>
![Loan Amount - Loan Duration](https://github.com/caesarmario/loan-prediction-SAS-studio/blob/main/Screenshot/Training/Bivariate/Training_Bivariate_LoanAmount_LoanDuration.png)<br>
    - It can be seen that **there are 14 missing values**.
    - Both the histogram, mean and median values indicate that the data distribution for this variable is positively skewed, with the median 360 and mean 342
<br><br>

### ⚒ Testing Data Set
#### ▶ Univariate - Testing:
*   Gender <br>
![Gender](https://github.com/caesarmario/loan-prediction-SAS-studio/blob/main/Screenshot/Testing/Univariate/Testing_Univariate_Gender.png)<br><br>
*   Marital Status <br>
![Marital Status](https://github.com/caesarmario/loan-prediction-SAS-studio/blob/main/Screenshot/Testing/Univariate/Testing_Univariate_MaritalStatus.png)<br><br>
*   Family Members <br>
![Family Members](https://github.com/caesarmario/loan-prediction-SAS-studio/blob/main/Screenshot/Testing/Univariate/Testing_Univariate_FamilyMembers.png)<br><br>
*   Qualification <br>
![Qualification](https://github.com/caesarmario/loan-prediction-SAS-studio/blob/main/Screenshot/Testing/Univariate/Testing_Univariate_Qualification.png)<br><br>
*   Employment <br>
![Employment](https://github.com/caesarmario/loan-prediction-SAS-studio/blob/main/Screenshot/Testing/Univariate/Testing_Univariate_Employment.png)<br><br>
*   Loan History <br>
![Loan History](https://github.com/caesarmario/loan-prediction-SAS-studio/blob/main/Screenshot/Testing/Univariate/Testing_Univariate_LoanHistory.png)<br><br>
*   Loan Location <br>
![Loan Location](https://github.com/caesarmario/loan-prediction-SAS-studio/blob/main/Screenshot/Testing/Univariate/Testing_Univariate_LoanLocation.png)<br><br>
*   Candidate Income <br>
![Candidate Income](https://github.com/caesarmario/loan-prediction-SAS-studio/blob/main/Screenshot/Testing/Univariate/Testing_Univariate_CandidateIncome.png)<br><br>
*   Guarantee Income <br>
![Guarantee Income](https://github.com/caesarmario/loan-prediction-SAS-studio/blob/main/Screenshot/Testing/Univariate/Testing_Univariate_GuaranteeIncome.png)<br><br>
*   Loan Amount <br>
![Loan Amount](https://github.com/caesarmario/loan-prediction-SAS-studio/blob/main/Screenshot/Testing/Univariate/Testing_Univariate_LoanAmount.png)<br><br>
*   Loan Duration <br>
![Loan Duration](https://github.com/caesarmario/loan-prediction-SAS-studio/blob/main/Screenshot/Testing/Univariate/Testing_Univariate_LoanDuration.png)<br><br>

#### ▶ Bivariate - Testing:
*   Gender - Marital Status <br>
![Gender - Marital Status](https://github.com/caesarmario/loan-prediction-SAS-studio/blob/main/Screenshot/Testing/Bivariate/Testing_Bivariate_Gender_MaritalStatus.png)<br><br>
*   Family Members - Qualification <br>
![Family Members - Qualification](https://github.com/caesarmario/loan-prediction-SAS-studio/blob/main/Screenshot/Testing/Bivariate/Testing_Bivariate_FamilyMembers_Qualification.png)<br><br>
*   Employment - Loan History <br>
![Employment - Loan History](https://github.com/caesarmario/loan-prediction-SAS-studio/blob/main/Screenshot/Testing/Bivariate/Testing_Bivariate_Employment_LoanHistory.png)<br><br>
*   Gender - Qualification <br>
![Gender - Qualification](https://github.com/caesarmario/loan-prediction-SAS-studio/blob/main/Screenshot/Testing/Bivariate/Testing_Bivariate_Gender_Qualification.png)<br><br>
*   Gender - Loan Location <br>
![Gender - Loan Location](https://github.com/caesarmario/loan-prediction-SAS-studio/blob/main/Screenshot/Testing/Bivariate/Testing_Bivariate_Gender_LoanLocation.png)<br><br>
*   Family Members - Loan Location<br>
![Family Members - Loan Location](https://github.com/caesarmario/loan-prediction-SAS-studio/blob/main/Screenshot/Testing/Bivariate/Testing_Bivariate_FamilyMembers_LoanLocation.png)<br><br>
*   Gender - Candidate Income <br>
![Gender - Candidate Income](https://github.com/caesarmario/loan-prediction-SAS-studio/blob/main/Screenshot/Testing/Bivariate/Testing_Bivariate_Gender_CandidateIncome.png)<br><br>
*   Marital Status - Guarantee Income <br>
![Marital Status - Guarantee Income](https://github.com/caesarmario/loan-prediction-SAS-studio/blob/main/Screenshot/Testing/Bivariate/Testing_Bivariate_MaritalStatus_GuaranteeIncome.png)<br><br>
*   Employment - Loan Amount <br>
![Employment - Loan Amount](https://github.com/caesarmario/loan-prediction-SAS-studio/blob/main/Screenshot/Testing/Bivariate/Testing_Bivariate_Employment_LoanAmount.png)<br><br>
*   Candidate Income - Guarantee Income <br>
![Candidate Income - Guarantee Income](https://github.com/caesarmario/loan-prediction-SAS-studio/blob/main/Screenshot/Testing/Bivariate/Testing_Bivariate_CandidateIncome_GuaranteeIncome.png)<br><br>
*   Loan Amount - Loan Duration <br>
![Loan Amount - Loan Duration](https://github.com/caesarmario/loan-prediction-SAS-studio/blob/main/Screenshot/Testing/Bivariate/Testing_Bivariate_LoanAmount_LoanDuration.png)<br><br>
*   Candidate Income - Loan Duration <br>
![Candidate Income - Loan Duration](https://github.com/caesarmario/loan-prediction-SAS-studio/blob/main/Screenshot/Testing/Bivariate/Testing_Bivariate_CandidateIncome_LoanDuration.png)<br><br>

## 🛠 Data Imputation:
👉 The data imputation will be described as follows: <br>
<table>
<thead>
  <tr>
    <th rowspan="7"><b>Training</b></th>
    <th rowspan="5"><i>Mode</i></th>
    <th>Gender</th>
  </tr>
  <tr>
    <th>Family Members</th>
  </tr>
  <tr>
    <th>Marital Status</th>
  </tr>
  <tr>
    <th>Employment</th>
  </tr>
  <tr>
    <th>Loan History</th>
  </tr>
  <tr>
    <th rowspan="2"><i>Mean</i></th>
    <th>Loan Amount</th>
  </tr>
  <tr>
    <th>Loan Duration</th>
  </tr>
</thead>
<tbody>
  <tr>
    <td rowspan="6"><b>Testing</b></td>
    <td rowspan="4"><i>Mode</i></td>
    <td>Gender</td>
  </tr>
  <tr>
    <td>Family Members</td>
  </tr>
  <tr>
    <td>Employment</td>
  </tr>
  <tr>
    <td>Loan History</td>
  </tr>
  <tr>
    <td rowspan="2"><i>Mean</i></td>
    <td>Loan Amount</td>
  </tr>
  <tr>
    <td>Loan Duration</td>
  </tr>
</tbody>
</table>
<br><br>

## 👨‍💻 Logistic Regression Result:
### ▶ Summary of Logistic Regression:
![LR - 1](https://github.com/caesarmario/loan-prediction-SAS-studio/blob/main/Screenshot/Logistic%20Regression%20Output%20-%201.png)<br>
![LR - 2](https://github.com/caesarmario/loan-prediction-SAS-studio/blob/main/Screenshot/Logistic%20Regression%20Output%20-%202.png)<br>
![LR - 3](https://github.com/caesarmario/loan-prediction-SAS-studio/blob/main/Screenshot/Logistic%20Regression%20Output%20-%203.png)<br>
![LR - 4](https://github.com/caesarmario/loan-prediction-SAS-studio/blob/main/Screenshot/Logistic%20Regression%20Output%20-%204.png)<br>

### ▶ Logistic Regression Model Output:
![LR Model Output](https://github.com/caesarmario/loan-prediction-SAS-studio/blob/main/Screenshot/Logistic%20Regression%20Model%20Output.png)<br>

### ⚠ Prediction Output:
![Prediction Output](https://github.com/caesarmario/loan-prediction-SAS-studio/blob/main/Screenshot/Prediction%20Output.png)<br>
<br><br>

## 🙌 Support me!

👉 If you find this project useful, **please ⭐ this repository 😆**!
### 🎈 Check out my works on Kaggle [here](https://www.kaggle.com/caesarmario/86-eligibility-prediction-w-various-ml-models/notebook) using similar data set with **86% accuracy**!
---

👉 _More about myself: <a href="https://linktr.ee/caesarmario_"> here </a>_
