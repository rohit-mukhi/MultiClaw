# MultiClaw 
## A beautiful marriage between OpenClaw and Multica

To run this setup, you must follow these steps:

Clone the repo of both the software:

Use: git clone --depth 1 <github-link>

Then place the respective docker files in their places.

The OpenClaw directory must have these file in these positions:  
./.env (Update it with your API keys and Telegram bot tokens)  
./docker-compose.yml  
~/.openclaw/openclaw.json

The multica directory must have these files in their respective places:
  
./env (No update required here)  
./docker-compose.yml  
./docker/Dockerfile.daemon  
./daemon-entrypoint.sh

### Fix Workspace Permissions: Users must ensure local workspace directories are writeable by non-root container users (uid 1000).

## Now once the files in their places follow these steps:

1) Go to each directory multica or openclaw separately and build their docker images. The command to do is standard docker build command can be looked up in web.
2) create a docker network bridge using the following command:
    docker network create multica-openclaw-net
3) Start both containers separately. First start multica then openclaw.

# Happy delegating work to agents!
