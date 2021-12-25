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
<br>

## 🖋 About Project:
👉 Lasiandra Finance Inc. (LFI) New York, USA is a leading private financing company which caters the funding needs of Small and Medium enterprises (SME). LFI clearly understood that some business dreams need that extra push to see them accelerated. Hence it allows its loaning process as tailor-made and customer centric. In the past few years, it has tremendously expanded its wings and to speed up the process, it needs to automate the loan eligibility process based on customer portfolio entered online. <br><br>
👉 The main problem faced by the LFI is the approval process of the loans. Because it is a complicated procedure of verification and validation but still there is no guarantee whether the chosen applicant is the deserving one out of all applicants. Hence, it needs a model which can predict the loan approval. <br><br>
👉 As data scientist in LFI, it is needed to analyze the data set obtained from the past customer and build logistic regression model to predict the approval process.
<br><br>

## 📌 Objectives:
*   Analyze customer data provided in data set (EDA)
*   Build logistic regression that can predict loan approval
<br><br>

## 🧾 Data Set Description:
👉 There are 2 data sets used in this project, "TRAINING_DS.csv" and "TESTING_DS.csv". <br>
👉 There are 13 variables in this data sets:
  - 8 categorical variables,
  - 4 continuous variables, and
  - 1 variable to accommodate the loan ID
<br>
👉 The structure of the two data sets that have been given: <br><br>
<table style="width:100%">
<thead>
<tr>
<th style="text-align:center; font-weight: bold; font-size:14px">Variable Name</th>
<th style="text-align:center; font-weight: bold; font-size:14px">Description</th>
<th style="text-align:center; font-weight: bold; font-size:14px">Sample Data</th>
</tr>
</thead>
<tbody>
<tr>
<td><b>Loan_ID</b></td>
<td>Loan reference number <br> (unique ID)</td>
<td>LP001002; LP001003; ...</td>
</tr>
<tr>
<td><b>Gender</b></td>
<td>Applicant gender <br> (Male or Female)</td>
<td>Male; Female</td>
</tr>
<tr>
<td><b>Married</b></td>
<td>Applicant marital status <br> (Married or not married)</td>
<td>Married; Not Married</td>
</tr>
<tr>
<td><b>Dependents</b></td>
<td>Number of family members</td>
<td>0; 1; 2; 3+</td>
</tr>
<tr>
<td><b>Education</b></td>
<td>Applicant education/qualification <br> (graduate or not graduate)</td>
<td>Graduate; Under Graduate</td>
</tr>
<tr>
<td><b>Self_Employed</b></td>
<td>Applicant employment status <br> (yes for self-employed, no for employed/others)</td>
<td>Yes; No</td>
</tr>
<tr>
<td><b>ApplicantIncome</b></td>
<td>Applicant's monthly salary/income</td>
<td>5849; 4583; ...</td>
</tr>
<tr>
<td><b>CoapplicantIncome</b></td>
<td>Additional applicant's monthly salary/income</td>
<td>1508; 2358; ...</td>
</tr>
<tr>
<td><b>LoanAmount</b></td>
<td>Loan amount</td>
<td>128; 66; ...</td>
</tr>
<tr>
<td><b>Loan_Amount_Term</b></td>
<td>The loan's repayment period (in days)</td>
<td>360; 120; ...</td>
</tr>
<tr>
<td><b>Credit_History</b></td>
<td>Records of previous credit history <br> (0: bad credit history, 1: good credit history)</td>
<td>0; 1</td>
</tr>
<tr>
<td><b>Property_Area</b></td>
<td>The location of property <br> (Rural/Semiurban/Urban)</td>
<td>Rural; Semiurban; Urban</td>
</tr>
<tr>
<td><b>Loan_Status</b></td>
<td>Status of loan <br> (Y: accepted, N: not accepted)</td>
<td>Y; N</td>
</tr>
</tbody>
</table>

