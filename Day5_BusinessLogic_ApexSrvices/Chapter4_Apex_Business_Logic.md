# 🚀 Chapter 4 – Building Business Logic with Apex

## 🎯 Sprint 4 – Giving Intelligence to the Placement Management System

> **“Software creates value when it consistently makes the correct business decisions.”**

---

# 📌 Project Overview

The Placement Management System can store information about students, companies, job opportunities, and applications. However, storing data alone is not enough.

The system must also understand placement rules and make correct decisions automatically.

In this sprint, business responsibilities were analysed and organised into Apex service classes. The first business service, `ApplicationService`, was created to represent the student job application process.

---

# 🎯 Objective

The objectives of this sprint are to:

- Understand the importance of business logic in enterprise applications.
- Identify business requirements and convert them into business rules.
- Design Apex classes based on business responsibilities.
- Apply the **One Responsibility, One Service** principle.
- Create an Apex service using Visual Studio Code.
- Understand how classes, methods, and parameters represent business operations.
- Prepare the Placement Management System for future business-rule implementation.

---

# 🧠 What Is Business Logic?

**Business logic** is the intelligence that enables software to make decisions according to an organisation’s rules and requirements.

Without business logic, the Placement Management System only stores information.

With business logic, the system can:

✅ Check whether a student meets the required CGPA.  
✅ Validate active backlog requirements.  
✅ Prevent applications after the deadline.  
✅ Prevent duplicate applications.  
✅ Check branch eligibility.  
✅ Apply placement rules consistently.  
✅ Return meaningful results to users.  

---

# 🔄 From Business Requirement to Software Decision

| Business Requirement | Business Rule | System Decision |
|---|---|---|
| Students must meet the minimum CGPA | Validate the student’s CGPA | Reject if the CGPA is below the requirement |
| Active backlogs may not be allowed | Check the number of active backlogs | Reject if the student is not eligible |
| Applications must be submitted before the deadline | Compare the current date with the deadline | Reject late applications |
| Duplicate applications are not allowed | Check existing applications | Prevent duplicate records |
| Companies may restrict eligible branches | Validate the student’s branch | Reject ineligible branches |
| Students may have a maximum number of offers | Check the current offer count | Prevent additional applications when the limit is reached |

---

# 🏗️ Application Architecture

```text
👨‍🎓 Student
      │
      ▼
🖥️ Lightning Web Component
      │
      ▼
⚙️ ApplicationService
      │
      ▼
🔍 Eligibility Validation
      │
      ▼
🗄️ Salesforce Database
      │
      ▼
✅ Success or Error Message
```

Each component has a separate responsibility:

| Component | Responsibility |
|---|---|
| Lightning Web Component | Receives information from the user |
| ApplicationService | Processes application-related business activities |
| Eligibility Validation | Checks whether the student satisfies placement rules |
| Salesforce Database | Stores application information |
| User Message | Communicates the result clearly |

---

# 🧩 Service Design

## 👨‍🎓 StudentService

Responsible for:

- Registering students
- Updating student profiles
- Verifying academic information
- Checking placement status

## 💼 JobService

Responsible for:

- Creating job opportunities
- Updating job eligibility requirements
- Publishing available jobs
- Closing expired job opportunities

## 📝 ApplicationService

Responsible for:

- Receiving student applications
- Checking eligibility
- Preventing duplicate applications
- Saving successful applications
- Returning meaningful results

---

# 💡 Engineering Principle

## One Responsibility. One Service.

Each service should focus on one main business responsibility.

This approach helps make the application:

✅ Easy to understand  
✅ Easy to test  
✅ Easy to maintain  
✅ Easy to update  
✅ Easy to extend  

---

# 💻 Apex Implementation

The following Apex class was created in Visual Studio Code:

```apex
public with sharing class ApplicationService {

    public void submitApplication(Id studentId, Id jobId) {

    }

    public void withdrawApplication(Id applicationId) {

    }

    public void approveApplication(Id applicationId) {

    }

    public void rejectApplication(Id applicationId) {

    }

    public void viewApplicationHistory(Id studentId) {

    }

    public void reopenApplication(Id applicationId) {

    }
}
```

---

# 🔍 Method Responsibilities

| Apex Method | Business Activity |
|---|---|
| `submitApplication()` | Submits a student’s application for a job |
| `withdrawApplication()` | Withdraws an existing application |
| `approveApplication()` | Approves an application |
| `rejectApplication()` | Rejects an application |
| `viewApplicationHistory()` | Retrieves a student’s application history |
| `reopenApplication()` | Reopens a previously closed application |

---

# 📥 Understanding Parameters

The `submitApplication()` method receives:

```apex
Id studentId
```

This identifies **which student** is applying.

```apex
Id jobId
```

This identifies **which job** the student is applying for.

Parameters provide the information required for a method to perform its business responsibility.

---

# 📤 Expected Results

After processing an application, the system should provide a clear result, such as:

✅ Application submitted successfully.  
❌ Minimum CGPA requirement not satisfied.  
❌ Active backlogs are not allowed.  
❌ Application deadline has expired.  
❌ Duplicate application detected.  
❌ Maximum offer limit reached.  

Clear messages help users understand what happened and what action may be required.

---

# 🛠️ Tools Used

| Tool | Purpose |
|---|---|
| Salesforce | Cloud platform and application database |
| Apex | Business logic implementation |
| Visual Studio Code | Apex development |
| Salesforce CLI | Deployment between VS Code and Salesforce |
| GitHub | Version control and project documentation |

---

# 📂 Project Files

```text
force-app
└── main
    └── default
        └── classes
            ├── ApplicationService.cls
            └── ApplicationService.cls-meta.xml
```

---

# 📚 Key Learnings

During this sprint, I learned that:

- Business logic gives intelligence to software.
- Business requirements should be understood before writing code.
- Apex classes can represent business services.
- Apex methods can represent business activities.
- Parameters provide the information required by methods.
- Good method names clearly describe what the software does.
- Each component should have one primary responsibility.
- Good architecture reduces duplication and makes future changes easier.
- Software should communicate clear results to users.
- Professional development follows the sequence:

```text
Understand the Business
          ↓
Identify Business Rules
          ↓
Design Responsibilities
          ↓
Create Services
          ↓
Implement Using Apex
          ↓
Test and Improve
```

---

# ✅ Sprint Completion Status

- [x] Analysed the Placement Management business requirements
- [x] Identified application business rules
- [x] Designed the application architecture
- [x] Defined service responsibilities
- [x] Created `ApplicationService`
- [x] Added application-related method structures
- [x] Used method parameters
- [x] Deployed the Apex class to Salesforce
- [x] Documented the implementation

---

# 🏁 Conclusion

Sprint 4 introduced the transition from storing information to building intelligent software.

The Placement Management System is now prepared to implement business decisions using Apex. The `ApplicationService` class provides an organised foundation for application-related operations and future eligibility validation.

> **“Understand the business first. Write the code afterwards.”**