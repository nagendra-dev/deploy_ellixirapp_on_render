defmodule DeployElixirappOnRender.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  @impl true
  def start(_type, _args) do
    children = [
      DeployElixirappOnRenderWeb.Telemetry,
      {DNSCluster, query: Application.get_env(:deploy_elixirapp_on_render, :dns_cluster_query) || :ignore},
      {Phoenix.PubSub, name: DeployElixirappOnRender.PubSub},
      # Start the Finch HTTP client for sending emails
      {Finch, name: DeployElixirappOnRender.Finch},
      # Start a worker by calling: DeployElixirappOnRender.Worker.start_link(arg)
      # {DeployElixirappOnRender.Worker, arg},
      # Start to serve requests, typically the last entry
      DeployElixirappOnRenderWeb.Endpoint
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: DeployElixirappOnRender.Supervisor]
    Supervisor.start_link(children, opts)
  end

  # Tell Phoenix to update the endpoint configuration
  # whenever the application is updated.
  @impl true
  def config_change(changed, _new, removed) do
    DeployElixirappOnRenderWeb.Endpoint.config_change(changed, removed)
    :ok
  end
end
