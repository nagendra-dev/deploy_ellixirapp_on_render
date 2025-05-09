# DeployElixirappOnRender

## build release

chmod a+x build.sh
./build.sh

export SECRET_KEY_BASE=$(mix phx.gen.secret)

Release created at _build/prod/rel/deploy_elixirapp_on_render

    # To start your system
    _build/prod/rel/deploy_elixirapp_on_render/bin/deploy_elixirapp_on_render start

Once the release is running:

    # To connect to it remotely
    _build/prod/rel/deploy_elixirapp_on_render/bin/deploy_elixirapp_on_render remote

    # To stop it gracefully (you may also send SIGINT/SIGTERM)
    _build/prod/rel/deploy_elixirapp_on_render/bin/deploy_elixirapp_on_render stop

To list all commands:

    _build/prod/rel/deploy_elixirapp_on_render/bin/deploy_elixirapp_on_render

To start your Phoenix server:

  * Run `mix setup` to install and setup dependencies
  * Start Phoenix endpoint with `mix phx.server` or inside IEx with `iex -S mix phx.server`

Now you can visit [`localhost:4000`](http://localhost:4000) from your browser.

Ready to run in production? Please [check our deployment guides](https://hexdocs.pm/phoenix/deployment.html).

## Learn more

  * Official website: https://www.phoenixframework.org/
  * Guides: https://hexdocs.pm/phoenix/overview.html
  * Docs: https://hexdocs.pm/phoenix
  * Forum: https://elixirforum.com/c/phoenix-forum
  * Source: https://github.com/phoenixframework/phoenix
