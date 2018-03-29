defmodule Satellite do
  @moduledoc """
  Satellite
  """
  @moduledoc File.read!(Path.join([__DIR__, "../README.md"]))

  use MixTemplates,
    name: :satellite,
    short_desc: "Boilerplate Template for Elixir Projects",
    source_dir: "../template",
    options: [
      supervised: [to: :is_supervised?, default: false],
      sup: [same_as: :supervised]
    ]
end
