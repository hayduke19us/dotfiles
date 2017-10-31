start_gar () {
  local -a mux_applications

  mux_applications=(
    'mux getaroom'
    'mux store_front'
    'mux supply_chain'
    'mux forklift'
    'mux pricesheet'
    'mux clientele'
  )

  echo "Starting all of Getaroom's applications"
  tab $mux_applications[@]
}

start_lgar () {
  local -a mux_applications

  mux_applications=(
    'mux getaroom'
    'mux store_front'
    'mux supply_chain'
    'mux pricesheet'
    'mux clientele'
  )

  echo "Starting all of Getaroom's applications"
  tab $mux_applications[@]
}
