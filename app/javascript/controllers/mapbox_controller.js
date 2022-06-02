import { Controller } from "@hotwired/stimulus"
import mapboxgl from "mapbox-gl"

export default class extends Controller {
  static values = {
    apiKey: String,
    points: Array,
    pins: Array
  }

  connect() {
    mapboxgl.accessToken = this.apiKeyValue

    this.map = new mapboxgl.Map({
      container: this.element,
      style: "mapbox://styles/violettedunoyer/cl3ub87tf002k15qg9rsnfo6h",
      center: this.pointsValue[0],
      zoom: 16
    })

    this.map.on('load', () => {
      this.map.addSource('route', {
        'type': 'geojson',
        'data': {
          'type': 'Feature',
          'properties': {},
          'geometry': {
            'type': 'LineString',
            'coordinates': this.pointsValue
          }
        }
      });

      this.map.addLayer({
        'id': 'route',
        'type': 'line',
        'source': 'route',
        'layout': {
          'line-join': 'round',
          'line-cap': 'round'
        },
        'paint': {
          'line-color': '#43816C',
          'line-width': 8
        }
      });
    });

    this.addPinsToMap()
  }

  // fitMapToMarkers() {
  //   const bounds = new mapboxgl.LngLatBounds()
  //   this.markersValue.forEach(marker => bounds.extend([marker.lng, marker.lat]))
  //   this.map.fitBounds(bounds, { padding: 70, maxZoom: 15, duration: 0 })
  // }

  addPinsToMap() {
    this.pinsValue.forEach((pin) => {
      const popup = new mapboxgl.Popup().setHTML(pin.info_window)
      const customMarker = document.createElement("div")
      customMarker.className = "marker"

      if (pin.kind == "Roadblock")
      customMarker.style.backgroundImage = `url('${"https://res.cloudinary.com/rubberd/image/upload/v1654159288/offthecliff/pin-4_pffwh1.png"}`
      if (pin.kind == "Picture Spot")
      customMarker.style.backgroundImage = `url('${"https://res.cloudinary.com/rubberd/image/upload/v1654159256/offthecliff/pin-3_zzjqsd.png"}`
      if (pin.kind == "Camping Site")
      customMarker.style.backgroundImage = `url('${"https://res.cloudinary.com/rubberd/image/upload/v1654159204/offthecliff/pin-2_fo5zgz.png"}`
      if (pin.kind == "Warning")
      customMarker.style.backgroundImage = `url('${"https://res.cloudinary.com/rubberd/image/upload/v1654159184/offthecliff/pin_z5jrn6.png"}`

      customMarker.style.backgroundSize = "contain"
      customMarker.style.width = "30px"
      customMarker.style.height = "30px"

      new mapboxgl.Marker(customMarker)
        .setLngLat([pin.lng, pin.lat])
        .setPopup(popup)
        .addTo(this.map)
    });
  }
}
