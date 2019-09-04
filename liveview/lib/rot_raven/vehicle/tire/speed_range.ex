defmodule RotRaven.Vehicle.Tire.SpeedRange do
  use Ecto.Schema
  import Ecto.Changeset

  schema "vehicle_tire_speed_ranges" do
    field :name, :string

    timestamps()
  end

  @doc false
  def changeset(speed_range, attrs) do
    speed_range
    |> cast(attrs, [:name])
    |> validate_required([:name])
  end
end
