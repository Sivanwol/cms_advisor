import * as winston from 'winston';
import { Tracer } from '@opentelemetry/api';

// Define log levels
type LogLevel = 'info' | 'warn' | 'error';

// Define log metadata interface
export interface LogMeta {
    [key: string]: any;
}

interface LoggerDependencies {
    winstonLogger: winston.Logger;
    // tracer: Tracer;
}

export class Logger {
    private winstonLogger: winston.Logger;
    // private tracer: Tracer;

    constructor(deps: LoggerDependencies) {
        this.winstonLogger = deps.winstonLogger;
        // this.tracer = deps.tracer;
    }

    // Base log method
    private log(level: LogLevel, message: string, meta: LogMeta = {}): void {
        const timestamp = new Date().toISOString();
        // Console logging
        console[level === 'error' ? 'error' : 'log'](
            `[${timestamp}] ${level.toUpperCase()}: ${message}`,
            meta
        );

        // Winston file logging
        this.winstonLogger.log({
            level,
            message,
            ...meta,
        });

        // OpenTelemetry tracing
        // const span = this.tracer.startSpan(`${level}-log`);
        // span.setAttributes({
        //     'log.level': level,
        //     'log.message': message,
        //     ...meta,
        // });
        // span.end();
    }

    // Level-specific methods
    public info(message: string, meta?: LogMeta): void {
        this.log('info', message, meta);
    }

    public warn(message: string, meta?: LogMeta): void {
        this.log('warn', message, meta);
    }

    public error(message: string, meta?: LogMeta): void {
        this.log('error', message, meta);
    }
}