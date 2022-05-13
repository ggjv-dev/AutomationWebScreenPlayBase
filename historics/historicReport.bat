@echo off
Setlocal
set first=1
del reporte.csv
>new.csv.tmp (
  for %%F in (*.csv) do (
    if defined first (
      type "%%F"
      set "first="
    ) else more +1 "%%F"
  )
)
Ren new.csv.tmp reporte.csv

