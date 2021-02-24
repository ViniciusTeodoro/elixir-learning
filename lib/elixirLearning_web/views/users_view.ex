defmodule ElixirLearningWeb.UsersView do

  alias ElixirLearning.{Account, User}

  def render("create.json", %{account: %Account{id: account_id, balance: balance}, user: %User{id: id, name: name, nickname: nickname}}) do
    %{
      message: "User Created",
      user: %{
        id: id,
        name: name,
        nickname: nickname,
        account: %{
          id: account_id,
          balance: balance
        }
      }
    }
  end
end
