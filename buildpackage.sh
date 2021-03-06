
#!/bin/bash

name="pg-tailnmail"
version=$(grep Version $name/DEBIAN/control|awk '{print $2}')
arch=$(grep Architecture $name/DEBIAN/control|awk '{print $2}')
echo "Building package... $name version $version"
dpkg-deb --build $name $name\_$version\_$arch.deb
if [ $? -eq 0 ]; then
    echo "Successfully built package"
fi
#mkdir deb
#mv *.deb deb/
