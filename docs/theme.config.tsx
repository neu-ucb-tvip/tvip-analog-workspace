import React from 'react'
import { DocsThemeConfig } from 'nextra-theme-docs'
import Link from 'next/link'

const config: DocsThemeConfig = {
  logo: <span>TVIP Analog Workspace</span>,
  project: {
    link: 'https://github.com/neu-ucb-tvip/tvip-analog-workspace'
  },
  chat: {
    link: 'https://github.com/neu-ucb-tvip/tvip-analog-workspace/issues'
  },
  navbar: {
    extraContent: (
      <div style={{ display: 'flex', gap: '1rem' }}>
        <Link href="/Analog_Layout_Guide">Analog Layout Guide</Link>
        <Link href="/Power_Grids">Power Grids</Link>
        <Link href="/Running_DRC">Running DRC</Link>
        <Link href="/impedance-matching">Impedance Matching</Link>
        <Link href="/Git_Guide">Git Guide</Link>
      </div>
    )
  },
  footer: {
    content: (
      <div>
        Released under the <a href="https://github.com/neu-ucb-tvip/tvip-analog-workspace/blob/main/LICENSE">BSD-3-Clause License</a>.
        {' '}Copyright © 2025-present, The Regents of the University of California (Regents). All Rights Reserved.
      </div>
    )
  }
}

export default config 