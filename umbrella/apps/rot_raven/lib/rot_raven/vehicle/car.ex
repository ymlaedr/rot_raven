defmodule RotRaven.Vehicle.Car do
  use Ecto.Schema
  import Ecto.Changeset

  schema "vehicle_cars" do
    field :name, :string
    field :maker_id, :id
    field :prime_mover_id, :id
    field :transmission_id, :id
    field :front_tire_id, :id
    field :rear_tire_id, :id

    timestamps()
  end

  @doc false
  def changeset(car, attrs) do
    car
    |> cast(attrs, [:name])
    |> validate_required([:name])
  end
end
