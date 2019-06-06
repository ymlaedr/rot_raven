defmodule RotRaven.Repo.Migrations.CreateVehicleGpsRecords do
  use Ecto.Migration

  def change do
    create table(:vehicle_gps_records) do
      add :timestamp, :utc_datetime
      add :status_message, :string
      add :accuracy, :decimal
      add :altitude, :integer
      add :altitude_accuracy, :decimal
      add :heading, :decimal
      add :latitude, :decimal
      add :longitude, :decimal
      add :speed, :decimal
      add :speed_measurement, :string

      timestamps()
    end

  end
end
