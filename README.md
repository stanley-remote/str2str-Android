# str2str-Android

- port RTKLIB str2str to Android 
- Add -Wno-error to disable warning treat as error
- rename stream.c to _stream.c because name crashed with system source file name
- usage example
- str2str -p 60.2094384 24.8275672 44.5 -n 5000 -in ntrip://xxx@gmail.com:abcdef@rtk2go.com:2101/knummi_kha -out tcpcli://127.0.0.1:42434
- -p is the initial position of rover, -n is interval
- get your own rtk2go account, it is free
- check your local base station, knummi_kha is for Finland 
- write rtcm data to local tcp server port 42434 
