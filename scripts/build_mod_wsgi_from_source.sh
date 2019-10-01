#!/bin/bash
set -e

os_version='sles11'

gcc_version=43

if [ ! $1 ] && [ ! $2  ]
then
    echo "Usage: Please include full wsgi version and python version  eg: ./build_wsgi.sh 4.5.15 /usr/bin/python2.7.8, find available versions at https://github.com/GrahamDumpleton/mod_wsgi/releases"
    exit 0
fi

ver=$1
python_ver=$2
rpmbuilddir=`pwd`/../rpm_build

if [ "$os_version" == "sles12" ]
then
    gcc_version=48
fi

if [ -f $ver.tar.gz ]
then
    rm $ver.tar.gz
fi

if [ -d mod_wsgi-$ver ]
then
    rm -rf mod_wsgi-$ver
fi

wget https://github.com/GrahamDumpleton/mod_wsgi/archive/$ver.tar.gz
tar -xvf $ver.tar.gz
wsgi_dir=mod_wsgi-$ver
cd mod_wsgi-$ver
mkdir misc
for x in *; do
    if ! [ -d "$x" ]; then
	mv -- "$x" misc/
    fi
done
cd ..

RELEASE_VERSION=$ver
RELEASE_NUMBER=1

DIR=`pwd`

cp mod_wsgi.spec $rpmbuilddir/SPECS

source_dirs='misc tests win32 images src docs'

echo "Adding some needed directories into RPM build environment" | tee -a ${DIR%\/*}/$0.log

for filename in $source_dirs ; do
    mkdir -p $rpmbuilddir/SOURCES/mod_wsgi/filesystem/opt/mod_wsgi/$filename/
    echo "Creating required directories"
done | tee -a `pwd`/$0.log

for filename in $source_dirs ; do
    cp -r $wsgi_dir/$filename/* $rpmbuilddir/SOURCES/mod_wsgi/filesystem/opt/mod_wsgi/$filename/
    echo "Copying $filename into RPM build environment"
done | tee -a `pwd`/$0.log

rpmbuild --define '_os 'linux'' --define '_target_os 'linux'' --define '_os_version '$os_version'' --define '_gcc_version '$gcc_version'' --define '_python_version '$2'' --define '_version '$RELEASE_VERSION'' --define '_build_number '$RELEASE_NUMBER'' --define '_topdir '$rpmbuilddir'' -bb $rpmbuilddir/SPECS/mod_wsgi.spec | tee -a `pwd`/$0.log

rm $ver.tar.gz
rm -rf $wsgi_dir
rm -rf $rpmbuilddir/SOURCES/mod_wsgi
rm $rpmbuilddir/SPECS/mod_wsgi.spec
echo "Removing directories from SOURCES in rpmbuild" | tee -a `pwd`/$0.log


