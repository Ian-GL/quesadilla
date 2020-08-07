defmodule Quesadilla.Repo do
  use Ecto.Repo,
    otp_app: :quesadilla,
    adapter: Ecto.Adapters.Postgres
end
