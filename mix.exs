defmodule K8sTestProject.MixProject do
  use Mix.Project

  def project do
    [
      apps_path: "apps",
      version: "0.1.0",
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      releases: releases()
    ]
  end

  defp releases do
    [
      master: [
        include_executables_for: [:unix],
        include_erts: Mix.env() == :prod,
        quiet: true,
        applications: [master: :permanent]
      ],
      slave: [
        include_executables_for: [:unix],
        include_erts: Mix.env() == :prod,
        quiet: true,
        applications: [slave: :permanent]
      ]
    ]
  end

  # Dependencies listed here are available only for this
  # project and cannot be accessed from applications inside
  # the apps folder.
  #
  # Run "mix help deps" for examples and options.
  defp deps do
    []
  end
end
