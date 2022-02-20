#!/bin/bash
gitlab-runner --debug register \
    --non-interactive \
    --url $GITLAB_URL \
    --registration-token $REGISTRATION_TOKEN \
    --executor docker \
    --description "My Custom Docker Runner" \
    --docker-image "docker:stable" \
    --tag-list "dind" \
    --run-untagged=true \
    --locked=false \
    --docker-privileged=true \
    --docker-tlsverify=false \
    --docker-host "tcp://dind:2375" \
    --docker-volumes "/var/run/docker.sock:/var/run/docker.sock" \
    --docker-volumes "/cache" \
    --docker-volumes "/builds:/builds" \
    --access-level "not_protected" \
    --docker-network-mode "host"
