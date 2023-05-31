program MainProgram
  use DistanceCalculator
  implicit none

  real(kind=8) :: lat1, lon1, lat2, lon2, distance
  character(len=20) :: unit

  write(*,*) "Enter the latitude of the first point: "
  read(*,*) lat1
  write(*,*) "Enter the longitude of the first point: "
  read(*,*) lon1
  write(*,*) "Enter the latitude of the second point: "
  read(*,*) lat2
  write(*,*) "Enter the longitude of the second point: "
  read(*,*) lon2

  distance = calculate_distance(lat1, lon1, lat2, lon2)

  write(*,*) "Enter the unit to convert to (km, miles, nm): "
  read(*,*) unit
  distance = convert_distance(distance, unit)

  write(*,*) "The distance between the two points is approximately ", distance, " ", trim(unit), "."
end program MainProgram
