defmodule MoviesRun.Repo do
  use Ecto.Repo,
    otp_app: :movies_run,
    adapter: Ecto.Adapters.Postgres
end
