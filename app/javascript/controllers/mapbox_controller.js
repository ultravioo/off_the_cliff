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
    customMarker.style.backgroundImage = `url('${marker.image_url}')`
    customMarker.style.backgroundSize = "contain"
    customMarker.style.width = "25px"
    customMarker.style.height = "25px"

      new mapboxgl.Marker(customMarker)
        .setLngLat([pin.lng, pin.lat])
        .setPopup(popup)
        .addTo(this.map)
    });
  }
}
