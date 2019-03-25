workflow "New workflow" {
  on = "push"
  resolves = ["Deploy to Fly"]
}

action "Run only master branch" {
  uses = "actions/bin/filter@master"
  args = "branch master"
}

action "Deploy to Fly" {
  uses  = "./"
  needs = ["Run only master branch"]
  secrets = ["FLY_ACCESS_TOKEN"]
}
