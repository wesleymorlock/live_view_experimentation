defmodule LiveViewCoolness.Repo do
  use Ecto.Repo,
    otp_app: :live_view_coolness,
    adapter: Ecto.Adapters.Postgres
end
