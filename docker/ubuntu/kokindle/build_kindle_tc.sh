#!/bin/bash

echo "Building toolchains for kindle..."
git clone https://github.com/koreader/koxtoolchain.git
pushd koxtoolchain && {
    git checkout b212bd2f61fcbe0a2bc2d3c4085d7b95a4f79a48

    ./gen-tc.sh kindle || ./gen-tc.sh kindle
    ./gen-tc.sh kindle5 || ./gen-tc.sh kindle5
    ./gen-tc.sh kindlepw2 || ./gen-tc.sh kindlepw2
} && popd || exit

rm -rf koxtoolchain
