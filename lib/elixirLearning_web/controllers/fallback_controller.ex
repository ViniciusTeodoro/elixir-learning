defmodule ElixirLearningWeb.FallbackController do
  use ElixirLearningWeb, :controller

  def call(conn, {:error, result}) do
    conn
    |> put_status(:bad_request)
    |> put_view(ElixirLearningWeb.ErrorView)
    |> render("400.json", result: result)
  end
end
