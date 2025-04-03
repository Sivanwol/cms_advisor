import React from 'react'

import { HeaderThemeProvider } from './HeaderTheme'
import { ThemeProvider } from './Theme'
import { SessionProvider } from 'next-auth/react'

export const Providers: React.FC<{
  children: React.ReactNode
}> = ({ children }) => {
  return (
      <ThemeProvider>
        <HeaderThemeProvider>{children}</HeaderThemeProvider>
      </ThemeProvider>
  )
}
