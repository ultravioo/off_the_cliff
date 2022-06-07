import { Controller } from "@hotwired/stimulus"
import { auto } from "@popperjs/core"
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
      // style: "mapbox://styles/violettedunoyer/cl3ub87tf002k15qg9rsnfo6h",
      style: "mapbox://styles/violettedunoyer/cl432b1pu004014n03j2pqtch",
      center: this.pointsValue[0],
      zoom: 11,

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

      this.map.addControl(new mapboxgl.GeolocateControl({
        positionOptions: {
          enableHighAccuracy: true
        },
        trackUserLocation: true,
        showUserHeading: true
      }));
      const nav = new mapboxgl.NavigationControl({
        visualizePitch: true
      });
      this.map.addControl(nav, 'bottom-right');
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
      customMarker.style.backgroundImage = `url('${"https://res.cloudinary.com/rubberd/image/upload/v1654503337/offthecliff/Screenshot_2022-06-06_at_10.12.21-modified_qngs1r.png"}`
      if (pin.kind == "Picture Spot")
      customMarker.style.backgroundImage = `url('${"https://res.cloudinary.com/rubberd/image/upload/v1654503337/offthecliff/Screenshot_2022-06-06_at_10.13.15-modified_r7wcuz.png"}`
      if (pin.kind == "Camping Site")
      customMarker.style.backgroundImage = `url('${"https://res.cloudinary.com/rubberd/image/upload/v1654503337/offthecliff/Screenshot_2022-06-06_at_10.11.09-modified_e6uwbv.png"}`
      if (pin.kind == "Warning")
      customMarker.style.backgroundImage = `url('${"https://res.cloudinary.com/rubberd/image/upload/v1654503337/offthecliff/Screenshot_2022-06-06_at_10.12.21-modified_qngs1r.png"}`



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
