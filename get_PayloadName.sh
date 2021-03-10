#!/bin/bash
gron yearn_proposals.json | grep payload.name | gron --ungron > ProposalNAmes.json
