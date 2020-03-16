# Key-value store

## usage:

```shell
iex -S mix
{:ok, storage} = Storage.GenServer.start_link()
Storage.GenServer.put(bucket, "hours for the meeting", 18)
Storage.GenServer.get(bucket, "hours for the meeting")
Storage.GenServer.delete(storage, "hours for the meeting")
Storage.GenServer.stop(storage)

```

**TODO: Key-value store**

## Installation

If [available in Hex](https://hex.pm/docs/publish), the package can be installed
by adding `storage` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [
    {:storage, "~> 0.1.0"}
  ]
end
```

Documentation can be generated with [ExDoc](https://github.com/elixir-lang/ex_doc)
and published on [HexDocs](https://hexdocs.pm). Once published, the docs can
be found at [https://hexdocs.pm/storage](https://hexdocs.pm/storage).
