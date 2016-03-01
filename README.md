# Docker curl Timer
You need a way to perform a curl inside a container every `TIMER` secs? And you don't want to use a cron job, because a Linux based image is too heavy for this work, right?
Curl-Timer is your light solution.

Curl Timer is a very light Docker image that let you perform a curl in a configurable amount of time.

You can specify the `HTTP_VERB`, `URL`, `AUTH_TYPE` and `AUTH` you want to use.

Simply try it:

```
docker run \
-e HTTP_VERB='POST' \
-e URL='https://example.com' \
-e AUTH_TYPE='Basic' \
-e AUTH='MyToken' \
-e TIMER=600 \
agiuliano/curl-timer
```


Or use it in your `docker-compose.yml` file:

```yaml
timer:
    image: agiuliano/curl-timer
    environment:
        HTTP_VERB: POST
        URL: https://example.com
        AUTH_TYPE: Basic
        AUTH: MyToken
        TIMER: 600
```
