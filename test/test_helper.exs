ExUnit.start

Mix.Task.run "ecto.create", ~w(-r Natter.Repo --quiet)
Mix.Task.run "ecto.migrate", ~w(-r Natter.Repo --quiet)
Ecto.Adapters.SQL.begin_test_transaction(Natter.Repo)

