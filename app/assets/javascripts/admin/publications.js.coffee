# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$(document).ready ->

  # Display an image thumb when user choose an image as a publication thumbnail
  $('#publication_thumbnail').change (data) ->
    file = this.files[0]
    $thumbnailImage = $('#publication_thumbnail_image')
    if file.type.match('image.*')
      reader = new FileReader() 
      reader.onload = ->
        $thumbnailImage.attr 'src', reader.result
      reader.readAsDataURL(file)

  # Hide the publication thumbnail image when user check the `delete thumbnail` box
  $('#publication_delete_thumbnail').change ->
    $thumbnailImage = $('#publication_thumbnail_image')
    $thumbnailImage.toggle()