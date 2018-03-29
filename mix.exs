defmodule Satellite.MixProject do
  use Mix.Project

  def project do
    [
      app: :satellite,
      version: "0.1.0",
      elixir: "~> 1.6",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  defp deps do
    [
      {:mix_templates, "~> 0.2.1", app: false},
      {:ex_doc, "~> 0.18.3", only: [:dev, :test]}
    ]
  end
end
