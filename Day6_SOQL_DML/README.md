# Day 6 – Retrieving and Managing Information with SOQL and DML

## 🎯 Objective

The objective of this task was to understand how Salesforce applications retrieve and manage data using SOQL and DML.

## ✅ Tasks Completed

- Retrieved Student records using SOQL
- Retrieved Student Name, GPA, and Email
- Created a new Student record using DML `insert`
- Updated an existing Student record using DML `update`
- Retrieved Job records using SOQL
- Retrieved Application records using SOQL

## 🔍 What is SOQL?

**SOQL** stands for **Salesforce Object Query Language**.

SOQL is used to retrieve information from Salesforce objects.

```apex
SELECT Id, Name, CGPA__c, Student_Email__c
FROM Student__c