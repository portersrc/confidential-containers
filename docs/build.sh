#!/bin/bash
set -euxo pipefail

rm -rf _build
make html
cd _build/html/repos
ln -s ../../../../../operator/docs/_build/html operator
ln -s ../../../../../guest-components/docs/_build/html guest-components
