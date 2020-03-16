defmodule Storage do
  use Application

  def start(_type, _args) do
    Storage.Supervisor.start_link(name: Storage.Supervisor)
  end
end
