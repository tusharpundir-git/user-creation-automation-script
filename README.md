User Creation Automation Script

📌 Description
This is a Bash automation script that creates a local user in Linux with an auto-generated password.
The script ensures it runs only with root privileges and forces the user to change the password on first login.

🚀 Features
Root user validation
Automatic password generation
Creates home directory
Forces password change on first login
Error handling for existing users

🖥️ Environment
OS: RHEL 9
Shell: Bash
Virtualization: VMware Workstation

⚙️ Usage
sudo ./useradd.sh username

📂 Example
sudo ./useradd.sh testuser

Output:
User testuser created successfully
Temporary Password: Abc@1234
User must change password at first login

🔐 Security
Script checks effective UID (EUID)
Uses chpasswd for secure password assignment
Password expiration enforced using chage

👨‍💻 Author
Tushar Pundir
Linux & DevOps Enthusiast
