import nextra from 'nextra'
import remarkMath from 'remark-math'
import rehypeKatex from 'rehype-katex'
import remarkGfm from 'remark-gfm'
import rehypePrefixBasePath from './plugins/rehype-prefix-basepath.mjs'

const isProd = process.env.NODE_ENV === 'production'

const withNextra = nextra({
  theme: 'nextra-theme-docs',
  themeConfig: './theme.config.tsx',
  mdxOptions: {
    remarkPlugins: [remarkMath, remarkGfm],
    rehypePlugins: [
      rehypeKatex,
      [rehypePrefixBasePath, { basePath: isProd ? '/tvip-analog-workspace' : '' }]
    ]
  },
  defaultShowCopyCode: true
})

export default withNextra({
  output: 'export',
  trailingSlash: true,
  basePath: isProd ? '/tvip-analog-workspace' : '',
  assetPrefix: isProd ? '/tvip-analog-workspace' : '',
  images: { unoptimized: true }
}) 
