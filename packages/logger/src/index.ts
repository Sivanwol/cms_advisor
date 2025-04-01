import { LoggerProvider, LoggerConfig } from './provider';
import { getLogger } from './provider';
import { LogMeta } from './logger';

// Export the logger instance directly
export const logger = {
    info: (message: string, meta?: LogMeta) => getLogger().info(message, meta),
    warn: (message: string, meta?: LogMeta) => getLogger().warn(message, meta),
    error: (message: string, meta?: LogMeta) => getLogger().error(message, meta),
};

// Export provider and config for initialization
export { LoggerProvider };
export type { LoggerConfig };
