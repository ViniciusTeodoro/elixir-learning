defmodule ElixirLearning.Repo do
  use Ecto.Repo,
    otp_app: :elixirLearning,
    adapter: Ecto.Adapters.Postgres
end
