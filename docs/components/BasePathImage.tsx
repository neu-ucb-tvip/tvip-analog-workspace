import React from 'react'
import type { ImgHTMLAttributes } from 'react'
import { addBasePath } from 'next/dist/client/add-base-path'

export default function BasePathImage(props: ImgHTMLAttributes<HTMLImageElement>) {
  const { src, ...rest } = props
  let finalSrc = typeof src === 'string' && src.startsWith('/') ? addBasePath(src) : src
  return <img src={finalSrc as string | undefined} {...rest} />
}

