defmodule ElixirLearningWeb.AccountController do
  use ElixirLearningWeb, :controller

  alias ElixirLearning.Account
  alias ElixirLearning.Accounts.Transactions.Response, as: TransactionResponse

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

  def transaction(conn, params) do
    with {:ok, %TransactionResponse{} = transaction} <- ElixirLearning.transaction(params) do
      conn
      |> put_status(:ok)
      |> render("transaction.json", transaction: transaction)
    end
  end

end
