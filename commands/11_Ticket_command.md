# Commnads ran 

`rpm -q openssh-server` - on alamaLinux this is the best way to check if it is installed

`sudo dnf install -y openssh-server` - Install SSH if not found

`systemctl enable --now sshd` - Enable ssh now and after reboot

`systemctl status sshd ` - Check SSH status

`nano /etc/ssh/sshd_config` - where to edit the sshd_config files

Edits I made

`PermitRootLogin no` - Disables root ability to login in remotely

`PasswordAuthentication yes`- Require password authentiacation

`PubkeyAuthentication yes` - For key auth

`ChallengeResponseAuthentication no` - a protocol where one party presents a question and the other party must provide an answer to be authenticated.

`UsePAM yes` - allows centralized auth, session management, and password policies.

`X11Forwarding no` - Reduce attack surface
`AllowUsers usernames` - prevents random users from logging in


`sudo sshd -t` - validate config before restarting
`systemctl restart sshd` - restart ssh
`systemctl status sshd` - check if running 






