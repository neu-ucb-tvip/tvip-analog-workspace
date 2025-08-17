import { visit } from 'unist-util-visit'

export default function rehypePrefixBasePath(options = {}) {
  const basePath = options.basePath || ''
  return (tree) => {
    visit(tree, 'element', (node) => {
      if (node.tagName !== 'img') return
      const props = node.properties || {}
      if (typeof props.src === 'string' && props.src.startsWith('/')) {
        props.src = `${basePath}${props.src}`
      }
    })
  }
}

