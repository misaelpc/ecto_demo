defmodule Documents.Finds do
  import Ecto.Query

  def sample_query do
    query = from w in Documents.Factura,
         select: w
    Documents.Repo.all(query)
  end

end