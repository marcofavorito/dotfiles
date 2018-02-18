wget https://github.com/google/googletest/archive/release-1.8.0.tar.gz
tar -xzvf release-1.8.0.tar.gz

cd googletest-release-1.8.0
mkdir mybuild
cd mybuild
cmake -G"Unix Makefiles" ..
make

sudo cp -r ../googletest/include/gtest /usr/local/include
find -iname *.a | while read i; do sudo cp $i /usr/local/lib; done

cd ../..
rm -r release-1.8.0.tar.gz
rm -r googletest-release-1.8.0/
