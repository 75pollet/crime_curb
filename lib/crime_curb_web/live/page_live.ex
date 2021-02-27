defmodule CrimeCurbWeb.PageLive do
  use CrimeCurbWeb, :live_view
  alias CrimeCurb.Report
  @impl true
  def mount(_params, _session, socket) do
    {:ok, assign(socket, crime_types: crime_types(), changeset: Report.changeset(%Report{}, %{}))}
  end

  def crime_types do
    ["Cyber crime", "Domestic abuse", "Fraud", "Hate crime", "Robbery", "Sexual Harassment","Terrosism"]
  end
end
