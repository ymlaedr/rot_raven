defmodule RotRavenWeb.Schema.ContentTypes do
  use Absinthe.Schema.Notation

  object :gps_record do
    field :id, :id
    field :timestamp, :string
    field :status_message, :string
    field :accuracy, :float
    field :altitude, :integer
    field :altitude_accuracy, :float
    field :heading, :float
    field :latitude, :float
    field :longitude, :float
    field :speed, :float
    field :speed_measurement, :string

  end
end
