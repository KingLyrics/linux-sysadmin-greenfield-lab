# Commands ran
Tested something

# User creation
- `adduser test` - To test if the user would be created.
- `pkill -u test` - To kill all proccesses at once and -u to target processes owned by the user.
- `ps aux | grep test` - Get all the processes owned by a user in this case test
- `kill PID` - kill the PID that was running 




# Challenges 
- The test user account i created was refusing to be terminated.
- It is easy to type useradd to create a user but, how do i automate it if there are 20 new employees hired in a day? Not likely but automation is essential


# Solutions
- Had to individual kill the processes.
- Test user was deleted


# Automation Design
Reference: https://dev.to/amaraiheanacho/user-creation-in-bash-script-1617
1. Should read a text file that contains a user and their group information.
2. Should create a user and assign to group
3. Generate random passwords that will be stored somewhere
4. Keep track of all its activites

# File format .txt
usertest1; group
usertest2; group, second group





# VI
- Used this time to learn VI text editor

1. i - interact
2. :q - exit
3. k - mover cursor up one line
4. j - move cursor down one line
5. h - mover cursor left one character
6. l - move cursor right one character
7. 0 - move to beginning of line
8. $ - end of line
9. wq - save and exit

