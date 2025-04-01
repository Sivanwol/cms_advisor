import * as winston from 'winston';
import { transport as WinstonTransport } from 'winston'; // Correct type for transports
// import { NodeTracerProvider } from '@opentelemetry/sdk-trace-node';
// import { SimpleSpanProcessor } from '@opentelemetry/sdk-trace-base';
// import { OTLPTraceExporter } from '@opentelemetry/exporter-trace-otlp-http';
// import { Resource } from '@opentelemetry/resources';
// import { SemanticResourceAttributes } from '@opentelemetry/semantic-conventions';
import { Logger } from './logger';

// Logger configuration interface
export interface LoggerConfig {
    transports?: WinstonTransport[]; // Updated to use winston.transport
    otlpEndpoint?: string;
    serviceName?: string;
}

// Singleton logger instance (initially null)
let loggerInstance: Logger | null = null;

export class LoggerProvider {
    private winstonLogger: winston.Logger;
    // private tracerProvider: NodeTracerProvider;
    // private tracer;

    constructor(config: LoggerConfig) {
        const {
            transports = [new winston.transports.Console()],
            otlpEndpoint = process.env.OTLP_ENDPOINT || 'http://localhost:4318/v1/traces',
            serviceName = process.env.SERVICE_NAME || 'monorepo-app'
        } = config;

        // Configure Winston
        this.winstonLogger = winston.createLogger({
            format: winston.format.combine(
                winston.format.timestamp(),
                winston.format.json()
            ),
            transports,
        });

        // Configure OpenTelemetry
        // this.tracerProvider = new NodeTracerProvider({
        //     resource: new Resource({
        //         [SemanticResourceAttributes.SERVICE_NAME]: serviceName,
        //     }),
        // });

        // const exporter = new OTLPTraceExporter({
        //     url: otlpEndpoint,
        // });

        // this.tracerProvider.addSpanProcessor(new SimpleSpanProcessor(exporter));
        // this.tracerProvider.register();

        // this.tracer = this.tracerProvider.getTracer('monorepo-logger');
    }

    // Initialize the global logger instance
    public initialize(): void {
        if (loggerInstance) {
            throw new Error('Logger is already initialized');
        }
        loggerInstance = new Logger({
            winstonLogger: this.winstonLogger,
            // tracer: this.tracer,
        });
    }
}

// Getter for the logger instance
export function getLogger(): Logger {
    if (!loggerInstance) {
        throw new Error('Logger has not been initialized. Call LoggerProvider.initialize() first.');
    }
    return loggerInstance;
}