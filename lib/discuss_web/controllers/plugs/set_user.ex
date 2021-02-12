defmodule DiscussWeb.Plugs.SetUser do
  import Plug.Conn
  #import Phoenix.Controller

  alias Discuss.Repo
  alias Discuss.Accounts.User

  def init(_params) do
  end

  def call(conn, _params) do
    user_id = get_session(conn, :user_id)

    cond do
      # Si user_id existe y se obtiene el usuario con ese id de la base de datos,
      # assignar al objeto de conexion, ese usuario. Recordar que user_id se va a obtener
      # si el usuario esta logeado (ver funcion signin del auth_controller).
      # luego de esto, si la condicion fue verdadera, podremos acceder a ese usuario
      # por medio de conn.assigns.user
      user = user_id && Repo.get(User, user_id) ->
        assign(conn, :user, user)
      true ->
        assign(conn, :user, nil)
    end
  end
end
