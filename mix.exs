defmodule Soothsayer.MixProject do
  use Mix.Project

  @version "0.3.1"
  @source_url "https://github.com/georgeguimaraes/soothsayer"

  def project do
    [
      app: :soothsayer,
      version: @version,
      elixir: "~> 1.17",
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      package: package(),
      docs: docs(),
      preferred_cli_env: [
        docs: :docs,
        "hex.publish": :docs
      ]
    ]
  end

  def application do
    [
      extra_applications: [:logger]
    ]
  end

  defp deps do
    [
      {:explorer, "~> 0.10.1"},
      {:nx, "~> 0.9.2"},
      {:axon, "~> 0.7.0"},
      {:exla, "~> 0.9.2"},
      {:ex_doc, ">= 0.0.0", only: :docs},
      {:dialyxir, "~> 1.4", only: [:dev], runtime: false}
    ]
  end

  defp package do
    [
      description:
        "Soothsayer is an Elixir library for time series forecasting, inspired by Facebook's Prophet and NeuralProphet.",
      licenses: ["Apache-2.0"],
      links: %{
        "GitHub" => @source_url
      }
    ]
  end

  defp docs do
    [
      main: "readme",
      source_url: @source_url,
      source_ref: "v#{@version}",
      extras: [
        "README.md"
      ]
    ]
  end
end
