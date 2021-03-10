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

## Example 

Lets get all proposals involving strategies:

```bash
./get_Strategies.sh > snapshot_Strategies.json
```

Selected part of the saved output:

```json
 "QmeVAdDutx4H4Gf9QS1Ri1zUCCc2GjGpUUrqdzBREw55xn": {
    "msg": {
      "payload": {
        "metadata": {
          "strategies": [
            {
              "name": "erc20-balance-of",
              "params": {
                "address": "0xBa37B002AbaFDd8E89a1995dA52740bbC013D992",
                "decimals": 18,
                "symbol": "YFI"
              }
            },
            {
              "name": "yearn-vault",
              "params": {
                "address": "0xBA2E7Fed597fd0E3e70f5130BcDbbFE06bB94fe1",
                "decimals": 18,
                "symbol": "YFI (yYFI)"
              }
            },
            {
              "name": "delegation",
              "params": {
                "strategies": [
                  {
                    "name": "erc20-balance-of",
                    "params": {
                      "address": "0xBa37B002AbaFDd8E89a1995dA52740bbC013D992",
                      "decimals": 18
                    }
                  },
                  {
                    "name": "yearn-vault",
                    "params": {
                      "address": "0xBA2E7Fed597fd0E3e70f5130BcDbbFE06bB94fe1",
                      "decimals": 18
                    }
                  }
                ],
                "symbol": "YFI (delegated)"
              }
            }
          ]
        }
      }
    }
 }
```


### Snapshot Data Keys 

<pre>
address
authorIpfsHash

msg.payload.body

payload.metadata.strategies
</pre> 

## Bulk Search

the file named `gronkd` contains the raw saved output from the snapshot api endpoint. 

Using something like [`rg`](https://github.com/BurntSushi/ripgrep) will let you search for any word within the context of 
anything posted throughout the entire snapshot history.


## License 

ISC
