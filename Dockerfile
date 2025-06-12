#  BUILD STAGE

FROM node:20-alpine AS builder
WORKDIR /app
COPY . .
RUN npm ci
RUN npm run build

# RUNTIME STAGE

FROM nginx:alpine AS runner
COPY --from=builder /app/dist /usr/share/nginx/html