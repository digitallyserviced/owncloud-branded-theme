#!/bin/bash
THEME_DIR=`pwd`/themes/brand;
LOGOS_DIR=${THEME_DIR}/core/img;
CSS_DIR=${THEME_DIR}/core/css;
HEADER_BG=$1;
NAVIGATION_BG=$2;

convert template.png -crop 270x30+60+60 png32:${LOGOS_DIR}/logo-wide.png;

convert template.png +repage -crop 270x42+60+121 +repage gif:${LOGOS_DIR}/logo-mail.gif;
convert template.png -crop 300x150+60+195 png32:${LOGOS_DIR}/logo.png;

convert template.png -crop 128x128+537+60 png32:${LOGOS_DIR}/favicon-touch.png;
convert ${LOGOS_DIR}/favicon-touch.png -resize 32x32 ${LOGOS_DIR}/favicon.png;

rm -Rf `find ./ -iname '.DS_Store'`;

outputCssOverrides() 
{
	HEADER_BG_COLOR=$1;
    cat > ${CSS_DIR}/styles.css <<CSSDATA
	#document-title .logo-wide {
		background-image: none !important;
		width: 147px;
		height: 32px;
	}

	#body-user #header, #body-settings #header {
		background-image: none;
		background-color: ${HEADER_BG_COLOR};
	}

	#expanddiv {
		background-image: none;
		background-color: ${HEADER_BG_COLOR};
	}

	#content {
		height: auto;
	}
	#navigation {
		background-image: none;
		background-color: ${HEADER_BG_COLOR}
	}
CSSDATA
}

outputCssOverrides "$HEADER_BG" "$NAVIGATION_BG";