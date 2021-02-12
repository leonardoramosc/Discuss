defmodule DiscussWeb.AuthController do
  use DiscussWeb, :controller
  plug Ueberauth

  alias Discuss.Accounts
  #alias Discuss.Accounts.User
  alias DiscussWeb.Router.Helpers, as: Routes

  def callback(%{assigns: %{ueberauth_auth: auth}} = conn, params) do
    %{ "provider" => provider } = params
    %{ credentials: %{token: token}, info: %{email: email} } = auth

    # Accounts.create_user(%{email: email, provider: provider, token: token})
    signin(conn, %{email: email, provider: provider, token: token})

  end

  def signout(conn, _params) do
    conn
    |> configure_session(drop: true)
    |> redirect(to: Routes.topic_path(conn, :index))
  end

  defp signin(conn, changeset) do
    case Accounts.insert_or_update_user(changeset) do
      {:ok, user} ->
        conn
        |> put_flash(:info, "Welcome back!")
        # put_session
        |> put_session(:user_id, user.id)
        |> redirect(to: Routes.topic_path(conn, :index))
      {:error, _reason} ->
        conn
        |> put_flash(:error, "Error signin in")
        |> redirect(to: Routes.topic_path(conn, :index))
    end
  end

end
