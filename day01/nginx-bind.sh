docker run -d -p 9000 \
  --mount type=bind,src=/opt/tmp/cfdsa-dec02-2024/day01/html,dst=/usr/share/nginx/html,readonly \
  nginx:1.27
