#!/usr/bin/env bash


apt-get update
apt-get install -y apache2
if ! [ -L /var/www ]; then
  rm -rf /var/www
  ln -fs /vagrant /var/www
fi

# apt-get install -y \
#     curl \
#     build-essential \
#     m4 \
#     zlib1g-dev \
#     libssl-dev \
#     ocaml \
#     ocaml-native-compilers \
#     opam 
# 
# opam init
# opam switch 4.07.0
# echo "eval `opam config env`" >> ~/.bashrc
# 
# #RUN printenv OCAML_TOPLEVEL_PATH
# 
# opam install core utop
# opam install base core_kernel ounit 
# #RUN opam install async yojson core_extended core_bench cohttp async_graphics cryptokit menhir
# # merlin dune ocp-indent
# 
# echo $'#use "topfind";;\n\
# \#thread;;\n\
# \#require "core.top";;\n\
# \#require "core.syntax";;' > /home/default/.ocamlinit << EOF
# 



