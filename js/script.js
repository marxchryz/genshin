const showCards = (cards, filter = '', search = '') => {
  cards = filter
    ? cards.filter((card) => card.filters.includes(filter))
    : cards;
  console.log(search);
  cards = search
    ? cards.filter((card) => card.name.search(new RegExp(search, 'i')) > -1)
    : cards;
  $('#cards-area').html('');
  s = '';
  let i = 0;
  for (; i < cards.length; i++) {
    card = cards[i];
    if (i % 5 === 0) {
      s += '<div class="row">';
    }
    s += `          <div class="col">
 					  <div class="card mb-3 card-with-modal" data-toggle="modal" data-target="#card-modal" id="${card.name}"> <img src="${card.image}" class="card-img-top">
						  <div class="card-body text-yellow text-center py-1">
							  ${card.name}
						  </div>
					  </div>
					</div>`;
    if (i % 5 === 4) {
      s += '</div>';
    }
  }
  if (i % 5) {
    for (let j = 0; j < 5 - (i % 5); j++) {
      s += '<div class="col"></div>';
    }
    s += '</div>';
  }
  $('#cards-area').html(s);
};

$('.sub-menu img').on('click', function () {
  current = $('.sub-menu img').filter(
    (i, obj) => $(obj).css('opacity') == '1'
  )[0];
  if (this == current) {
    $(this).css('opacity', '0.3');
    showCards(all);
  } else {
    $('.sub-menu img').each(function (i, obj) {
      $(obj).css('opacity', 0.3);
    });
    $(this).css('opacity', 1);
    showCards(all, $(this).attr('id'));
  }
});

$('#character-search').on('change keyup paste', function () {
  search = $('#character-search').val();
  filter = $('.sub-menu img')
    .filter((i, obj) => $(obj).css('opacity') == '1')[0]
    ?.getAttribute('id');
  showCards(all, filter, search);
});

$(function () {
  $('.card-with-modal').on('click', function () {
    $('.modal-body').html(
      `<img class="popup-image" src="./images/popups/${this.id.toLowerCase()}-body.png">`
    );
    $('.modal-title').html(
      `<img class="popup-header" src="./images/popups/${this.id.toLowerCase()}-header.png">`
    );
  });
  $('.modal-title').on('click', function () {
    $('.modal').modal('hide');
  });
});
