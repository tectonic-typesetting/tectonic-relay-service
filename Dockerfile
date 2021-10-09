# Copyright 2021 Peter Williamd and collaborators
# Licensed under the MIT License

FROM nginx:1.16-alpine
COPY nginx.conf permanent_redirects.map temporary_redirects.map /etc/nginx/
COPY static /usr/share/nginx/html
CMD ["nginx", "-g", "daemon off;"]
