defmodule Documents.Repo.Migrations.CreateFacturasTable do
  use Ecto.Migration

  def change do
  	create table(:factura) do
      add :rfc, :string
      add :total, :string
      add :subtotal, :string
      add :iva, :string
      
      timestamps
    end
  end
  
end