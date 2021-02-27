defmodule CrimeCurb.Repo do
  use Ecto.Repo,
    otp_app: :crime_curb,
    adapter: Ecto.Adapters.Postgres
end
