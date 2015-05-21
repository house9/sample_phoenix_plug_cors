# SamplePhoenixPlugCors

```
mix archive.install https://github.com/phoenixframework/phoenix/releases/download/v0.13.1/phoenix_new-0.13.1.ez
mix phoenix.new sample_phoenix_plug_cors
# add `{:plug_cors, "~> 0.7"}` to mix.exs
mix deps.get
# configure plug_cors
mix phoenix.server
```

Configured like so:

* config/dev.exs
  * `config :plug_cors, origins: ["fiddle.jshell.net"]`
* config/prod.exs
  * `config :plug_cors, origins: ["example.com"]`
* lib/{{application_name}}/endpoint.ex
  * `plug PlugCors, methods: ["GET", "PUT"]`
  * ensure it is above `plug :router, App.Router`

Test from [this jsfiddle link](http://jsfiddle.net/02fj457x/)

For actual development change `config/dev.exs` to one of

* `config :plug_cors, origins: ["localhost"]`
* `config :plug_cors, origins: "*"`
