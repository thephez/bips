#!/bin/bash
# Script for removing Comments-URI from header

i=0
for file in *.mediawiki; do
	printf "$file Starting ---------\n\n"
	head $file

	sed -i '/.*Comments-URI/d' $file

	printf "\n---------$file Updated ---------\n\n"

	head $file
	printf "$file Complete ---------\n\n"
	((i++))
done

printf "$i files updated \n"
