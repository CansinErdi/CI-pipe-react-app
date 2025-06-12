#  BUILD STAGE

FROM node:20-alpine AS build
WORKDIR /app
COPY . .
RUN npm ci
RUN npm run build

# RUNTIME STAGE

FROM node:20-alpine AS runtime
COPY --from=builder /app/build /usr/share/nginx/html