const backgroundColor = '#002833'
const foregroundColor = '#abccce'
const cursorColor = 'rgba(248, 98, 0, 1)'
const borderColor = 'transparent'

const colors = {
  black:          '#003541',
  lightBlack:     '#00779a',
  red:            '#dc322f',
  lightRed:       '#f9324b',
  green:          '#7cc77f',
  lightGreen:     '#5cee96',
  yellow:         '#b58901',
  lightYellow:    '#c09035',
  blue:           '#268bd2',
  lightBlue:      '#11a0d2',
  magenta:        '#d33682',
  lightMagenta:   '#ea68a0',
  cyan:           '#2aa198',
  lightCyan:      '#00beae',
  white:          '#eee8d5',
  lightWhite:     '#fdf6e3',
}

exports.decorateConfig = config => {

  return Object.assign({}, config, {
    foregroundColor,
    backgroundColor,
    borderColor,
    cursorColor,
    colors,
    termCSS: `
      ${config.termCSS || ''}
    `,
    css: `
      ${config.css || ''}
      * {
      	-webkit-font-feature-settings: "liga" on, "calt" on, "dlig" on !important;
      	text-rendering: optimizeLegibility !important;
        font-weight: 500;
      }
      .tabs_list {
      	border: 0;
      }
      .tabs_nav {
      	background-color: #001f27 !important;
      }
      .tab_tab {
        color: ${foregroundColor} !important;
        background-color: #001f27;
				border-color: ${borderColor} !important;
      }
      .tab_tab:before {
      	border: 0;
      }
      .tab_tab.tab_active {
        border: transparent !important;
        font-weight: bold;
        color: #b3b3b3 !important;
        background-color: ${backgroundColor};
      }
      .splitpane_divider {
      	background-color: #001f27 !important;	
      }
    `
  })
}