# 🧪 Periodic Table Database

This project is a relational database of chemical elements integrated with a Bash script for automated information retrieval. Developed as part of a relational database certification, it demonstrates proficiency in SQL, database normalization, and shell scripting.

## 🚀 Key Features
- **PostgreSQL Database**: Normalized tables for elements, properties, and types.
- **Bash Automation**: `element.sh` script that finds element data using atomic numbers, symbols, or names.
- **Git Workflow**: Followed industry-standard conventional commits (`feat:`, `fix:`, `chore:`, etc.).
- **Data Integrity**: Handled complex data types (REAL, NUMERIC) and enforced foreign key constraints.

## 🛠️ Tech Stack
- **Database**: PostgreSQL
- **Scripting**: Bash (Shell Scripting)
- **Version Control**: Git

## 📖 How to Use
1. Clone the repository:
   ```bash
   git clone https://github.com/DabinleeMe/fcc-relational-db-project-periodic-table-database.git
2. Make the script executable:
   ```bash
    chmod +x element.sh 
4. Run the Script:
   ```bash
    ./element.sh [number, symbol, or name]
