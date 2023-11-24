import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="booking-calculus"
export default class extends Controller {
  static targets = ['price', 'daysRented', 'orderTotal', 'startDate', 'endDate']

  connect() {
    // console.log("Hello from booking_calculus_controller.js")
    // console.log(this.priceTarget)
    // console.log(this.daysRentedTarget)
    // console.log(this.orderTotalTarget)
    // console.log(this.startDateTarget)
    // console.log(this.endDateTarget)

  }

  calculate(){
    // Calculating Days
    const startDate = new Date(this.startDateTarget.value)
    const endDate = new Date(this.endDateTarget.value)
    console.log(endDate)
    const differenceInMilliseconds = endDate - startDate
    const differenceInDays = differenceInMilliseconds / (1000 * 60 * 60 * 24)

    //Calculating Booking Price
    const pricePerDay = parseFloat(this.priceTarget.textContent)
    // console.log(pricePerDay)

    const bookingPrice = pricePerDay * differenceInDays
    // console.log(bookingPrice)
    // console.log(typeof(bookingPrice))


    //Inserting into the Dom
    if (!isNaN(bookingPrice)) {
      this.daysRentedTarget.textContent = differenceInDays
      this.orderTotalTarget.textContent = bookingPrice
    }
  }
}
