# Leonfit in Jekyllrb

## Docker

https://hub.docker.com/r/emj365/leonfit

### Docker Sync

https://github.com/EugenMayer/docker-sync/

### Run

```bash
docker-sync start
docker-compose up serve
```

## Converting Videos

```bash
for f in 000*.MTS; HandBrakeCLI -i $f -o $f.mp4 -Z 'Legacy/iPhone & iPod touch';
```
