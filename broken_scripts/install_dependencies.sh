pt install screen htop unzip -y #Utils
dpkg --add-architecture i386
apt install lib32stdc++6 -y #SteamCMD dependencies
apt install mono-runtime mono-reference-assemblies-2.0 -y
apt install libc6:i386 libgl1-mesa-glx:i386 libxcursor1:i386 libxrandr2:i386 -y # 32 bit prerequisites for Unity 3D
apt install libc6-dev-i386 libgcc-4.8-dev:i386 -y # prequesites for BattlEye

