#!/bin/sh
# cp .env ./prisma/.env
npx prisma db push
npm run dev