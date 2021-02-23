wolke
===

## Usage

```bash
# Update to latest version
sudo docker-compose pull
sudo docker-compose build

# Start services
sudo docker-compose up -d

# Run nextcloud command line
sudo docker exec --user www-data -it nextcloud php occ
```

## License

`MIT`
