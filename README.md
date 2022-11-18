# Over-the-wire-bandit_Assignment 1
Steps to finish each level

- **Level 0** :
  - _Commands :_
    1. ssh bandit0@bandit.labs.overthewire.org -p 2220
- **Level  0 -> Level 1** :
  - _Commands :_
    1. ls
    1. file *
    1. cat *
    1. ssh bandit1@bandit.labs.overthewire.org -p 2220
- **Level 1 -> Level 2** :
  - _Commands :_
    1. ls
    2. cat ./-
    1. ssh bandit2@bandit.labs.overthewire.org -p 2220
- **Level 2 -> Level 3** :
  - _Commands :_
    1. ls
    2. cat *
    3. ssh bandit3@bandit.labs.overthewire.org -p 2220
- **Level 3 -> Level 4** :
  - _Commands :_
    1. ls
    2. cd inhere
    3. ls -a
    4. cat .*
    5. ssh bandit4@bandit.labs.overthewire.org -p 2220
- **Level 4 -> Level 5** :
  - _Commands :_
    1. ls
    2. cd inhere
    3. ls
    4. find /dir/to/search -type f -print0 | xargs -0 file | grep text
    5. ssh bandit5@bandit.labs.overthewire.org -p 2220
- **Level 5 -> Level 6** :
  - _Commands :_
    1. ls
    2. cs inhere
    3. find . -size 1033c
    4. cd maybehere07
    5. cat .file2
    6. ssh bandit6@bandit.labs.overthewire.org -p 2220
- **Level 6 -> Level 7** :
  - _Commands :_
    1. ls
    2. cd ..
    3. cd ..
    4. find -group banidt6 -user bandit7 -size 33c
    5. cat var/lib/dpkg/info/bandit7.password
    6. ssh bandit7@bandit.labs.overthewire.org -p 2220
- **Level 7 -> Level 8** :
  - _Commands :_
    1. ls
    2. grep -Rw 'data.txt' -e 'millionth'
    3. ssh bandit8@bandit.labs.overthewire.org -p 2220
- **Level 8 -> Level 9** :
  - _Commands :_
    1. ls
    2. cat data.txt | sort | uniq -c -u
    3. ssh bandit9@bandit.labs.overthewire.org -p 2220
- **Level 9 -> Level 10** :
  - _Commands :_
    1. ls
    2. strings data.txt | grep ===
    3. ssh bandit10@bandit.labs.overthewire.org -p 2220
- **Level 10 -> Level 11** :
  - _Commands :_
    1. ls
    2. base64 -d data.txt
    3. ssh bandit11@bandit.labs.overthewire.org -p 2220
- **Level 11 -> Level 12** :
  - _Commands :_
    1. ls
    2. cat data.txt | tr 'A-Za-z' 'N-ZA-Mn-za-m'
    3. ssh bandit12@bandit.labs.overthewire.org -p 2220
- **Level 12 -> Level 13** :
  - _Commands :_
    1. ls
    2. mkdir /tmp/myname2091
    3. cp data.txt /tmp/myname2091
    4. cd /tmp/myname2091
    5. xxd -r data.txt finaldata
    6. file finaldata
    7. mv finaldata data.gz
    8. gzip -d data.gz
    9. file data
    10. mv data data.bz2
    11. bzip2 -d data.bz2
    12. file data
    13. mv data data.gz
    14. gzip -d data.gz
    15. file data
    16. mv data data.tar
    17. tar xvf data.tar
    18. file data5.bin
    19. mv data5.bin data5.tar
    20. tar xvf data5.tar
    21. file data6.bin
    22. mv data6.bin data6.tar
    23. tar xvf data6.tar
    24. file data8.bin
    25. mv data8.bin data8.gz
    26. gzip -d data8.gz
    27. file data8
    28. cat data8
    29. rm -rf /tmp/myname2091
    30. ssh bandit13@bandit.labs.overthewire.org -p 2220
- **Level 13 -> Level 14** :
  - _Commands :_
    1.  ls
    2. ssh -i sshkey.private bandit14@localhost
- **Level 14 -> Level 15** :
  - _Commands :_
    1. ls
    2. cat /etc/bandit_pass/bandit14
    3. telnet localhost 30000
    
