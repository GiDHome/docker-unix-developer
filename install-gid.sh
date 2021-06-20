# GiD folder in the root
#cd /tmp

# Version to check
VERSION=15.1.1d
# Get the file
TARFILENAME=gid${VERSION}-linux-x64.tar.xz
wget --quiet https://www.gidhome.com/archive/GiD_Developer_Versions/Linux/amd64/${TARFILENAME}
ls
# Unzip
tar -Jxf ${TARFILENAME}
rm ${TARFILENAME}

mv gid${VERSION}-x64/* /gid
# cd /gid
# PREFERENCESFOLDER=$HOME/.gid/${VERSION}/
# mkdir -p ${PREFERENCESFOLDER}
# PREFERENCESFILE=${PREFERENCESFOLDER}gid.ini
