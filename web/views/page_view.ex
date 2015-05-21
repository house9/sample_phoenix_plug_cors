defmodule SamplePhoenixPlugCors.PageView do
  use SamplePhoenixPlugCors.Web, :view

  def render("user.json", %{id: id}) do
    %{id: id}
  end
end
