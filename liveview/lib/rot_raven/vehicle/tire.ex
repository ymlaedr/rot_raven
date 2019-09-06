defmodule RotRaven.Vehicle.Tire do
  use Ecto.Schema
  import Ecto.Changeset

  schema "vehicle_tires" do
    field :flatness, :integer
    field :is_radial, :boolean, default: false
    field :wheel_inch, :integer
    field :width, :integer
    field :road_index_id, :id
    field :speed_range_id, :id

    timestamps()
  end

  @doc false
  def changeset(tire, attrs) do
    tire
    |> cast(attrs, [:is_radial, :width, :flatness, :wheel_inch])
    |> validate_required([:is_radial, :width, :flatness, :wheel_inch])
  end
end
