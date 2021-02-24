defmodule ElixirLearningWeb.AccountController do
  use ElixirLearningWeb, :controller

  alias ElixirLearning.Account

  action_fallback ElixirLearning.FallbackController


  def deposit(conn, params) do
    with {:ok, %Account{} = account} <- ElixirLearning.deposit(params) do
      conn
      |> put_status(:ok)
      |> render("update.json", account: account)
    end
  end

  def withdraw(conn, params) do
    with {:ok, %Account{} = account} <- ElixirLearning.deposit(params) do
      conn
      |> put_status(:ok)
      |> render("update.json", account: account)
    end
  end

end
