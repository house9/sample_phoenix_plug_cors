defmodule SamplePhoenixPlugCors.PageController do
  use SamplePhoenixPlugCors.Web, :controller

  plug :action

  def index(conn, _params) do
    render conn, "index.html"
  end
end
