defmodule Documents.Factura do
  use Ecto.Model
  import Ecto.Query

  schema "factura" do
    field :rfc, :string
    field :total, :string
    field :subtotal, :string
    field :iva, :string
    timestamps
  end

  def sample_query do
    query = from w in Documents.Factura,
         select: w
    Documents.Repo.all(query)
  end

  def sample_create do
    new_entry = %Documents.Factura{rfc: "AAA010101AAA",
                                   total: "234.56",
                                   subtotal: "230.00",
                                   iva: "4.56"}
    Documents.Repo.insert(new_entry)                             
  end
  
end