/*
  Warnings:

  - You are about to alter the column `logo` on the `business` table. The data in that column could be lost. The data in that column will be cast from `Text` to `VarChar(255)`.
  - You are about to alter the column `slug` on the `business` table. The data in that column could be lost. The data in that column will be cast from `Text` to `VarChar(255)`.
  - You are about to alter the column `address` on the `business` table. The data in that column could be lost. The data in that column will be cast from `Text` to `VarChar(50)`.
  - You are about to alter the column `city` on the `business` table. The data in that column could be lost. The data in that column will be cast from `Text` to `VarChar(50)`.
  - You are about to alter the column `state` on the `business` table. The data in that column could be lost. The data in that column will be cast from `Text` to `VarChar(50)`.
  - You are about to alter the column `country` on the `business` table. The data in that column could be lost. The data in that column will be cast from `Text` to `VarChar(50)`.
  - You are about to alter the column `zip` on the `business` table. The data in that column could be lost. The data in that column will be cast from `Text` to `VarChar(10)`.
  - You are about to alter the column `houseNumber` on the `business` table. The data in that column could be lost. The data in that column will be cast from `Text` to `VarChar(10)`.
  - You are about to alter the column `addressNotes` on the `business` table. The data in that column could be lost. The data in that column will be cast from `Text` to `VarChar(500)`.
  - You are about to alter the column `houseFloor` on the `business` table. The data in that column could be lost. The data in that column will be cast from `Text` to `VarChar(10)`.
  - The `day` column on the `business_operating_hours` table would be dropped and recreated. This will lead to data loss if there is data in the column.
  - You are about to alter the column `open` on the `business_operating_hours` table. The data in that column could be lost. The data in that column will be cast from `Text` to `VarChar(10)`.
  - You are about to alter the column `close` on the `business_operating_hours` table. The data in that column could be lost. The data in that column will be cast from `Text` to `VarChar(10)`.
  - You are about to alter the column `email` on the `invitation` table. The data in that column could be lost. The data in that column will be cast from `Text` to `VarChar(255)`.
  - You are about to alter the column `role` on the `member` table. The data in that column could be lost. The data in that column will be cast from `Text` to `VarChar(255)`.
  - You are about to alter the column `name` on the `organization` table. The data in that column could be lost. The data in that column will be cast from `Text` to `VarChar(255)`.
  - You are about to alter the column `slug` on the `organization` table. The data in that column could be lost. The data in that column will be cast from `Text` to `VarChar(100)`.
  - You are about to alter the column `logo` on the `organization` table. The data in that column could be lost. The data in that column will be cast from `Text` to `VarChar(255)`.
  - You are about to alter the column `name` on the `plan` table. The data in that column could be lost. The data in that column will be cast from `Text` to `VarChar(255)`.
  - You are about to alter the column `currency` on the `plan` table. The data in that column could be lost. The data in that column will be cast from `Text` to `VarChar(3)`.
  - You are about to alter the column `ipAddress` on the `session` table. The data in that column could be lost. The data in that column will be cast from `Text` to `VarChar(50)`.
  - You are about to alter the column `userAgent` on the `session` table. The data in that column could be lost. The data in that column will be cast from `Text` to `VarChar(255)`.
  - The `impersonatedBy` column on the `session` table would be dropped and recreated. This will lead to data loss if there is data in the column.
  - The `activeOrganizationId` column on the `session` table would be dropped and recreated. This will lead to data loss if there is data in the column.
  - The `status` column on the `subscription` table would be dropped and recreated. This will lead to data loss if there is data in the column.
  - The `status` column on the `transaction` table would be dropped and recreated. This will lead to data loss if there is data in the column.
  - You are about to alter the column `externalTxId` on the `transaction` table. The data in that column could be lost. The data in that column will be cast from `Text` to `VarChar(255)`.
  - You are about to alter the column `paymentRequestId` on the `transaction` table. The data in that column could be lost. The data in that column will be cast from `Text` to `VarChar(255)`.
  - You are about to alter the column `currency` on the `transaction` table. The data in that column could be lost. The data in that column will be cast from `Text` to `VarChar(3)`.
  - You are about to alter the column `invoiceId` on the `transaction` table. The data in that column could be lost. The data in that column will be cast from `Text` to `VarChar(255)`.
  - You are about to alter the column `invoiceUrl` on the `transaction` table. The data in that column could be lost. The data in that column will be cast from `Text` to `VarChar(255)`.
  - You are about to alter the column `email` on the `user` table. The data in that column could be lost. The data in that column will be cast from `Text` to `VarChar(255)`.
  - You are about to alter the column `image` on the `user` table. The data in that column could be lost. The data in that column will be cast from `Text` to `VarChar(255)`.
  - You are about to alter the column `normalizedEmail` on the `user` table. The data in that column could be lost. The data in that column will be cast from `Text` to `VarChar(255)`.
  - You are about to alter the column `phoneNumber` on the `user` table. The data in that column could be lost. The data in that column will be cast from `Text` to `VarChar(15)`.
  - The `day` column on the `user_operating_hours` table would be dropped and recreated. This will lead to data loss if there is data in the column.
  - You are about to alter the column `open` on the `user_operating_hours` table. The data in that column could be lost. The data in that column will be cast from `Text` to `VarChar(10)`.
  - You are about to alter the column `close` on the `user_operating_hours` table. The data in that column could be lost. The data in that column will be cast from `Text` to `VarChar(10)`.
  - You are about to drop the column `isBusiness` on the `user_profile` table. All the data in the column will be lost.
  - You are about to drop the column `isDelivery` on the `user_profile` table. All the data in the column will be lost.
  - You are about to alter the column `address` on the `user_profile` table. The data in that column could be lost. The data in that column will be cast from `Text` to `VarChar(50)`.
  - You are about to alter the column `city` on the `user_profile` table. The data in that column could be lost. The data in that column will be cast from `Text` to `VarChar(50)`.
  - You are about to alter the column `state` on the `user_profile` table. The data in that column could be lost. The data in that column will be cast from `Text` to `VarChar(50)`.
  - You are about to alter the column `country` on the `user_profile` table. The data in that column could be lost. The data in that column will be cast from `Text` to `VarChar(50)`.
  - You are about to alter the column `zip` on the `user_profile` table. The data in that column could be lost. The data in that column will be cast from `Text` to `VarChar(10)`.
  - You are about to alter the column `houseNumber` on the `user_profile` table. The data in that column could be lost. The data in that column will be cast from `Text` to `VarChar(10)`.
  - You are about to alter the column `houseFloor` on the `user_profile` table. The data in that column could be lost. The data in that column will be cast from `Text` to `VarChar(10)`.
  - You are about to alter the column `apartmentNumber` on the `user_profile` table. The data in that column could be lost. The data in that column will be cast from `Text` to `VarChar(10)`.
  - You are about to alter the column `addressNotes` on the `user_profile` table. The data in that column could be lost. The data in that column will be cast from `Text` to `VarChar(500)`.
  - The primary key for the `verification` table will be changed. If it partially fails, the table could be left without primary key constraint.
  - The `id` column on the `verification` table would be dropped and recreated. This will lead to data loss if there is data in the column.
  - You are about to alter the column `identifier` on the `verification` table. The data in that column could be lost. The data in that column will be cast from `Text` to `VarChar(255)`.
  - A unique constraint covering the columns `[externalTxId]` on the table `transaction` will be added. If there are existing duplicate values, this will fail.
  - Changed the type of `accountId` on the `account` table. No cast exists, the column would be dropped and recreated, which cannot be done if there is data, since the column is required.
  - Changed the type of `providerId` on the `account` table. No cast exists, the column would be dropped and recreated, which cannot be done if there is data, since the column is required.
  - Added the required column `paymentMethod` to the `transaction` table without a default value. This is not possible if the table is not empty.

*/
-- CreateEnum
CREATE TYPE "VehicleType" AS ENUM ('Scooter', 'Motorcycle', 'Mini', 'Family', 'Suv', 'VanShort', 'VanLong', 'Truck', 'SemiTruck');

