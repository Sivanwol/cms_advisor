import { postgresAdapter } from '@payloadcms/db-postgres'
import { buildConfig } from 'payload'

export default buildConfig({
    // Configure the Postgres adapter here
    db: postgresAdapter({
        // Postgres-specific arguments go here.
        // `pool` is required.
        pool: {
            connectionString: process.env.DATABASE_URL,
        },
    }),
    secret: process.env.PAYLOAD_SECRET,
})