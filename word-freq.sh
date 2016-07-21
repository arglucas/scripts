#!/bin/bash
# Doug McIlroy's Word Frequency Count
tr -cs A-Za-z '\n' |
tr A-Z a-z |
sort |
uniq -c |
sort -rn |
sed ${1}q