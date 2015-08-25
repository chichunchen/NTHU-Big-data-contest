storeToggleState = (advSearch="true") ->
  localStorage.setItem('advSearch', advSearch.is(":visible"));
  # console.log(localStorage.getItem('advSearch'))

$ ->
  $('.adv-btn').click ->
    advSearch = $('.adv-search');
    advSearch.toggleClass('hidden');
    if advSearch.hasClass('hidden')
      $(@).text("展開進階選項")
    else
      $(@).text("收起進階選項")

    storeToggleState(advSearch)


  if localStorage.getItem('advSearch') == "true"
    # console.log "default true"
    advSearch = $ ".adv-search"
    advSearch.toggleClass "hidden"
