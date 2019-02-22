#!/bin/bash

__create_user() {
# Create a user to SSH into as.
useradd openmpi
SSH_USERPASS=foobar
echo -e "$SSH_USERPASS\n$SSH_USERPASS" | (passwd --stdin openmpi)
echo ssh user password: $SSH_USERPASS
}

# Call all functions
__create_user
