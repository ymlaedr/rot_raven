defmodule RotRaven.Repo.Migrations.CreateVehicleTransmissionTypes do
  use Ecto.Migration

  def change do
    create table(:vehicle_transmission_types) do
      add :name, :string, comment: "形式名称(MT,AT,DCTなど)"

      timestamps()
    end

  end
end
