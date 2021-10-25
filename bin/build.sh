#!/usr/bin/env bash

set -ex

DIR=$(pwd)
TMP=$DIR/tmp

mkdir -p $TMP
unzip -d $TMP/cd_districts -o "$DIR/data/Districts and Territories Boundary.zip"

ogr2ogr -f GeoJSONSeq /dev/stdout "$TMP/cd_districts/cod_admbnda_adm2_rgc_20170711.shp"  \
| node $DIR/src/filter.js \
| tippecanoe -o $TMP/cd_districts.mbtiles --no-tile-compression --maximum-zoom=12 --minimum-zoom=4 --base-zoom=12 --simplification=2 --hilbert --no-feature-limit --no-tile-size-limit --force

mkdir -p $DIR/docs
tile-join \
    --force \
    --no-tile-compression \
    -n "drc-districts-and-territories-tiles" \
    -N "DRC Congo's District & Territories Polygons by WorldBank for Open Reverse Geocoder" \
    -A "©WorldBank" \
    --output-to-directory=$DIR/docs/tiles \
    --no-tile-size-limit $DIR/tmp/cd_districts.mbtiles
