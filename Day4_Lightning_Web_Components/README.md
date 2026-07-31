# 🚀 Day 4 – Lightning Web Components (LWC)

## 📌 Project: Placement Management System

Welcome to my **Day 4 Salesforce Development Task**! 🎉

Today, I learned how to build the **user interface layer** of a Salesforce application using **Lightning Web Components (LWC)**.

Until now, the Placement Management System focused mainly on the backend, including:

* 🗂️ Salesforce Data Model
* 🔍 SOQL Queries
* ⚙️ Apex Triggers
* 🔄 Salesforce Flows and Automation

Today, I created the **frontend user interface** that allows users to view placement information and interact with the application.

---

# 1️⃣ What is Lightning Web Components (LWC)? ⚡

**Lightning Web Components (LWC)** is Salesforce's modern user interface framework used to build fast, reusable, responsive, and maintainable applications.

LWC is based on standard web technologies:

* 🌐 **HTML** – Creates the structure and user interface
* 🧠 **JavaScript** – Handles logic, variables, and user interactions
* 🎨 **CSS** – Controls the design and appearance

LWC helps Salesforce developers create interactive components that can display Salesforce data and respond to user actions.

### 🏗️ Salesforce Application Architecture

```text
👤 User
   ↓
🖥️ Lightning Web Component
   ↓
⚙️ Apex Classes
   ↓
🔍 SOQL Queries
   ↓
🗄️ Salesforce Database
```

In this task, I built the **top UI layer** using Lightning Web Components.

---

# 2️⃣ What Did I Build? 🛠️

I created a Lightning Web Component named:

```text
placementHome
```

The component is the first user interface screen for my **Placement Management System**.

### 🖥️ Features Implemented

✅ Displayed **Welcome to Vishnu Placement Portal**

📅 Displayed **Today's Date**

👨‍🎓 Displayed Student Details:

* Student Name
* Roll Number
* Department

🔘 Created a **Show Welcome Message** button

💬 Displayed the message:

```text
Welcome to Salesforce Development
```

📋 Displayed the application status:

```text
Status: Not Applied
```

🟢 Created an **Apply** button

🔄 Changed the application status dynamically:

```text
Not Applied ➡️ Applied
```

📊 Displayed Placement Statistics:

| 📈 Placement Information | 🔢 Value |
| ------------------------ | -------: |
| Number of Companies      |       25 |
| Number of Jobs           |       63 |
| Applications Submitted   |        5 |

> 💡 The values are currently hard-coded. In future tasks, the component will retrieve real data from Salesforce using Apex.

---

# 3️⃣ Which File Contains HTML? 🌐

The HTML file is:

```text
placementHome.html
```

### 📄 Responsibilities of the HTML File

The HTML file is responsible for:

* 🖥️ Creating the page layout
* 📝 Displaying text and information
* 🔘 Displaying buttons
* 📊 Showing student and placement details
* 🔗 Connecting JavaScript variables to the user interface

### Example

```html
<p>Student Name: {studentName}</p>
```

The value inside `{studentName}` is received from the JavaScript file and displayed on the screen.

This connection is called **Data Binding**. 🔗

---

# 4️⃣ Which File Contains JavaScript? 🧠

The JavaScript file is:

```text
placementHome.js
```

### ⚙️ Responsibilities of the JavaScript File

The JavaScript file is responsible for:

* 🧠 Writing component logic
* 📦 Creating variables
* 🔄 Updating values
* 🖱️ Handling button-click events
* 💬 Displaying dynamic messages
* 🔗 Communicating with Apex in future development

### Example

```javascript
studentName = 'Rahul';
```

The value is displayed in the HTML using:

```html
{studentName}
```

### Button-Click Example

```javascript
showWelcomeMessage() {
    this.welcomeMessage =
        'Welcome to Salesforce Development';
}
```

When the user clicks the button, JavaScript updates the message displayed on the screen.

---

# 5️⃣ What Did I Learn Today? 🎓

Today, I learned:

✅ What Lightning Web Components (LWC) are

✅ Why Salesforce introduced LWC

✅ The basic structure of an LWC

✅ How to create an LWC in Visual Studio Code

✅ How HTML and JavaScript work together

✅ How to display JavaScript variables in HTML

✅ How **Data Binding** works

✅ How to create and use variables

✅ How to create buttons using `lightning-button`

✅ How to handle button-click events

✅ How to update values dynamically using JavaScript

✅ How to change application status from:

```text
Not Applied ➡️ Applied
```

✅ How to deploy an LWC to Salesforce

✅ How to add an LWC to a Lightning Page using **Lightning App Builder**

✅ How LWC will communicate with **Apex** to retrieve Salesforce data

---

# 📁 LWC Component Structure

```text
placementHome
│
├── 📄 placementHome.html
├── 🧠 placementHome.js
└── ⚙️ placementHome.js-meta.xml
```

### 📌 File Responsibilities

| File                           | Purpose                                                           |
| ------------------------------ | ----------------------------------------------------------------- |
| 🌐 `placementHome.html`        | Creates the user interface and page layout                        |
| 🧠 `placementHome.js`          | Handles variables, logic, and events                              |
| ⚙️ `placementHome.js-meta.xml` | Makes the component available in Salesforce Lightning App Builder |

---

# 🔗 Data Binding Example

### JavaScript

```javascript
studentName = 'Rahul';
```

### HTML

```html
<p>Hello {studentName}</p>
```

### Output

```text
Hello Rahul
```

When the value of `studentName` changes in JavaScript, the displayed value in the user interface also updates.

---

# 🧰 Technologies Used

* ☁️ Salesforce
* ⚡ Lightning Web Components (LWC)
* 🌐 HTML
* 🧠 JavaScript
* 🎨 Salesforce Lightning Design System (SLDS)
* 💻 Visual Studio Code
* 🛠️ Salesforce CLI
* 🧱 Lightning App Builder
* 🐙 GitHub

---

# 🎯 Key Outcome

By completing this task, I successfully created the **first interactive user interface** for my Placement Management System.

This component demonstrates:

✨ Reusable Salesforce UI development

✨ Dynamic data display

✨ Data binding

✨ JavaScript event handling

✨ Interactive button functionality

✨ Salesforce Lightning Page deployment

---

## 🏁 Task Status

✅ **LWC Component Created**

✅ **Student Information Displayed**

✅ **Welcome Message Implemented**

✅ **Application Status Updated**

✅ **Placement Dashboard Created**

✅ **Component Deployed to Salesforce**

✅ **Source Code Added to GitHub**

---

### 🌟 Next Step

In the upcoming tasks, this LWC will be connected to **Apex Classes** and **SOQL Queries** to retrieve real-time placement data from Salesforce.
