# Key-value store

## usage:

```shell
iex -S mix
{:ok, storage} = Server.start_link()
Server.put(storage, "hours for the meeting", 18)
Server.get(storage, "hours for the meeting")
Server.delete(storage, "hours for the meeting")
Server.stop(storage)

```
