# wolke

Run Nextcloud via Docker with NFS data storage, Collabora, Redis, MariaDB and LetsEncrypt certificate.

## Usage

```
// Fetch wolke repository
git clone git@github.com:adzialocha/wolke.git
cd wolke

// Copy configuration
cp example.env .env
vim .env

// Update and build required docker images
./build.sh

// Deploy docker containers on machine
./deploy.sh

// Remove active docker containers (not deleting volumes)
./remove.sh

// Delete used docker volumes (not deleting NFS data)
docker volume prune
docker volume rm wolke_data
```
