# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :oniichain,
  ecto_repos: [Oniichain.Repo]

# Configures the endpoint
config :oniichain, OniichainWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "7CYNhBlNZ6lP8tL5UOyGIRfI7fNkKqWL+BSN41EpzFOrfLrn7+KBN0REHIoKGRlW",
  render_errors: [view: OniichainWeb.ErrorView, accepts: ~w(json)],
  pubsub: [name: Oniichain.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
