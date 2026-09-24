set -e


docker run --rm -v data:/data alpine sh -c "echo hej > /data/besked.txt"
docker run --rm -v min-volume:/data alpine cat /data/besked.txt
docker volume rm min-volume