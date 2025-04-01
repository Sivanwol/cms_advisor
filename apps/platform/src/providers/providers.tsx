import { PostHogProvider, ThemeProvider } from '@repo/shared-ui';

export const Providers = ({ children }: { children: React.ReactNode }) => {
  return (
    <PostHogProvider>
      <ThemeProvider>{children}</ThemeProvider>
    </PostHogProvider>
  );
};
