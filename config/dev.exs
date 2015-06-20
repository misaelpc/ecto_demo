use Mix.Config

#Configure Documents Development Data Base
config :documents, Documents.Repo,
  adapter: Ecto.Adapters.Postgres,
  database: "documents_dev",
  username: "misaelperezchamorro",
  password: "",
  hostname: "localhost"