# CivicFund — Participatory Budgeting App

CivicFund is a Rails application designed to promote community engagement in local governance. It enables residents to allocate a $1000 budget across predefined community projects and helps administrators track the total allocated funds.

## 🚀 Features

### Resident Functionality
- **User Authentication:** Sign up, log in, and log out using Devise.
- **Budget Allocation Form:**
  - See a list of community projects with their required funding.
  - Allocate a custom amount to each project using a $1000 personal budget.
  - Real-time tracking of total and remaining budget via StimulusJS.
  - Validation to prevent allocating more than $1000.
- **Allocation Summary Page:**
  - Displays individual allocations and remaining budget after submission.

### Admin Functionality
- **Admin Dashboard:**
  - View a summary table showing the total amount allocated to each project by all residents.

## 🧱 Tech Stack

- **Ruby on Rails 7**
- **PostgreSQL**
- **Devise** (for authentication)
- **StimulusJS** (for real-time budget updates)
- **Bootstrap 5** (for styling)

## 📸 Screenshots

### Resident Allocation Form  
Real-time budget tracking while entering values.

### Allocation Summary  
Post-submission view of the resident’s choices.

### Admin Dashboard  
Project-wise aggregation of total allocated funds.

## 📁 Model Structure

- **User:** Managed by Devise.
- **Project:** `name:string`, `cost:integer`
- **Allocation:** `user_id`, `project_id`, `amount:integer`

## 📌 How to Run Locally

```bash
git clone https://github.com/your-username/civicfund.git
cd civicfund
bundle install
rails db:setup
rails s
