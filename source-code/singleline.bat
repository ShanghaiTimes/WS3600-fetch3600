gcc fetch3600.c -Wall -O3 -DVERSION=022 -o fetch3600.c rw3600.c linux3600.c win3600.c -lm -lwsock32 -static >> output.log 2&>1

gcc fetch3600.c -Wall -O3 -DVERSION=022 -o fetch3600.c -lm -lwsock32 -static