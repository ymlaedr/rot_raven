defmodule RotRavenWeb.Resolvers.Content do
  def list_gps_records(_parent, _args, _resolution) do
    {:ok, RotRaven.Content.list_gps_records()}
  end
end
