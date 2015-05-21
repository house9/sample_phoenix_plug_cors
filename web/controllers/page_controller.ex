defmodule SamplePhoenixPlugCors.PageController do
  use SamplePhoenixPlugCors.Web, :controller

  plug :action

  def index(conn, _params) do
    render conn, "index.html"
  end

  def get_user(conn, _params) do
    render conn, "user.json", %{id: 2}
  end

  def post_user(conn, _params) do
    render conn, "user.json", %{id: 2}
  end

  def put_user(conn, _params) do
    render conn, "user.json", %{id: 2}
  end
end
