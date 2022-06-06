
import { Controller } from "@hotwired/stimulus"
import "jquery-bar-rating";
import $ from 'jquery';

export default class extends Controller {

  connect() {
    $('#review_rating').barrating({
      theme: 'css-stars'
    });
  }
}
