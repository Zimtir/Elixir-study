# Key-value store

## usage:

```shell
iex -S mix
{:ok, storage} = Server.start_link()
Server.put(:store, "hours for the meeting", 18)
Server.get(:store, "hours for the meeting")
Server.delete(:store, "hours for the meeting")
Server.stop(:store)

```
