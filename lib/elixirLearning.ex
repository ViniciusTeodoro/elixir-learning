defmodule ElixirLearning do
  alias ElixirLearning.Users.Create, as: UserCreate

  alias ElixirLearning.Accounts.Deposit

  alias ElixirLearning.Accounts.Withdraw

  defdelegate create_user(params), to: UserCreate, as: :call

  defdelegate deposit(params), to: Deposit, as: :call

  defdelegate withdraw(params), to: Withdraw, as: :call
end
