import { defineConfig } from 'vitepress'

// https://vitepress.dev/reference/site-config
export default defineConfig({
  markdown: {
    math: true
  },

  title: "TVIP Analog Workspace",
  description: "Analog Design Workspace for Sky130 PDK",
  base: '/tvip-analog-workspace/',
  themeConfig: {
    // https://vitepress.dev/reference/default-theme-config
    nav: [
      { text: 'Home', link: '/' },
      { text: 'Analog Layout Guide', link: '/Analog_Layout_Guide' },
      { text: 'Power Grids', link: '/Power_Grids' }
    ],

    sidebar: [ 
      {
        text: 'Documentation',
        items: [
          { text: 'Analog Layout Guide', link: '/Analog_Layout_Guide' },
          { text: 'Power Grids', link: '/Power_Grids' }
        ]
      }
    ],

    socialLinks: [
      { icon: 'github', link: 'https://github.com/neu-ucb-tvip/tvip-analog-workspace' }
    ],
    search: {
      provider: 'local'
    },
    footer: {
      message: 'Released under the <a href="https://github.com/neu-ucb-tvip/tvip-analog-workspace/blob/main/LICENSE">BSD-3-Clause License</a>.',
      copyright: 'Copyright © 2025-present, The Regents of the University of California (Regents). All Rights Reserved.'
    }
  }
})
