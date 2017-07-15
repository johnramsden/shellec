#!/bin/sh

# On commandline give number and an optional name

# Fill in the following
lecture_bg="Assets/Intro_bg.jpg"
lecture_basedir="/mnt/lilan/Data/Videos/CPSC261-201"
course="CPSC261-201"
season="02"

# CLI Input
lecture_num="${1}"
name="${2:-.mp4}"

lecture_name="CPSC261 S${season}E${lecture_num}${name}"

~/.local/bin/shellec "Lecture ${lecture_num}" \
		     ${course} \
		     ${lecture_basedir}/${lecture_bg} \
		     ${lecture_basedir}/E${lecture_num} \
		     ${lecture_basedir}/${lecture_name}

echo "Created ${lecture_name}"
