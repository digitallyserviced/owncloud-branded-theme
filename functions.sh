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

	#app.contacts {
		margin-left:-15px
		margin-top:-15px
	}

	#navigation {
		background-image: none;
		background-color: ${HEADER_BG_COLOR}
	}
CSSDATA
}

copyTemplateOverrides() 
{
	cp -Rf ${THIS_DIR}/overrides/* ${THEME_DIR}
}