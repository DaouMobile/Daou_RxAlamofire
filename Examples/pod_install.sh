#!/bin/bash

set -eo pipefail
export RELEASE_VERSION="$(git describe --abbrev=0 | tr -d '\n' || echo 'v6.1.1')"
RELEASE_VERSION=${RELEASE_VERSION:1}
xcodegen
pod install --repo-update
open RxAlamofireDemo.xcworkspace
