<%
# ------------------------------------------------------------
MixTemplates.ignore_file_and_directory_unless(@is_supervised?)
# ------------------------------------------------------------
%>
defmodule <%= @project_name_camel_case %>.Application do
  @moduledoc false
  use Application

  def start(_type, _args) do
    children = [
      # {<%= @project_name_camel_case %>.Worker, arg},
    ]

    opts = [
      strategy: :one_for_one,
      name: <%= @project_name_camel_case %>.Supervisor
    ]

    Supervisor.start_link(children, opts)
  end
end
