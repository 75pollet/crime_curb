defmodule CrimeCurbWeb.PageLive do
  use CrimeCurbWeb, :live_view
  alias CrimeCurb.Report
  @impl true
  def mount(_params, _session, socket) do
    {:ok, assign(socket, changeset: Report.changeset(%Report{}, %{}))}
  end
end
