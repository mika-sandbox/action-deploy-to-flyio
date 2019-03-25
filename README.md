# action-deploy-to-flyio

GitHub Action that deployment your project to [fly.io](https://fly.io).

## Usage

```
workflow "New workflow" {
  on = "push"
  resolves = ["Deploy to Fly"]
}

action "Run only master branch" {
  uses = "actions/bin/filter@master"
  args = "branch master"
}

action "Deploy to Fly" {
  uses  = "mika-f/action-deploy-to-flyio@master"
  needs = ["Run only master branch"]
  secrets = ["FLY_ACCESS_TOKEN"]
}
```


## Environment Variables

| Variable           | Description      |
| ------------------ | ---------------- |
| `FLY_ACCESS_TOKEN` | Fly Access Token |
