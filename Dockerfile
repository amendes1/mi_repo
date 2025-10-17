FROM nginx:alpine

# Copiar solo los archivos estáticos
COPY src/ /usr/share/nginx/html/

# No copiar configuración personalizada (usar la default)
# EXPOSE 80 está implícito en nginx:alpine

CMD ["nginx", "-g", "daemon off;"]
