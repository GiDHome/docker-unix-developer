VERSION=`/gid/gidx -version`
PREFERENCESFOLDER=$HOME/.gid/${VERSION}/
mkdir -p ${PREFERENCESFOLDER}
PREFERENCESFILE=${PREFERENCESFOLDER}gid.ini
echo "SoftwareOpenGL 1" >> ${PREFERENCESFILE}
echo "Theme_configured 1" >> ${PREFERENCESFILE}
echo "Theme(Current) GiD_classic_renewed" >> ${PREFERENCESFILE}
echo "Theme(MenuType) native" >> ${PREFERENCESFILE}
echo "Theme(HighResolutionScaleFactor) 1" >> ${PREFERENCESFILE}
echo "OGL_configured 1" >> ${PREFERENCESFILE}
echo "Theme_configured 1" >> ${PREFERENCESFILE}
# This is to avoid black screen when doing zoom:
echo "OGL_emulateFrontBuffer 1" >> ${PREFERENCESFILE}
echo "ShowCheckNewVersion 0" >> ${PREFERENCESFILE}
# So that gid opens +0- maximized:
echo "MainWindowGeom 1276x749+0+0" >> ${PREFERENCESFILE}
echo "PrePostStdBarWindowGeom INSIDETOP {} 1 StdBitmaps" >> ${PREFERENCESFILE}
echo "PrePostBitmapsWindowGeom INSIDELEFT {} 1 CreateBitmaps" >> ${PREFERENCESFILE}
echo "PrePostMacrosToolbarWindowGeom INSIDELEFT {} 1 toolbarmacros::Create INSIDELEFT" >> ${PREFERENCESFILE}
echo "PostViewResultsBarWindowGeom INSIDELEFT {} 1 ViewResultsBarBitmaps" >> ${PREFERENCESFILE}
echo "PrePostStatusWindowGeom INSIDE {} 1 BottomStatusFrame" >> ${PREFERENCESFILE}
echo "PrePostTopMenuWindowGeom INSIDE {} 1 TopMenuFrame" >> ${PREFERENCESFILE}
echo "PrePostRightButWindowGeom INSIDE {} RightButtons" >> ${PREFERENCESFILE}
echo "PrePostEntryWindowGeom INSIDE {} 1 BottomEntryFrame" >> ${PREFERENCESFILE}
echo "Language en" >> ${PREFERENCESFILE}
