$('[contenteditable]')
  .live 'focus', ->
    $this = $(this)
    $this.data 'before', $this.html()
    return $this
  .live 'blur keyup paste', ->
    $this = $(this)
    if $this.data('before') isnt $this.html()
      $this.data 'before', $this.html()
      $this.trigger('change')
      $(".save_button").fadeIn(1000)

$('.save_button').click ->
  c = $("[contenteditable]")
  data1 = {}
  c.each -> data1[$(this).attr('data-tag')] = $(this).text()
  $.post(
    "/contenteditable/content_update"
    {title: 'Save_data', data: data1}
    -> $(".save_button").fadeOut(1500)
  )