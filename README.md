# forCalcGeodist

Compute the distance between two geographic points (fortran 90 code)

# Version

![](https://img.shields.io/badge/Version%3A-1.0-success)

# Release date

![](https://img.shields.io/badge/Release%20date-May%2C%2030%2C%202023-9cf)

# License

![](https://img.shields.io/github/license/Ileriayo/markdown-badges?style=for-the-badge)

# Programming language

<img src="https://cdn.icon-icons.com/icons2/2107/PNG/96/file_type_fortran_icon_130596.png" width="50"/>

# OS

<img src="https://img.icons8.com/?size=512&id=17842&format=png" width="50"/> <img src="https://img.icons8.com/?size=512&id=122959&format=png" width="50"/> <img src="https://img.icons8.com/?size=512&id=108792&format=png" width="50"/>

# How to compile this code

```bash
gfortran -c distancecalculator.f90

gfortran -c distance_main.f90

gfortran distancecalculator.o distance_main.o -o distance
```

# How to run this code

```bash
./distance
```

# Function list

1. **calculate_distance** Computes the distance between two points on the Earth's surface using the Haversine formula.

> Arguments:
> 
>> `lat1`: Latitude of the first point in degrees
>> 
>> `lon1`: Longitude of the first point in degrees
>> 
>> `lat2`: Latitude of the second point in degrees
>> 
>> `lon2`: Longitude of the second point in degrees
>
> Returns: `distance` Distance between the two points in degrees

2. **convert_distance** Converts the distance to the specified unit

> Arguments:
>
>> `distance`: Distance to convert
>> 
>> `unit`: Unit of measurement to convert to ("km", "miles", or "nm")
>
> Returns: Converted distance

# Usage example

```fortran
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
```
