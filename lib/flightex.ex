defmodule Flightex do
  alias Flightex.Users.Agent, as: UserAgent
  alias Flightex.Bookings.Agent, as: BookingAgent
  alias Flightex.Bookings.CreateOrUpdate, as: BookingCreateOrUpdate

  def start_agents() do
    UserAgent.start_link(%{})
    BookingAgent.start_link(%{})
  end

  def create_or_update_booking(params) do
    BookingCreateOrUpdate.call(params)
  end
end
