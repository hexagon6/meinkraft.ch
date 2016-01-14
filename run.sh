#!/bin/bash

opt=$1

type="stable"
[ "$opt" = "--snapshot" ] && type="snapshot"

docker run -p 25565:25565 minecraft:${type}
