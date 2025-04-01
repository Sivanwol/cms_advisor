-- CreateTable
CREATE TABLE "polygon_group" (
    "id" SERIAL NOT NULL,
    "name" TEXT NOT NULL,

    CONSTRAINT "polygon_group_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "polygon" (
    "id" SERIAL NOT NULL,
    "name" TEXT NOT NULL,
    "latitude" DOUBLE PRECISION NOT NULL,
    "longitude" DOUBLE PRECISION NOT NULL,
    "address" TEXT NOT NULL,
    "polygonGroupId" INTEGER NOT NULL,

    CONSTRAINT "polygon_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "statios" (
    "id" SERIAL NOT NULL,
    "name" TEXT NOT NULL,
    "latitude" DOUBLE PRECISION NOT NULL,
    "longitude" DOUBLE PRECISION NOT NULL,
    "address" TEXT NOT NULL,
    "polygonGroupId" INTEGER NOT NULL,

    CONSTRAINT "statios_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "daily_pickups" (
    "id" SERIAL NOT NULL,
    "startDate" TIMESTAMP(3) NOT NULL,
    "polygonGroupId" INTEGER NOT NULL,
    "driverId" INTEGER NOT NULL,

    CONSTRAINT "daily_pickups_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "daily_pickup_selected_station" (
    "id" SERIAL NOT NULL,
    "polygonGroupId" INTEGER NOT NULL,
    "stationId" INTEGER NOT NULL,

    CONSTRAINT "daily_pickup_selected_station_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "daily_pickup_selected_station_employees" (
    "id" SERIAL NOT NULL,
    "stationId" INTEGER NOT NULL,
    "employeeId" INTEGER NOT NULL,

    CONSTRAINT "daily_pickup_selected_station_employees_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "settings" (
    "id" SERIAL NOT NULL,
    "key" TEXT NOT NULL,
    "value" TEXT NOT NULL,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" TIMESTAMP(3) NOT NULL,

    CONSTRAINT "settings_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "user" (
    "id" SERIAL NOT NULL,
    "external_id" TEXT,
    "company_id" INTEGER,
    "email" TEXT,
    "full_name" TEXT,
    "phone_number" TEXT,

    CONSTRAINT "user_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "companies" (
    "id" SERIAL NOT NULL,
    "name" TEXT NOT NULL,
    "address" TEXT NOT NULL,
    "is_transporter" BOOLEAN NOT NULL,

    CONSTRAINT "companies_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "driver" (
    "id" SERIAL NOT NULL,
    "full_name" TEXT NOT NULL,
    "phone_number" TEXT NOT NULL,
    "address" TEXT NOT NULL,
    "latitude" DOUBLE PRECISION,
    "longitude" DOUBLE PRECISION,
    "pickup_date" TIMESTAMP(3),

    CONSTRAINT "driver_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "station" (
    "id" SERIAL NOT NULL,
    "name" TEXT NOT NULL,
    "latitude" DOUBLE PRECISION NOT NULL,
    "longitude" DOUBLE PRECISION NOT NULL,
    "address" TEXT NOT NULL,

    CONSTRAINT "station_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "employee" (
    "id" SERIAL NOT NULL,
    "company_id" INTEGER,
    "phone_number" TEXT,
    "address" TEXT NOT NULL,
    "latitude" DOUBLE PRECISION,
    "longitude" DOUBLE PRECISION,
    "pickup_date" TIMESTAMP(3),

    CONSTRAINT "employee_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "otp_code" (
    "id" SERIAL NOT NULL,
    "employee_id" INTEGER,
    "driver_id" INTEGER,
    "code" TEXT NOT NULL,
    "expiresAt" TIMESTAMP(3) NOT NULL,
    "created_at" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT "otp_code_pkey" PRIMARY KEY ("id")
);

-- CreateIndex
CREATE UNIQUE INDEX "polygon_group_name_key" ON "polygon_group"("name");

-- CreateIndex
CREATE UNIQUE INDEX "polygon_name_key" ON "polygon"("name");

-- CreateIndex
CREATE INDEX "polygon_polygonGroupId_idx" ON "polygon"("polygonGroupId");

-- CreateIndex
CREATE UNIQUE INDEX "statios_name_key" ON "statios"("name");

-- CreateIndex
CREATE INDEX "statios_polygonGroupId_idx" ON "statios"("polygonGroupId");

-- CreateIndex
CREATE INDEX "daily_pickups_polygonGroupId_idx" ON "daily_pickups"("polygonGroupId");

-- CreateIndex
CREATE INDEX "daily_pickups_driverId_idx" ON "daily_pickups"("driverId");

-- CreateIndex
CREATE INDEX "daily_pickup_selected_station_polygonGroupId_idx" ON "daily_pickup_selected_station"("polygonGroupId");

-- CreateIndex
CREATE INDEX "daily_pickup_selected_station_stationId_idx" ON "daily_pickup_selected_station"("stationId");

-- CreateIndex
CREATE INDEX "daily_pickup_selected_station_employees_stationId_idx" ON "daily_pickup_selected_station_employees"("stationId");

-- CreateIndex
CREATE INDEX "daily_pickup_selected_station_employees_employeeId_idx" ON "daily_pickup_selected_station_employees"("employeeId");

-- CreateIndex
CREATE UNIQUE INDEX "settings_key_key" ON "settings"("key");

-- CreateIndex
CREATE UNIQUE INDEX "user_external_id_key" ON "user"("external_id");

-- CreateIndex
CREATE UNIQUE INDEX "user_email_unique" ON "user"("email");

-- CreateIndex
CREATE UNIQUE INDEX "user_phone_number_unique" ON "user"("phone_number");

-- CreateIndex
CREATE INDEX "user_company_id_idx" ON "user"("company_id");

-- CreateIndex
CREATE UNIQUE INDEX "companies_name_key" ON "companies"("name");

-- CreateIndex
CREATE UNIQUE INDEX "driver_phone_number_unique" ON "driver"("phone_number");

-- CreateIndex
CREATE UNIQUE INDEX "station_name_key" ON "station"("name");

-- CreateIndex
CREATE UNIQUE INDEX "employee_phone_number_unique" ON "employee"("phone_number");

-- CreateIndex
CREATE UNIQUE INDEX "otp_code_code_key" ON "otp_code"("code");
