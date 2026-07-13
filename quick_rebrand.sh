#!/bin/bash

# ۱. تغییر نام نمایشی برنامه
# در اندروید اسم برنامه در فایل strings.xml ذخیره میشه
find app/src/main/res -name "strings.xml" -exec sed -i 's/NekoBox/STK VPN/g' {} +

# ۲. تغییر اسم پکیج در فایل build.gradle
sed -i 's/applicationId ".*"/applicationId "com.stkvpn.app"/g' app/build.gradle

echo "تغییرات اولیه انجام شد! حالا اسم برنامه در همه جا STK VPN است."
