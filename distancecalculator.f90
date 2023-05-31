module DistanceCalculator

  implicit none

  private

  public :: calculate_distance, convert_distance

  contains

    function calculate_distance(lat1, lon1, lat2, lon2) result(distance)
      real(kind=8), intent(in) :: lat1, lon1, lat2, lon2
      real(kind=8) :: distance
      real(kind=8) :: lat1_rad, lon1_rad, lat2_rad, lon2_rad
      real(kind=8) :: dlat, dlon, a

      lat1_rad = lat1 * acos(-1.0) / 180.0
      lon1_rad = lon1 * acos(-1.0) / 180.0
      lat2_rad = lat2 * acos(-1.0) / 180.0
      lon2_rad = lon2 * acos(-1.0) / 180.0

      dlat = lat2 - lat1
      dlon = lon2 - lon1

      a = sin(dlat / 2.0)**2 + cos(lat1_rad) * cos(lat2_rad) * sin(dlon / 2.0)**2
      distance = 2.0 * atan2(sqrt(a), sqrt(1.0 - a))
    end function calculate_distance

    function convert_distance(distance, unit) result(converted_distance)
      real(kind=8), intent(in) :: distance
      character(len=*), intent(in) :: unit
      real(kind=8) :: converted_distance

      if (unit == "km") then
        converted_distance = distance * 111.12
      else if (unit == "miles") then
        converted_distance = distance * 0.621371
      else if (unit == "nm") then
        converted_distance = distance * 0.539957
      else
        stop "Invalid unit. Supported units are 'km', 'miles', and 'nm'."
      end if
    end function convert_distance

end module DistanceCalculator
