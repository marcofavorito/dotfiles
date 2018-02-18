sudo rm -r $HOME/quicklisp

# SBCL
sudo apt-get install sbcl

# QuickLisp
curl -O http://beta.quicklisp.org/quicklisp.lisp

# install QuickLisp
sbcl --load quicklisp_install --quit

