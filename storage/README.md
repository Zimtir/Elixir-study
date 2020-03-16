# Key-value store

## usage:

```shell
iex -S mix
{:ok, storage} = Server.start_link()
Server.put(bucket, "hours for the meeting", 18)
Server.get(bucket, "hours for the meeting")
Server.delete(storage, "hours for the meeting")
Server.stop(storage)

```
