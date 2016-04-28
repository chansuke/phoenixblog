ExUnit.start

Mix.Task.run "ecto.create", ~w(-r Phoenixblog.Repo --quiet)
Mix.Task.run "ecto.migrate", ~w(-r Phoenixblog.Repo --quiet)
Ecto.Adapters.SQL.begin_test_transaction(Phoenixblog.Repo)

