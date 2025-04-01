import { auth } from '@repo/utils';
import { toNextJsHandler } from 'better-auth/next-js';

const handler = toNextJsHandler(auth.handler);

export const { GET, POST } = handler;
