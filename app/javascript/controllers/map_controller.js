// app/javascript/controllers/map_controller.js
import { Controller } from "@hotwired/stimulus"
import mapboxgl from 'mapbox-gl' // Don't forget this!
import MapboxGeocoder from "@mapbox/mapbox-gl-geocoder"

export default class extends Controller {
  static values = {
    apiKey: String,
    markers: Array
  }

  connect() {
    mapboxgl.accessToken = this.apiKeyValue

    this.map = new mapboxgl.Map({
      container: this.element,
      style: "mapbox://styles/mapbox/streets-v10"
    })
  }
    this.#addMarkersToMap()

}

#addMarkersToMap() {
  this.markersValue.forEach((marker) => {
    const popup = new mapboxgl.Popup().setHTML(marker.info_window_html)

    // Create a HTML element for your custom marker
    const customMarker = document.createElement("div")
    customMarker.innerHTML = marker.marker_html

    // Pass the element as an argument to the new marker
    new mapboxgl.Marker(customMarker)
      .setLngLat([marker.lng, marker.lat])
      .setPopup(popup)
      .addTo(this.map)
  })
}