-- AlterTable
ALTER TABLE "account" DROP COLUMN "accountId",
ADD COLUMN     "accountId" INTEGER NOT NULL,
DROP COLUMN "providerId",
ADD COLUMN     "providerId" INTEGER NOT NULL;

-- AlterTable
ALTER TABLE "business" ADD COLUMN     "apartmentNumber" VARCHAR(10) DEFAULT '',
ALTER COLUMN "logo" SET DATA TYPE VARCHAR(255),
ALTER COLUMN "slug" SET DATA TYPE VARCHAR(255),
ALTER COLUMN "address" DROP NOT NULL,
ALTER COLUMN "address" SET DATA TYPE VARCHAR(50),
ALTER COLUMN "city" DROP NOT NULL,
ALTER COLUMN "city" SET DATA TYPE VARCHAR(50),
ALTER COLUMN "state" SET DATA TYPE VARCHAR(50),
ALTER COLUMN "country" DROP NOT NULL,
ALTER COLUMN "country" SET DATA TYPE VARCHAR(50),
ALTER COLUMN "zip" DROP NOT NULL,
ALTER COLUMN "zip" SET DATA TYPE VARCHAR(10),
ALTER COLUMN "houseNumber" DROP NOT NULL,
ALTER COLUMN "houseNumber" SET DATA TYPE VARCHAR(10),
ALTER COLUMN "addressNotes" SET DEFAULT '',
ALTER COLUMN "addressNotes" SET DATA TYPE VARCHAR(500),
ALTER COLUMN "houseFloor" SET DATA TYPE VARCHAR(10);

