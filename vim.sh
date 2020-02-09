git clone https://github.com/vim/vim.git

cd vim
make distclean
./configure \
      --prefix=$HOME/local
      --enable-cscope \
      --with-features=huge \
      --with-x \
      --with-compiledby="Senor QA <senor@qa>"

cd src
make
make install

cd ../..
rm -rf vim/
