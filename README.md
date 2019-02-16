# Drone Rebuild Plugin

```yaml
kind: pipeline
name: default

steps:
- name: rebuild
  image: mongkok/drone-rebuild
  settings:
    drone_token:
      from_secret: drone_token
    drone_server: https://drone.domake.io
    repository: mongkok/graphql-serverless
    branch: ${DRONE_BRANCH}
  when:
    branch:
      - dev
      - master
```
