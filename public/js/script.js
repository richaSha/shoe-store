$(document).ready(function(){
  $('.wrapper').css('min-height', $(window).height() - $('.jumbotron').height() - $('.breadcrumb').height());
  $('.delete').click(function(e){
    e.preventDefault()
    $('.edit_icon').addClass('hide')
    $('.delete_icon').removeClass('hide')
  })
  $('.edit_button').click(function(e){
    e.preventDefault()
    $('.edit_icon').removeClass('hide')
    $('.delete_icon').addClass('hide')
  })
  $('.add_button').click(function(e){
    $('.delete_icon').addClass('hide')
    $('.edit_icon').addClass('hide')
  })
  $('.edit_icon').click(function(){
    $(this).parent().addClass('hide');
    $(this).parent().siblings("form").removeClass('hide')
  })
})
