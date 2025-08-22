import React from 'react'
import { useRouter } from 'next/router'

type BasePathImageProps = Omit<React.ImgHTMLAttributes<HTMLImageElement>, 'src'> & {
  src: string
  maxWidth?: number | string
}

function resolveSrcWithBasePath(inputSrc: string, basePath: string): string {
  if (!inputSrc) return inputSrc
  // Don't touch absolute, protocol, or data/blob URLs
  if (/^(https?:)?\/\//.test(inputSrc) || inputSrc.startsWith('data:') || inputSrc.startsWith('blob:')) {
    return inputSrc
  }

  const normalizedBase = (basePath || '').replace(/\/+$/, '')
  const cleanedSrc = inputSrc.replace(/^\.+\/?/, '') // drop leading './' or '../' safely to root-join
  const withLeadingSlash = cleanedSrc.startsWith('/') ? cleanedSrc : `/${cleanedSrc}`

  // Avoid double-prefix if already includes basePath
  if (normalizedBase && withLeadingSlash.startsWith(`${normalizedBase}/`)) {
    return withLeadingSlash
  }

  return `${normalizedBase}${withLeadingSlash}`
}

export default function BasePathImage(props: BasePathImageProps) {
  const { src, alt = '', style, className, maxWidth, width, height, loading, ...rest } = props
  const { basePath } = useRouter()

  const resolvedSrc = resolveSrcWithBasePath(src, basePath)

  const computedStyle: React.CSSProperties = {
    maxWidth: typeof maxWidth !== 'undefined' ? maxWidth : '100%',
    height: typeof height !== 'undefined' ? height : 'auto',
    ...(typeof width !== 'undefined' ? { width } : {}),
    ...style
  }

  return (
    <img
      src={resolvedSrc}
      alt={alt}
      className={className}
      style={computedStyle}
      loading={loading || 'lazy'}
      {...rest}
    />
  )
}


