defmodule RotRaven.Vehicle.Transmission.Gear do
  use Ecto.Schema
  import Ecto.Changeset

  schema "vehicle_transmission_gears" do
    field :type, :string

    timestamps()
  end

  @doc false
  def changeset(gear, attrs) do
    gear
    |> cast(attrs, [:type])
    |> validate_required([:type])
  end
end
