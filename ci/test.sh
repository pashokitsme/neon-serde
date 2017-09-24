#!/usr/bin/env bash
set -euxo pipefail

cd "$(dirname "$0")/.."

cargo build --verbose --all
cargo test --verbose --all

cd test

yarn install
yarn test
