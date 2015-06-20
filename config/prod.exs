use Mix.Config

#Configure Documents Production Data Base
config :documents, Documents.Repo,
  adapter: Ecto.Adapters.MySQL,
  database: "documents_prod",
  username: "root",
  password: "",
  hostname: "localhost"