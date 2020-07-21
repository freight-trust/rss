# GitRSS

Manage Container Dependencies through RSS

> Alternatives: [https://bandito.re/](https://bandito.re/)

## GitHub RSS

https://github.com/username/repository_name/commits/branch_name.atom?login=login&token=token.

> Example
> https://github.com/freight-trust/rss/commits/master.atom?login=login&token=token.

## Overview

GitHub provides some official RSS feeds officially:

Repo releases: https://github.com/:owner/:repo/releases.atom

Repo commits: https://github.com/:owner/:repo/commits.atom

User activities: https://github.com/:user.atom

Private feed: https://github.com/:user.private.atom?token=:secret (You can find
Subscribe to your news feed in dashboard page after login)

## RSSHub

[see docker-compose.yaml](/hub/docker-compose.yaml)

### Docker Deployment

[Uses the official RSSHub image](https://docs.rsshub.app/en/install/#docker-deployment)

#### Execute the following command to pull RSSHub's docker image.

```bash
$ docker pull diygod/rsshub
```

#### Start a RSSHub container

```bash
$ docker run -d --name rsshub -p 1200:1200 diygod/rsshub
```

Visit http://127.0.0.1:1200/, and enjoy it! ✅

Execute the following command to stop RSSHub.

```bash
$ docker stop rsshub
```

### RSSHub Configuration Variables

```
TELEGRAM_TOKEN: Telegram bot token
GITHUB_ACCESS_TOKEN: GitHub Access Token
EMAIL_CONFIG_xxx.gmail.com=password=123456&host=imap.gmail.com&port=993
SENTRY=sentry.dsn.link
NODE_NAME=
VERSION=
PORT=1200
LISTEN_INADDR_ANY=1
HTTP_BASIC_AUTH_NAME=usernam3
HTTP_BASIC_AUTH_PASS=passw0rd
PROXY_PORT
PROXY_PROTOCOL
PROXY_HOST
PROXY_AUTH
```

## Container Images

[flatcar] https://www.flatcar-linux.org/releases-json/releases-stable.json
https://www.flatcar-linux.org/releases-feed/releases-stable.xml

## License

MIT
