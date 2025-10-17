# Multi-stage build
FROM node:18-alpine as builder

WORKDIR /app
COPY src/ .
RUN echo "Build completed - $(date)" > build-info.txt

FROM nginx:alpine

# Copy built assets
COPY --from=builder /app/ /usr/share/nginx/html/

# Security headers
COPY --from=builder /app/ /usr/share/nginx/html/
RUN echo 'server_tokens off;' > /etc/nginx/conf.d/security.conf

# Health check
HEALTHCHECK --interval=30s --timeout=3s \
  CMD wget --no-verbose --tries=1 --spider http://localhost/ || exit 1

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
