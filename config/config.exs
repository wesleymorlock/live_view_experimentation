# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :live_view_coolness,
  ecto_repos: [LiveViewCoolness.Repo]

# Configures the endpoint
config :live_view_coolness, LiveViewCoolnessWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "ef+3qow/8/PAIAA+MiousUmL/rDj2XaHxavK9928Sf3AutNsppBboYhEbvcyb0Vl",
  render_errors: [view: LiveViewCoolnessWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: LiveViewCoolness.PubSub,
  live_view: [signing_salt: "osA+eWXN"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
