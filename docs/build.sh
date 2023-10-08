#!/bin/bash
set -euxo pipefail

rm -rf _build
make html
pushd _build/html/repos
ln -s ../../../../../operator/docs/_build/html operator
ln -s ../../../../../guest-components/docs/_build/html guest-components
popd

pushd _build/html
mkdir -p apis
pushd apis
ln -s ../../../../../guest-components/target/doc/image_rs/index.html
popd
popd
