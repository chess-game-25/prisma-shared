-- DropForeignKey
ALTER TABLE "public"."Game" DROP CONSTRAINT "Game_blackPlayerId_fkey";

-- AlterTable
ALTER TABLE "public"."Game" ALTER COLUMN "blackPlayerId" DROP NOT NULL;

-- AddForeignKey
ALTER TABLE "public"."Game" ADD CONSTRAINT "Game_blackPlayerId_fkey" FOREIGN KEY ("blackPlayerId") REFERENCES "public"."User"("id") ON DELETE SET NULL ON UPDATE CASCADE;
