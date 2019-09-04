defmodule RotRaven.Repo.Migrations.CreateVehicleTransmissionClutchTypes do
  use Ecto.Migration

  def change do
    create table(:vehicle_transmission_clutch_types) do
      add :name, :string, comment: "形式名称(乾式単板、湿式多版など)"

      timestamps()
    end

  end
end
