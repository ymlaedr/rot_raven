defmodule RotRaven.Content do
  def list_gps_records do
    Mongo.find(:mongo, "gps_records", %{})
  end
end
