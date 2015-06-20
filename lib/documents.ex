defmodule Documents do
	use Application

  def start(_type, _args) do
    import Supervisor.Spec
    tree = [worker(Documents.Repo, [])]
    opts = [name: :documents_repo, strategy: :one_for_one]
    Supervisor.start_link(tree, opts)
  end
end
