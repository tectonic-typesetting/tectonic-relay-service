# Copyright the Tectonic Project
# Licensed under the MIT License

FROM nginx:1.31-alpine
COPY nginx.conf permanent_redirects.map temporary_redirects.map /etc/nginx/
COPY static /usr/share/nginx/html
CMD ["nginx", "-g", "daemon off;"]
