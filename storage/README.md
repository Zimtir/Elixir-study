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
