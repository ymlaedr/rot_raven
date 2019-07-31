defmodule RotRaven.Vehicle.Tire do
  use Ecto.Schema
  import Ecto.Changeset

  schema "vehicle_tires" do
    field :flatness, :integer
    field :is_radial, :boolean, default: false
    field :width, :integer

    timestamps()
  end

  @doc false
  def changeset(tire, attrs) do
    tire
    |> cast(attrs, [:is_radial, :width, :flatness])
    |> validate_required([:is_radial, :width, :flatness])
  end
end
