#!/bin/bash

SRV_SOURCE=
SRV_DEST=

for MAIL in `cat $1` ; do
PASS_1=''
PASS_2=""

        imapsync --nosyncacls \
        --ssl1 --host1 $SRV_SOURCE \
        --host2 $SRV_DEST \
        --authmech1 PLAIN \
        --authmech2 PLAIN \
        --user1 $MAIL \
        --authuser1 $MAIL --password1 $PASS_1 \
        --user2 $MAIL \
        --authuser2 $MAIL --password2 $PASS_2

done
