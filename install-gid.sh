# GiD folder in the root
cd /tmp

# Version to check
VERSION=14.1.8d
# Get the file
TARFILENAME=gid${VERSION}-linux-x64.tar.xz
wget --quiet https://web.cimne.upc.edu/users/fjgarate/descargas/images/${TARFILENAME}
# Unzip
tar -Jxf ${TARFILENAME}
rm ${TARFILENAME}
# 
mkdir /gid
mv gid${VERSION}-x64/* /gid
cd /gid
PREFERENCESFOLDER=$HOME/.gid/${VERSION}/
mkdir -p ${PREFERENCESFOLDER}
PREFERENCESFILE=${PREFERENCESFOLDER}gid.ini
