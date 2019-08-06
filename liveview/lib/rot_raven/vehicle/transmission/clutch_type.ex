defmodule RotRaven.Vehicle.Transmission.ClutchType do
  use Ecto.Schema
  import Ecto.Changeset

  schema "vehicle_transmission_clutch_types" do
    field :name, :string

    timestamps()
  end

  @doc false
  def changeset(clutch_type, attrs) do
    clutch_type
    |> cast(attrs, [:name])
    |> validate_required([:name])
  end
end
