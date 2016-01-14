#!/bin/bash

opt=$1

type="stable"
[ "$opt" = "--snapshot" ] && type="snapshot"

cd minecraft-${type}
docker build -t minecraft:${type} .

exit 0