-- AlterTable
ALTER TABLE "business_operating_hours" DROP COLUMN "day",
ADD COLUMN     "day" "Day" NOT NULL DEFAULT 'Sunday',
ALTER COLUMN "open" SET DATA TYPE VARCHAR(10),
ALTER COLUMN "close" SET DATA TYPE VARCHAR(10);

-- AlterTable
ALTER TABLE "invitation" ALTER COLUMN "email" SET DATA TYPE VARCHAR(255);

-- AlterTable
ALTER TABLE "member" ALTER COLUMN "role" SET DATA TYPE VARCHAR(255);

-- AlterTable
ALTER TABLE "organization" ALTER COLUMN "name" SET DATA TYPE VARCHAR(255),
ALTER COLUMN "slug" SET DATA TYPE VARCHAR(100),
ALTER COLUMN "logo" SET DATA TYPE VARCHAR(255),
ALTER COLUMN "createdAt" SET DEFAULT CURRENT_TIMESTAMP;

-- AlterTable
ALTER TABLE "plan" ADD COLUMN     "description" TEXT,
ALTER COLUMN "name" SET DATA TYPE VARCHAR(255),
ALTER COLUMN "currency" SET DATA TYPE VARCHAR(3);

-- AlterTable
ALTER TABLE "session" ALTER COLUMN "ipAddress" SET DATA TYPE VARCHAR(50),
ALTER COLUMN "userAgent" SET DATA TYPE VARCHAR(255),
DROP COLUMN "impersonatedBy",
ADD COLUMN     "impersonatedBy" INTEGER,
DROP COLUMN "activeOrganizationId",
ADD COLUMN     "activeOrganizationId" INTEGER;

-- AlterTable
ALTER TABLE "subscription" DROP COLUMN "status",
ADD COLUMN     "status" "SubscriptionStatus" NOT NULL DEFAULT 'Inactive';

-- AlterTable
ALTER TABLE "transaction" ADD COLUMN     "ProductId" INTEGER,
ADD COLUMN     "metadata" JSONB,
ADD COLUMN     "paymentMethod" "PaymentMethod" NOT NULL,
ADD COLUMN     "subscriptionId" INTEGER,
DROP COLUMN "status",
ADD COLUMN     "status" "PaymentStatus" NOT NULL DEFAULT 'Pending',
ALTER COLUMN "externalTxId" SET DATA TYPE VARCHAR(255),
ALTER COLUMN "paymentRequestId" SET DATA TYPE VARCHAR(255),
ALTER COLUMN "currency" SET DATA TYPE VARCHAR(3),
ALTER COLUMN "invoiceId" SET DATA TYPE VARCHAR(255),
ALTER COLUMN "invoiceUrl" SET DATA TYPE VARCHAR(255);

-- AlterTable
ALTER TABLE "user" ALTER COLUMN "email" SET DATA TYPE VARCHAR(255),
ALTER COLUMN "createdAt" SET DEFAULT CURRENT_TIMESTAMP,
ALTER COLUMN "updatedAt" SET DEFAULT CURRENT_TIMESTAMP,
ALTER COLUMN "image" SET DATA TYPE VARCHAR(255),
ALTER COLUMN "normalizedEmail" SET DATA TYPE VARCHAR(255),
ALTER COLUMN "phoneNumber" SET DATA TYPE VARCHAR(15);

-- AlterTable
ALTER TABLE "user_operating_hours" DROP COLUMN "day",
ADD COLUMN     "day" "Day" NOT NULL DEFAULT 'Sunday',
ALTER COLUMN "open" SET DATA TYPE VARCHAR(10),
ALTER COLUMN "close" SET DATA TYPE VARCHAR(10);

-- AlterTable
ALTER TABLE "user_profile" DROP COLUMN "isBusiness",
DROP COLUMN "isDelivery",
ALTER COLUMN "address" SET DATA TYPE VARCHAR(50),
ALTER COLUMN "city" SET DATA TYPE VARCHAR(50),
ALTER COLUMN "state" SET DATA TYPE VARCHAR(50),
ALTER COLUMN "country" SET DATA TYPE VARCHAR(50),
ALTER COLUMN "zip" SET DATA TYPE VARCHAR(10),
ALTER COLUMN "houseNumber" SET DATA TYPE VARCHAR(10),
ALTER COLUMN "houseFloor" SET DATA TYPE VARCHAR(10),
ALTER COLUMN "apartmentNumber" SET DATA TYPE VARCHAR(10),
ALTER COLUMN "addressNotes" SET DEFAULT '',
ALTER COLUMN "addressNotes" SET DATA TYPE VARCHAR(500);

