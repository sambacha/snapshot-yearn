#!/bin/bash
gron yearn_proposals.json | fgrep "payload.metadata.strategies" | gron --ungron
