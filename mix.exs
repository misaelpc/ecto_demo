defmodule Documents.Mixfile do
  use Mix.Project

  def project do
    [app: :documents,
     version: "0.0.1",
     elixir: "~> 1.0",
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     deps: deps]
  end

  # Configuration for the OTP application
  #
  # Type `mix help compile.app` for more information
  def application do
    [mod: {Documents, []},
    applications: [:logger,:postgrex,:ecto]]
  end

  defp deps do
    [{:postgrex, ">= 0.0.0"},
     {:ecto, "~> 0.9.0"}]
  end
end
