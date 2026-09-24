set -e
docker run -d --name web nginx:alpine
docker run -d --name dock1 nginx:alpine
docker exec web ls -la /usr/share/nginx/html
docker logs web
docker stop web
docker stop dock1
docker rm web
docker rm dock1