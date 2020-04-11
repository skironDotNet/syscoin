./autogen.sh
make -C depends
./configure --prefix=`pwd`/depends/x86_64-pc-linux-gnu --with-gui --disable-tests
make
cd src
strip syscoind syscoin-cli syscoin-tx syscoin-wallet
cd qt
strip syscoin-qt

