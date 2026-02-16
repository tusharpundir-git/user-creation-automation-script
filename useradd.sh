#!/bin/bash

# Script must be run as root
if [ "$EUID" -ne 0 ]
then
	echo " User must be root "
	exit 1
fi

# Check if username is provided
if [ -z "$1" ]
then
	echo "Username can't be empty"
	echo "Usage: $0 <username>"
	exit 1
fi

Username="$1"

# Check if user already exists
if id "$Username" &> /dev/null
then
	echo " User already exist "
	exit 1
fi

#Create User
useradd -m "$Username"

# Generate random password
Password=$(openssl rand -base64 6)

#Set Password
echo "$Username:$Password" | chpasswd

# Force password change on first login
chage -d 0 "$Username"


#Check if user created before displaying credentials
if id "$Username" &> /dev/null
then

echo "--------------------------"	
echo "User created successfully"
echo "Username is $Username"
echo "Password is $Password"
echo "User will be asked to change password on first login"

fi

