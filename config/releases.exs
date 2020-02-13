import Config

service_name = System.fetch_env!("SERVICE_NAME")

config :peerage,
  via: Peerage.Via.Dns,
  dns_name: service_name,
  app_name: "test_project"
