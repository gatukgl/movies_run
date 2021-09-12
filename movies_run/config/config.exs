# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :movies_run,
  ecto_repos: [MoviesRun.Repo]

# Configures the endpoint
config :movies_run, MoviesRunWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "u1pb4n4CeCDj+BxKx7AemmMvxZOJxmyZk2hzfN4WQX5U5fTiX2EsA5F94bckrjt6",
  render_errors: [view: MoviesRunWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: MoviesRun.PubSub,
  live_view: [signing_salt: "EfpCHaAS"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
