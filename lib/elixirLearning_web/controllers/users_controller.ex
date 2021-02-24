defmodule ElixirLearningWeb.UsersController do
  use ElixirLearningWeb, :controller

  alias ElixirLearning.User

  action_fallback ElixirLearning.FallbackController

  def create(conn, params) do
    with {:ok, %User{} = user} <- ElixirLearning.create_user(params) do
      conn
      |> put_status(:created)
      |> render("create.json", user: user)
    end
  end

end
