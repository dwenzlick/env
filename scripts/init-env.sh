#!/bin/sh

sshfs -o idmap=user <username>@<hostname>:/<src_dir> /<dst_dir>
