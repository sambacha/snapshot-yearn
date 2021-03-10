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

### Bulk Search Example 

> using ripgrep

We can save the output into a tmp file, e.g:

```bash
rg msg.payload.name > BULK.txt
wc -l BULK.txt
      79 BULK.txt
```
That gives us 79 proposals (at maximum), by counting how many lines are in the file `BULK.txt`

```bash
$ rg msg.payload.name
gronkd
14:json.QmNpTE2Yb3xWNS8LJ5rZ1Kp2wKKBfyizRy2iP25ze2jbd8.msg.payload.name = "Test Proposal";
34:json.QmPRYLzXuzCLE39ibvMQSMUzhT7d4FREynMK41KowjgZfB.msg.payload.name = "规范化";
54:json.QmPTAfJCq3UtFZqY3jdgNEJsxc6yuHwfESnQyjjkoccZrJ.msg.payload.name = "yAcademy: Planting the Seed of a Sustainably Secure Future for yEarn and Beyond";
75:json.QmPnGpgkXDyZg2RJda8UazVyyW6QXTeKdwCZz3s6Fp55ES.msg.payload.name = "Can I spam this thing?";
95:json.QmPvovfoE9sYRNXSZmFu9htywwCtqvAYAzkdJPpN52e5tW.msg.payload.name = "test";
114:json.QmPwL7uLXfeAhCuC4Asu91BXtwHFk992bVLVuGwKhcdmPw.msg.payload.name = "CIP#5 Add hBTC/wBTC pool and a liquidity gauge for that pool";
133:json.QmQFrtuFaMf3C9i8T8VVzTuMZMLSvUAfFr9jc5i4miHLxc.msg.payload.name = "New Proposal";
166:json.QmQSrLhjC7mdVpAJP7arVTKxjGFyrWFUvqQLhW2xzYkc8E.msg.payload.name = "qweqwe";
214:json.QmR2qDDKH28KRA7AmDhvaTTpKw9fbTR23Nb1okxK2Lao7F.msg.payload.name = "can we get more people staking?";
234:json.QmRKmXuEMaqY38ccvuZREmi6SfMxyhWQMT3mhJ6Cgfeqq9.msg.payload.name = "Vaults V2 Design";
254:json.QmRdRPDABGH7z2ctDow43FuiSn5jfqDgBcwWkCgifTR5qQ.msg.payload.name = "dasdas";
302:json.QmS9hfYWzhWmJnVc2dvQEFEm75q9SDykUwsciFeY6VYPh8.msg.payload.name = "Nickname for all YFI supporters.";
333:json.QmSEZBdFx9qfqYF2VGFWcWqnrCBZ6FHKDt5ThyPmHS8TN5.msg.payload.name = "VOTE: Gucci Slipper NFT Design Competition";
353:json.QmSGdznAukV9w88e4T3sSAFSAGdRHFgWpFCmehuQfSNdt2.msg.payload.name = "agajjas";
401:json.QmSJa3Sb9asQdgjFeMZygYcrXZbRX6BPFPpxc9ra9ukCWK.msg.payload.name = "T";
434:json.QmSQqxzChmTf25fGtMtXDpzfzC6DPPbEF7bq3jCL3R1KtS.msg.payload.name = "Remove Gorby";
454:json.QmSaYHR97LDMDvg9xeTfdNZw6aqL9njxBKM6JVFtCYxKvB.msg.payload.name = "Set Vault v2 fee structure";
502:json.QmSdnGLtPuMvs79pP83WUfcjB2hGs18Uc4E2jeepGDcpQy.msg.payload.name = "Reward loyal observers";
550:json.QmSe1czVctgEvoDJq1YavnQgVuehPfFSPxJ5sZExZwfRMB.msg.payload.name = "dsf";
573:json.QmSpzqCsE8KBFU7C6UJvnUTQxp3eBJpDntBgC7pDAcrK6t.msg.payload.name = "Add new yVaults with Credit Delegation to Increase ROI";
594:json.QmSzZ1aS5VmEqW77DLFDk8ReDw9V1y2325QsnK3ug45NtC.msg.payload.name = "Goyal";
614:json.QmT1qdYTPuiAzU9swiWrcQqw1F4uyN2P9Nn2iUMGSBF6AW.msg.payload.name = "wddwdw";
647:json.QmT4QHv9u93HgrcdNPAw8ua2Waj3JHcSuWe8r4VEAopmzr.msg.payload.name = "Test test";
695:json.QmT6aPSeSF6CKzoWKY8DKCST3tMdbuRMLzpzz7QAutdufX.msg.payload.name = "Test";
718:json.QmTDiNtS8GWFTevbHKxUaZHRHDTkg6sJSsVJTGrkmDZ83U.msg.payload.name = "Direct % of rewards towards Ethereum public goods funding";
738:json.QmTwxRLsd4DYZEzDuYHZmYq5BxhfsA7phMn3nun9tCcaXs.msg.payload.name = "qweqwe";
786:json.QmU2pCVLYEwJwaeC7Lrt9eskZFS4ZtzWwYT7nPYa78nrqG.msg.payload.name = "TEST";
806:json.QmUKfPe4KWzYSmZuR5dTf9Wmp46QvBcW94yupAZF7GoM9U.msg.payload.name = "Test";
826:json.QmUaT3QxokDFW7BsvzGwZwatypjJkuqu86vCxXPhXkA86W.msg.payload.name = "1234";
847:json.QmUk3wSecphvCpsKfzfdJTNCTKA24hRZCXET4epZ9Vvsxo.msg.payload.name = "Test";
867:json.QmUnbAd6zDgxaCJA1eNBB7yJcNBXPSkpAqJsmAa9qtgqUc.msg.payload.name = "1";
886:json.QmUr6jtzRrjYQQ8XsiipqB5vRsCgrWJhAsGo98BM4cRE8h.msg.payload.name = "new_propose";
907:json.QmUxkb9Evz7235CqaH1uBdZVwPbB8Fv1UCP1DWDiCDMdYG.msg.payload.name = "[Sentiment] Create a YFI Governance Vault";
955:json.QmV2avsHesuJMkgFSFhbKkwFMTh3ECmjvotdbqSmUNYUo7.msg.payload.name = "test";
1004:json.QmV4MzHfftkeGARK4FjdJHp1412QcoTeuwLkE351xEsR5M.msg.payload.name = "What is the trend of bitcoin in the near future?";
1023:json.QmVfN2osdCsDZctfJyG94JAE6r9fQaerr7L8NELe9ZHtCf.msg.payload.name = "Add CREAM to yVault to create yCREAM Delegated Vault";
1043:json.QmW2ZPfGrcNxVLvT2jm9fmvNwQLD9PrdToQDU8DNPp6Ckg.msg.payload.name = "[YIP-54] Formalize Operations Funding";
1063:json.QmWorSkqryWMkJRi2qZ17djdsyaKowX2ZHrTS3eYirkANZ.msg.payload.name = "pasta poopy face ";
1084:json.QmWyD7CW6EZmW2hMXhjo8T7dYMoTMFT5MmhWbkompdkGq5.msg.payload.name = "Grand finale a new face for Cover NFTs";
1132:json.QmX8oYTSkaXSARYZn7RuQzUufW9bVVQtwJ3zxurWrquS9a.msg.payload.name = "YIP-57: Funding Yearn's Future";
1153:json.QmXfeS2NCW435hfGDG3vscy3GxyGprgZYv6F4b1mo2zHfR.msg.payload.name = "Update yyCRV strategy to participate in Curve DAO";
1201:json.QmXuVkq2R2YaubpNmopKRciCw3uU7RiXNx5wT8K6WX6HVw.msg.payload.name = "How to earn ETH?";
1221:json.QmXudfEC9Lo9cv7j89h98WaSsVVMMWa1KKRyN4thgcEhrh.msg.payload.name = "YIP: Release fee rewards";
1241:json.QmXywy67BG2rMwaMnfWWP5op6MWPdYUU3RPxD38WdxkN57.msg.payload.name = "Burn YFI minting ability permanently";
1261:json.QmY2yoYQPjEzi7ruJ6W5QEJiqgP3kBN8VMk1nftHR5xXXL.msg.payload.name = "dggad";
1281:json.QmY6W2wiyB4jAYRwrVdtkkAxDmu7h7dFUx5JVhXpfRP8C7.msg.payload.name = "第三发多少第三方奥德赛";
1314:json.QmYJmFfdjfLUTEASGSfequZ7mMVHrY9yoESa4ZY6qWZ3gN.msg.payload.name = "Why";
1334:json.QmYbHfPHjTDfkwLzHz2XoFoAqPHQCZ6H8NbUcxn76q7Gky.msg.payload.name = "Test";
1354:json.QmYnnY36oysGR5ww7hWq7duWtHxHn5PWyL72KBb33dC36V.msg.payload.name = "First step to contributors stash";
1374:json.QmYpnQjX9oCvSQhdm8dFys9Bza9ULwJ2LoWg8d3L51k7fD.msg.payload.name = "aaaaaaaaaaaa qaaa ";
1394:json.QmZA8zJtLPqQAHi1jMdYX9MdMQ1ZmtRP8zuHccm6HFSzpF.msg.payload.name = "[YIP-55] Formalize the YIP Introduction & Voting Process";
1414:json.QmZQMhjrRkZgqk2E49uNducyNZsi3z73jQkYCVTkwU4FDy.msg.payload.name = "what?";
1434:json.QmZR9xYfp6N35xat7Lzv6DPamahys7rrjMxNL9FLSN8pix.msg.payload.name = "test";
1454:json.QmZmk2t8pjpqTF4dHmyGDvMzaSezxGSQR1yZoxLq6sPE1L.msg.payload.name = "Raise the salary of core team member Artem";
1474:json.QmZt6KiD8yFfaP7bVdS4rkyn7772UVhM6UZkFvyztmHiKJ.msg.payload.name = "Create a ySNX vault to stake on Mintr";
1494:json.QmaHdavqGZzDpD6FuTKkAhj15YCna8V6oPVgNMCMSv8tGV.msg.payload.name = "asdf";
1513:json.QmaW3NWB3WXRKhTQXCtMoHgAX3jeo7qNwgrArWiUpiC2Qe.msg.payload.name = "New Proposa;";
1532:json.QmaWoU9y6P1P7FTc4dH8gwoorwdMXM2oZbGLGRePM3MfUV.msg.payload.name = "Upgrade Treasury Vault to solve gas subsidy, gitcoin and more ";
1552:json.QmamcXSvaEvt2PMJMtMQoDutc99b2LwZmZbLVxSyd8SbvU.msg.payload.name = "Testing";
1572:json.Qmb4HbWHGTaBg6xBiEGbkeZWRv6GCHZCMEkTgYRfBm8XVQ.msg.payload.name = "Test";
1605:json.Qmb6gBzjvgLMazSrQQGVcjutLNdkVyM2Lh6yckMzdoaHWZ.msg.payload.name = "BABY: Buyback and Build Yearn";
1625:json.QmbAq6jPB6ocrihjkDo5TLNF4D4w9dw1HsEsJ7vwdwd9g3.msg.payload.name = "[YIP-52] Make Strategist Skin in Game Partner for Make Benefit of Glorious Brain of Yearn ";
1645:json.QmbJd5rCsKbNY2anBHc1uN9hgdyrNn3wi2qozVm4WQAitb.msg.payload.name = "Adopt a Code of Conduct";
1693:json.Qmbbnuc6gRW4kKpMnSHNq7V3fWCwHQpMzuvQW2ioXZ28Ud.msg.payload.name = "sdf";
1741:json.QmbhnqNe1T5bUk1Tmmash91egHPhX4zHsp87iRkY5uccsw.msg.payload.name = "YIP-58: Adaptive mgmt fees based on AUM ";
1789:json.QmcxPVm2SyTzDqcdXZyMW1wHL6Sp1Lv15HVbtKhY42ncYQ.msg.payload.name = "dsfsdfds";
1810:json.QmczGZpyDJxWHzm5AaBE2FmEsBLsA9UGyFh1ZQ5tDHchqN.msg.payload.name = "Should an admin fee be introduced to Curve Finance?";
1858:json.Qmd8k8SAKP75UsaL5WFqVbJkK8o2TbrkURXv9VxZKxe7UX.msg.payload.name = "dsfdsf";
1878:json.QmdEVNm5auGGUXhkzSHJarDNMujs2r9uxwmmTQ1AXpjVvv.msg.payload.name = "Goyal";
1926:json.QmdRCXH6BQpNcucoZqAtS5hQKjckE2428qiZoWjxmJXbs3.msg.payload.name = "YIP-59: Temporarily extend Multisig empowerment";
1946:json.QmdbX3Tcy8ah6rNQNE5oA92H6TrkT1XxgXGiJBvWWc8nva.msg.payload.name = "what is the weather";
1965:json.QmdjEaCdfNvQVYDeApobNV6BbteR3mVAXnbHBax1gWh6Qp.msg.payload.name = "Guccis for Andre";
1993:json.QmdoQr44Q8rCPd7mfQsMhQwt4o3X4MZ2k89uLAe4fEXCwf.msg.payload.name = "Reward authors of innovative strategies";
2041:json.QmeVAdDutx4H4Gf9QS1Ri1zUCCc2GjGpUUrqdzBREw55xn.msg.payload.name = "df";
2074:json.QmeVTt9V5N85wzjiHFhxYUSY8Jz7e65GKqrMzsawqN3aJm.msg.payload.name = "How to earn yearn finance ";
2094:json.QmegM7tWoysSPxo4NuSyPVfCtZ9QePJ5ZQoM9tTTHYZ6WU.msg.payload.name = "giveaway poor people ";
2114:json.QmfAEBi8AgaSaFXwe6iGUBToJXuy5w4f5AH9knb1iPHn6M.msg.payload.name = "Set Vault v2 fee structure";
```


## License 

ISC
