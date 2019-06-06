# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :rot_raven,
  ecto_repos: [RotRaven.Repo]

# Configures the endpoint
config :rot_raven, RotRavenWeb.Endpoint,
  live_view: [signing_salt: "EmjU9OVrTrAp4QLqXri8KEzF2LenRfkXLLPYOU5Z7Qxi+dRYclxMU0J3aCLhQtHn"],
  url: [host: "localhost"],
  secret_key_base: "mhQfJXVa0J+RsMhz0drjWwSaDZdCxDG0bJlFUnr93pUi/4E4aF/8jbsH4pVbOmxD",
  render_errors: [view: RotRavenWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: RotRaven.PubSub, adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
