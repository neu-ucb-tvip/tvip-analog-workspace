import React from 'react'
import { DocsThemeConfig } from 'nextra-theme-docs'
import BasePathImage from './components/BasePathImage'

const config: DocsThemeConfig = {
  docsRepositoryBase: 'https://github.com/neu-ucb-tvip/tvip-analog-workspace/tree/master/docs',
  head: (
    <>
      <link rel="preconnect" href="https://fonts.googleapis.com" />
      <link rel="preconnect" href="https://fonts.gstatic.com" crossOrigin="" />
      <link
        href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700&display=swap"
        rel="stylesheet"
      />
      <style>{`:root{ --font-sans: Inter, ui-sans-serif, system-ui, -apple-system, Segoe UI, Roboto, Helvetica, Arial, Noto Sans, "Apple Color Emoji", "Segoe UI Emoji"; } body{ font-family: var(--font-sans); }`}</style>
    </>
  ),
  logo: (
    <span style={{ fontWeight: 600 }}>
      TVIP <span style={{ opacity: 0.7, fontWeight: 500 }}>Analog Workspace</span>
    </span>
  ),
  project: {
    link: 'https://github.com/neu-ucb-tvip/tvip-analog-workspace'
  },
  chat: {
    link: 'https://github.com/neu-ucb-tvip/tvip-analog-workspace/issues'
  },
  components: {
    img: (props: any) => <BasePathImage {...props} />
  },
  // Default navbar layout keeps search to the right of nav links
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
    hue: { light: 210, dark: 210 },
    saturation: { light: 60, dark: 55 },
    lightness: { light: 52, dark: 60 }
  },
  sidebar: {
    defaultMenuCollapseLevel: 1,
    toggleButton: true,
    autoCollapse: true
  },
  footer: {
    content: (
      <div className="site-footer-text">
        Released under the <a href="https://github.com/neu-ucb-tvip/tvip-analog-workspace/blob/master/LICENSE">BSD-3-Clause License</a>. {" "}
        © 2025–present UC Regents. All rights reserved.
      </div>
    )
  }
}

export default config 
