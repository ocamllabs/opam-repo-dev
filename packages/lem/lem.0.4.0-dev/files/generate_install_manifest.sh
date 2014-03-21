#!/bin/sh -ex

echo "bin: ["                                  > lem.install
echo "  \"src/main.native\" {\"lem\"}"        >> lem.install
echo "]\nlib: ["                              >> lem.install

ls -1 library/*.* hol-lib/*.* isabelle-lib/*.* coq-lib/*.* ocaml-lib/*.* \
| sed -e "s/\\(.*\\)/  \"\1\" \{ \"\1\" \}/"  >> lem.install
echo "]"                                      >> lem.install
