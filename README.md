# SamplePhoenixPlugCors

```
mix archive.install https://github.com/phoenixframework/phoenix/releases/download/v0.13.1/phoenix_new-0.13.1.ez
mix phoenix.new sample_phoenix_plug_cors
# add `{:plug_cors, "~> 0.7"}` to mix.exs
mix deps.get
# update endpoint and router
mix phoenix.server
```

```
curl -v -X GET http://127.0.0.1:4000/ -o /dev/null

# ...

< HTTP/1.1 200 OK
```

```
curl -v -X OPTIONS http://127.0.0.1:4000/ -o /dev/null

# ...

< HTTP/1.1 404 Not Found
```
