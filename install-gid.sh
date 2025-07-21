# GiD folder in the root
#cd /tmp

# Version to check comes from the first argument
VERSION=$1
echo "Installing GiD version ${VERSION}"
# Get the file
TARFILENAME=gid${VERSION}-linux-x64.tar.xz

case "$VERSION" in
  *IR)
    TARFILENAME=gid${VERSION}-linux-x64.tar.xz
    echo "Downloading GiD version ${VERSION} from https://downloads.gidsimulation.com/GiD_Important_Release_Versions/Linux/amd64/${TARFILENAME}"
    wget --quiet https://downloads.gidsimulation.com/GiD_Important_Release_Versions/Linux/amd64/${TARFILENAME}
    
    ;;
  *)
    TARFILENAME=gid${VERSION}-linux-x64.tar.xz
    echo "Downloading GiD version ${VERSION} from https://downloads.gidsimulation.com/GiD_Developer_Versions/Linux/amd64/${TARFILENAME}"
    wget --quiet https://downloads.gidsimulation.com/GiD_Developer_Versions/Linux/amd64/${TARFILENAME}

    ;;
esac

echo "Downloaded ${TARFILENAME}"
ls
# Unzip
echo "Unzipping ${TARFILENAME}"
tar -Jxf ${TARFILENAME}
rm ${TARFILENAME}

echo "Moving files to /gid"
mv gid${VERSION}-x64/* /gid
# cd /gid
# PREFERENCESFOLDER=$HOME/.gid/${VERSION}/
# mkdir -p ${PREFERENCESFOLDER}
# PREFERENCESFILE=${PREFERENCESFOLDER}gid.ini
