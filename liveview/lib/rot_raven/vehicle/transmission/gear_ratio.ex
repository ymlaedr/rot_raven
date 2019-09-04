defmodule RotRaven.Vehicle.Transmission.GearRatio do
  use Ecto.Schema
  import Ecto.Changeset

  schema "vehicle_transmission_gear_ratios" do
    field :no, :integer
    field :ratio, :decimal
    field :gear_id, :id

    timestamps()
  end

  @doc false
  def changeset(ratio, attrs) do
    ratio
    |> cast(attrs, [:no, :ratio])
    |> validate_required([:no, :ratio])
  end
end
