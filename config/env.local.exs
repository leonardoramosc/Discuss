use Mix.Config
System.put_env("GITHUB_CLIENT_ID", "8afc3906e4ec2fd6f673")
System.put_env("GITHUB_CLIENT_SECRET", "a27e30be3ba27983b6dd45103f6a206b2101a296")
# config file needs to return config
config :discuss, Discuss.Repo, %{}
