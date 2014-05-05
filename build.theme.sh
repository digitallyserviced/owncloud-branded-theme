#!/bin/bash
THEME_DIR=`pwd`/themes/brand
LOGOS_DIR=${THEME_DIR}/core/img

convert template.png -crop 270x30+60+60 png32:${LOGOS_DIR}/logo-wide.png

convert template.png +repage -crop 270x42+60+121 +repage gif:${LOGOS_DIR}/logo-mail.gif
convert template.png -crop 300x150+60+195 png32:${LOGOS_DIR}/logo.png
convert ${LOGOS_DIR}/logo-wide.png ${LOGOS_DIR}/logo-wide.svg
convert ${LOGOS_DIR}/logo.png ${LOGOS_DIR}/logo.svg
rm -Rf `find ./ -iname '.DS_Store'`
