cd ~
mkdir ~/unturned_server_files/Rocket/ -p
cd ~/unturned_server_files/Rocket/

'rm -f !(Servers) -rd'

wget https://ci.rocketmod.net/job/Rocket.Unturned/lastSuccessfulBuild/artifact/Rocket.Unturned/bin/Release/Rocket.zip -O rocket.zip
#wget https://ci.appveyor.com/api/buildjobs/bjt7acowdq73nh4u/artifacts/Rocket.Unturned-5.0.0.237.zip -O rocket.zip
unzip -o rocket.zip

cd Scripts
chmod +x *.sh
./update.sh $1 $2
