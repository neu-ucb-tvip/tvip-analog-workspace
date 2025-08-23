import React from 'react'
import { DocsThemeConfig } from 'nextra-theme-docs'

const config: DocsThemeConfig = {
  docsRepositoryBase: 'https://github.com/neu-ucb-tvip/tvip-analog-workspace/tree/master/docs',
  logo: (
    <span className="nextra-logo">
      TVIP <span className="nextra-logo-docs">Analog Workspace</span>
    </span>
  ),
  faviconGlyph: '📘',
  project: {
    link: 'https://github.com/neu-ucb-tvip/tvip-analog-workspace'
  },
  chat: {
    link: 'https://github.com/neu-ucb-tvip/tvip-analog-workspace/issues'
  },
  search: {
    placeholder: 'Search documentation…'
  },
  editLink: {
    content: 'Edit this page on GitHub →'
  },
  feedback: {
    content: 'Question? Give us feedback →',
    labels: 'feedback',
    useLink: () => 'https://github.com/neu-ucb-tvip/tvip-analog-workspace/issues/new?labels=feedback'
  },
  color: {
    hue: { light: 215, dark: 215 },
    saturation: { light: 100, dark: 80 },
    lightness: { light: 40, dark: 60 }
  },
  sidebar: {
    defaultMenuCollapseLevel: 1,
    toggleButton: true
  },
  footer: {
    content: (
      <div className="site-footer-text">
        TVIP Analog Workspace Documentation. {" "}
        Released under the <a href="https://github.com/neu-ucb-tvip/tvip-analog-workspace/blob/master/LICENSE">BSD-3-Clause License</a>.
      </div>
    )
  }
}

export default config
