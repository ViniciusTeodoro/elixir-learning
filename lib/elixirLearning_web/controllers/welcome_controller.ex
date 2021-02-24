defmodule ElixirLearningWeb.WelcomeController do
  use ElixirLearningWeb, :controller

  alias ElixirLearning.Numbers

  def index(conn, %{"filename" => filename}) do
    filename
    |>Numbers.sum_from_file()
    |> handle_response(conn)
  end

  defp handle_response({:ok, %{result: result}}, conn) do
    conn
    |> put_status(:ok)
    |> json(%{message: "Welcome to my Learning API. Here is your number #{result}"})
  end

  defp handle_response({:error, reason}, conn) do
    conn
    |> put_status(:bad_request)
    |> json(reason)
    end
end
