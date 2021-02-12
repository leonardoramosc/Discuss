# Discuss

Para iniciar el proyecto

  * Run phx.new `<propject_name>`
  * Ir a la carpeta config/dev.exs
  * Agregar el usuario de postgres y la contraseña
  * Si aparece el siguiente error: `(Mix) The database for Discuss.Repo couldn't be created: command timed out`,
    ignorarlo y revisar en postgres si se ha creado la base de datos, es comun que muestre este error pero aun
    asi se cree la base de datos.

To start your Phoenix server:

  * Install dependencies with `mix deps.get`
  * Create and migrate your database with `mix ecto.setup`
  * Install Node.js dependencies with `npm install` inside the `assets` directory
  * Start Phoenix endpoint with `mix phx.server`

Now you can visit [`localhost:4000`](http://localhost:4000) from your browser.

Ready to run in production? Please [check our deployment guides](https://hexdocs.pm/phoenix/deployment.html).



## Learn more

  * Official website: https://www.phoenixframework.org/
  * Guides: https://hexdocs.pm/phoenix/overview.html
  * Docs: https://hexdocs.pm/phoenix
  * Forum: https://elixirforum.com/c/phoenix-forum
  * Source: https://github.com/phoenixframework/phoenix
