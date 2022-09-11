class Gate
  STATIONS = [:umeda, :juso, :mikuni]
  FARES = [160, 190]

  def initialize(station_name)
    @station_name = station_name
  end

  def enter(ticket)
    ticket.stamp(@station_name)
  end

  def exit(ticket)
    calc_fare(ticket) <= ticket.fare
  end

  private

  def calc_fare(ticket)
    from = STATIONS.index(ticket.stamped_at)
    to = STATIONS.index(@station_name)
    distance = to - from
    FARES[distance - 1]
  end

end
