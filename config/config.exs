# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :core_sample,
  ecto_repos: [CoreSample.Repo]

# Configures the endpoint
config :core_sample, CoreSampleWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "o5/kMzYCeO3a/OoTni8fi8xKYLy3cosqy1BA+679lYTZzDr06ongTYW56zLHLLQb",
  render_errors: [view: CoreSampleWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: CoreSample.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:user_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
