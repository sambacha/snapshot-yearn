# SnapShot Yearn

[https://hub.snapshot.page/api/spaces](https://hub.snapshot.page/api/spaces)

## Yearn Snapshot Endpoint
[https://hub.snapshot.page/api/yearn/proposals](https://hub.snapshot.page/api/yearn/proposals)

## Requirements 

- gron

### Install
```
▶ brew install gron
```

#### Fetch SnapShot Proposals

```bash 
curl https://hub.snapshot.page/api/yearn/proposals > yearn_snapshot.json
```


## Snapshot Data Keys 

<pre>
address
authorIpfsHash

msg.payload.body

payload.metadata.strategies
</pre> 


## License 

ISC
