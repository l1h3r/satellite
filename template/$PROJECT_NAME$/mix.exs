defmodule <%= @project_name_camel_case %>.MixProject do
  use Mix.Project

  def project do
    [
      app: :<%= @project_name %>,
      version: "0.1.0",
      elixir: "~> 1.6",
      name: "<%= @project_name %>",
      source_url: "",
      package: package(),
      description: description(),
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      aliases: aliases(),
      dialyzer: dialyzer(),
      test_coverage: [tool: ExCoveralls]
    ]
  end

  def application do
    [
<%= if @is_supervised? do %>
      mod: {<%= @project_name_camel_case %>.Application, []},
<% end %>
      extra_applications: [:logger]
    ]
  end

  defp description do
    ""
  end

  defp package do
    [
      files: ["lib", "mix.exs", "README.md", "LICENSE.md"],
      maintainers: [""],
      licenses: [""],
      links: %{"Github" => ""}
    ]
  end

  defp deps do
    [
      {:ex_doc, "~> 0.18.3", only: :dev},
      {:credo, "~> 0.9.0", only: [:dev, :test], runtime: false},
      {:dialyxir, "~> 0.5.1", only: [:dev, :test], runtime: false},
      {:excoveralls, "~> 0.8.1", only: [:dev, :test], runtime: false}
    ]
  end

  defp aliases do
    [
      lint: ["dialyzer", "credo", "test"]
    ]
  end

  defp dialyzer do
    [
      ignore_warnings: "dialyzer.ignore-warnings"
    ]
  end
end
