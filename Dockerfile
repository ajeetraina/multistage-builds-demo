# Stage 1: Dependencies
FROM node:22-alpine AS deps
WORKDIR /app
COPY package*.json ./
RUN npm install

# Stage 2: Build 
FROM deps AS build-stage
COPY . .
RUN npm run build

# Stage 3: Test
FROM build-stage AS test 
RUN npm test

# Stage 4: Production
FROM alpine AS final
RUN apk add --no-cache nodejs npm
WORKDIR /app
COPY --from=build-stage /app/dist ./
COPY --from=build-stage /app/node_modules ./node_modules
COPY --from=build-stage /app/package.json ./
EXPOSE 3000
CMD ["node", "index.js"]