## 📊 EDA:
### 🏛 Data Sets Structure:
![](https://raw.githubusercontent.com/caesarmario/loan-prediction-SAS-studio/main/Screenshot/Dataset%20Structure.png)

### ⚙ Training Data Set
#### ▶ Univariate - Training:
*   [Gender](https://github.com/caesarmario/loan-prediction-SAS-studio/blob/main/Screenshot/Training/Univariate/Training_Univariate_Gender.png)
*   [Marital Status](https://github.com/caesarmario/loan-prediction-SAS-studio/blob/main/Screenshot/Training/Univariate/Training_Univariate_Gender.png)
*   [Family Members](https://github.com/caesarmario/loan-prediction-SAS-studio/blob/main/Screenshot/Training/Univariate/Training_Univariate_Gender.png)
*   [Qualification](https://github.com/caesarmario/loan-prediction-SAS-studio/blob/main/Screenshot/Training/Univariate/Training_Univariate_Gender.png)
*   [Employment](https://github.com/caesarmario/loan-prediction-SAS-studio/blob/main/Screenshot/Training/Univariate/Training_Univariate_Gender.png)
*   [Loan History](https://github.com/caesarmario/loan-prediction-SAS-studio/blob/main/Screenshot/Training/Univariate/Training_Univariate_Gender.png)
*   [Loan Location](https://github.com/caesarmario/loan-prediction-SAS-studio/blob/main/Screenshot/Training/Univariate/Training_Univariate_Gender.png)
*   [Loan Approval Status](https://github.com/caesarmario/loan-prediction-SAS-studio/blob/main/Screenshot/Training/Univariate/Training_Univariate_Gender.png)
*   [Candidate Income](https://github.com/caesarmario/loan-prediction-SAS-studio/blob/main/Screenshot/Training/Univariate/Training_Univariate_Gender.png)
*   [Guarantee Income](https://github.com/caesarmario/loan-prediction-SAS-studio/blob/main/Screenshot/Training/Univariate/Training_Univariate_Gender.png)
*   [Loan Amount](https://github.com/caesarmario/loan-prediction-SAS-studio/blob/main/Screenshot/Training/Univariate/Training_Univariate_Gender.png)
*   [Loan Duration](https://github.com/caesarmario/loan-prediction-SAS-studio/blob/main/Screenshot/Training/Univariate/Training_Univariate_Gender.png)

#### ▶ Bivariate - Training:
*   [Gender - Marital Status](https://github.com/caesarmario/loan-prediction-SAS-studio/blob/main/Screenshot/Training/Univariate/Training_Univariate_Gender.png)
*   [Family Members - Qualification](https://github.com/caesarmario/loan-prediction-SAS-studio/blob/main/Screenshot/Training/Univariate/Training_Univariate_Gender.png)
*   [Employment - Loan History](https://github.com/caesarmario/loan-prediction-SAS-studio/blob/main/Screenshot/Training/Univariate/Training_Univariate_Gender.png)
*   [Loan Location - Loan Approval Status](https://github.com/caesarmario/loan-prediction-SAS-studio/blob/main/Screenshot/Training/Univariate/Training_Univariate_Gender.png)
*   [Gender - Loan Approval Status](https://github.com/caesarmario/loan-prediction-SAS-studio/blob/main/Screenshot/Training/Univariate/Training_Univariate_Gender.png)
*   [Loan Approval Status - Candidate Income](https://github.com/caesarmario/loan-prediction-SAS-studio/blob/main/Screenshot/Training/Univariate/Training_Univariate_Gender.png)
*   [Loan Approval Status - Guarantee Income](https://github.com/caesarmario/loan-prediction-SAS-studio/blob/main/Screenshot/Training/Univariate/Training_Univariate_Gender.png)
*   [Loan Approval Status - Loan Amount](https://github.com/caesarmario/loan-prediction-SAS-studio/blob/main/Screenshot/Training/Univariate/Training_Univariate_Gender.png)
*   [Candidate Income - Guarantee Income](https://github.com/caesarmario/loan-prediction-SAS-studio/blob/main/Screenshot/Training/Univariate/Training_Univariate_Gender.png)
*   [Loan Amount - Loan Duration](https://github.com/caesarmario/loan-prediction-SAS-studio/blob/main/Screenshot/Training/Univariate/Training_Univariate_Gender.png)

### 🛠 Testing Data Set
#### ▶ Univariate - Testing:
*   [Gender](https://github.com/caesarmario/loan-prediction-SAS-studio/blob/main/Screenshot/Training/Univariate/Training_Univariate_Gender.png)
*   [Marital Status](https://github.com/caesarmario/loan-prediction-SAS-studio/blob/main/Screenshot/Training/Univariate/Training_Univariate_Gender.png)
*   [Family Members](https://github.com/caesarmario/loan-prediction-SAS-studio/blob/main/Screenshot/Training/Univariate/Training_Univariate_Gender.png)
*   [Qualification](https://github.com/caesarmario/loan-prediction-SAS-studio/blob/main/Screenshot/Training/Univariate/Training_Univariate_Gender.png)
*   [Employment](https://github.com/caesarmario/loan-prediction-SAS-studio/blob/main/Screenshot/Training/Univariate/Training_Univariate_Gender.png)
*   [Loan History](https://github.com/caesarmario/loan-prediction-SAS-studio/blob/main/Screenshot/Training/Univariate/Training_Univariate_Gender.png)
*   [Loan Location](https://github.com/caesarmario/loan-prediction-SAS-studio/blob/main/Screenshot/Training/Univariate/Training_Univariate_Gender.png)
*   [Candidate Income](https://github.com/caesarmario/loan-prediction-SAS-studio/blob/main/Screenshot/Training/Univariate/Training_Univariate_Gender.png)
*   [Guarantee Income](https://github.com/caesarmario/loan-prediction-SAS-studio/blob/main/Screenshot/Training/Univariate/Training_Univariate_Gender.png)
*   [Loan Amount](https://github.com/caesarmario/loan-prediction-SAS-studio/blob/main/Screenshot/Training/Univariate/Training_Univariate_Gender.png)
*   [Loan Duration](https://github.com/caesarmario/loan-prediction-SAS-studio/blob/main/Screenshot/Training/Univariate/Training_Univariate_Gender.png)

#### ▶ Bivariate - Testing:
*   [Loan Duration](https://github.com/caesarmario/loan-prediction-SAS-studio/blob/main/Screenshot/Training/Univariate/Training_Univariate_Gender.png)
<!--
Univariate - Categorical
Univariate - Continuous

Bivariate - Categorical / Categorical
Bivariate - Categorical / Continuous
Bivariate - Continuous / Continuous

Imputation Training -->

<!-- Univariate ;

<!-- ![](https://raw.githubusercontent.com/caesarmario/simple-online-banking-system/main/Screenshot/3.4_Customer%20View.png) -->


## 🙌 Support me!

👉 If you find this project useful, **please ⭐ this repository 😆**!
### 🎈 Check out my works on Kaggle [here](https://www.kaggle.com/caesarmario/86-eligibility-prediction-w-various-ml-models/notebook) using similar data set with **86% accuracy**!
---

👉 _More about myself: <a href="https://linktr.ee/caesarmario_"> here </a>_
