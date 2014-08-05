#/usr/bin/env bash



k=0001
for i in {130,131,132,133,134,135,136,137,138,139,145,147,150,151,152,153,155,156,157,158,159,170,176,180,181,182,183,184,185,186,187,188,189};
do
    for j in {0000..9999};
    do
        curl -s 'http://opendata.baidu.com/api.php?query='$i$j$k'&co=&resource_id=6004&t=1398059796965&ie=utf8&oe=gbk&cb=op_aladdin_callback&format=json&tn=baidu&cb=jQuery110202853344564791769_1398059656576&_=1398059656581'| iconv -f gbk -t utf-8 | awk -F, '{print $17,$11,$12,$13}' >> resutl$i.txt
    done&
done