-- AlterTable
ALTER TABLE "user_settings" ADD COLUMN     "isBusiness" BOOLEAN NOT NULL DEFAULT false,
ADD COLUMN     "isDelivery" BOOLEAN NOT NULL DEFAULT false;

-- AlterTable
ALTER TABLE "verification" DROP CONSTRAINT "verification_pkey",
DROP COLUMN "id",
ADD COLUMN     "id" SERIAL NOT NULL,
ALTER COLUMN "identifier" SET DATA TYPE VARCHAR(255),
ADD CONSTRAINT "verification_pkey" PRIMARY KEY ("id");

-- CreateTable
CREATE TABLE "plan_extras" (
    "id" SERIAL NOT NULL,
    "planId" INTEGER NOT NULL,
    "name" VARCHAR(255) NOT NULL,
    "description" TEXT,
    "price" DOUBLE PRECISION NOT NULL,
    "currency" VARCHAR(3) NOT NULL,
    "quantity" INTEGER NOT NULL,
    "metadata" JSONB,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT "plan_extras_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "product" (
    "id" SERIAL NOT NULL,
    "name" VARCHAR(255) NOT NULL,
    "description" TEXT,
    "price" DOUBLE PRECISION NOT NULL,
    "currency" VARCHAR(3) NOT NULL,
    "metadata" JSONB,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT "product_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "subscription_extras" (
    "subscriptionId" INTEGER NOT NULL,
    "planExtrasId" INTEGER NOT NULL,
    "quantity" INTEGER NOT NULL,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP
);

-- CreateTable
CREATE TABLE "vehicles" (
    "id" SERIAL NOT NULL,
    "userId" INTEGER NOT NULL,
    "type" "VehicleType" NOT NULL,
    "hasCooler" BOOLEAN NOT NULL DEFAULT false,
    "hasRack" BOOLEAN NOT NULL DEFAULT false,
    "hasBox" BOOLEAN NOT NULL DEFAULT false,
    "hasTrailer" BOOLEAN NOT NULL DEFAULT false,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT "vehicles_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "messages" (
    "id" SERIAL NOT NULL,
    "title" VARCHAR(100) NOT NULL,
    "content" TEXT NOT NULL,
    "isRead" BOOLEAN NOT NULL DEFAULT false,
    "senderId" INTEGER NOT NULL,
    "receiverId" INTEGER NOT NULL,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT "messages_pkey" PRIMARY KEY ("id")
);

-- CreateIndex
CREATE UNIQUE INDEX "plan_extras_planId_name_key" ON "plan_extras"("planId", "name");

-- CreateIndex
CREATE UNIQUE INDEX "product_name_key" ON "product"("name");

-- CreateIndex
CREATE UNIQUE INDEX "subscription_extras_subscriptionId_planExtrasId_key" ON "subscription_extras"("subscriptionId", "planExtrasId");

-- CreateIndex
CREATE INDEX "subscription_userId_idx" ON "subscription"("userId");

-- CreateIndex
CREATE INDEX "subscription_planId_idx" ON "subscription"("planId");

-- CreateIndex
CREATE UNIQUE INDEX "transaction_externalTxId_key" ON "transaction"("externalTxId");

-- CreateIndex
CREATE INDEX "transaction_userId_idx" ON "transaction"("userId");

-- CreateIndex
CREATE INDEX "transaction_externalTxId_idx" ON "transaction"("externalTxId");

-- AddForeignKey
ALTER TABLE "plan_extras" ADD CONSTRAINT "plan_extras_planId_fkey" FOREIGN KEY ("planId") REFERENCES "plan"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "subscription_extras" ADD CONSTRAINT "subscription_extras_subscriptionId_fkey" FOREIGN KEY ("subscriptionId") REFERENCES "subscription"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "subscription_extras" ADD CONSTRAINT "subscription_extras_planExtrasId_fkey" FOREIGN KEY ("planExtrasId") REFERENCES "plan_extras"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "transaction" ADD CONSTRAINT "transaction_subscriptionId_fkey" FOREIGN KEY ("subscriptionId") REFERENCES "subscription"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "transaction" ADD CONSTRAINT "transaction_ProductId_fkey" FOREIGN KEY ("ProductId") REFERENCES "product"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "vehicles" ADD CONSTRAINT "vehicles_userId_fkey" FOREIGN KEY ("userId") REFERENCES "user"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "messages" ADD CONSTRAINT "messages_senderId_fkey" FOREIGN KEY ("senderId") REFERENCES "user"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "messages" ADD CONSTRAINT "messages_receiverId_fkey" FOREIGN KEY ("receiverId") REFERENCES "user"("id") ON DELETE CASCADE ON UPDATE CASCADE;
