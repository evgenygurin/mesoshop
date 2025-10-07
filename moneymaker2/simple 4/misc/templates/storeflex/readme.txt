В админке модуля в разделе джаваскриптов вставьте скрипт:


var o1 = $('.simple-content select'),
o2 = $('.simple-content .radio'),
o3 = $('.simple-content label.radio-inline'),
o4 = $('.simple-content .checkbox'),
o5 = $('.simple-content input[name=\'agree\'][type=\'checkbox\']'),
o6 = $('.simple-content .checkbox-inline'),
o7 = $('.simple-content textarea');


if (o2.length) {
  var o2Input;
  var o2ArrVal = [];
  o2.each(function (i) {
    o2Input = $(this).find('input[type="radio"]');
    if ($.inArray(o2Input.attr('name') + o2Input.attr('value'), o2ArrVal) == -1) {
      o2Input.attr('id', o2Input.attr('name') + o2Input.attr('value'))
      o2Input.insertBefore($(this).find('label').attr('for', o2Input.attr('name') + o2Input.attr('value')));
      o2ArrVal.push(o2Input.attr('name') + o2Input.attr('value'))
    } else {
      o2Input.attr('id', o2Input.attr('name') + o2Input.attr('value') + i.toString());
      o2Input.insertBefore($(this).find('label').attr('for', o2Input.attr('name') + o2Input.attr('value') + i.toString()));
      o2ArrVal.push(o2Input.attr('name') + o2Input.attr('value') + i.toString());
    }
  });
}

if (o1.length) {
  o1.removeClass('form-control');
  o1.selectbox({
    effect: "slide",
    speed: 400
  });
}

if (o3.length) {
  var o3Input;
  o3.each(function () {
    o3Input = $(this).find('input[type="radio"]');
    o3Input.attr('id', o3Input.attr('name') + o3Input.attr('value'))
    o3Input.insertBefore($(this).attr('for', o3Input.attr('name') + o3Input.attr('value')));
  });
}

if (o4.length) {
  var o4Input;
  var o4ArrVal = [];
  o4.each(function (i) {
    o4Input = $(this).find('input[type="checkbox"]');
    if ($.inArray(o4Input.attr('name') + o4Input.attr('value'), o4ArrVal) == -1) {
      o4Input.attr('id', o4Input.attr('name') + o4Input.attr('value'))
      o4Input.insertBefore($(this).find('label').attr('for', o4Input.attr('name') + o4Input.attr('value')));
      o4ArrVal.push(o4Input.attr('name') + o4Input.attr('value'))
    } else {
      o4Input.attr('id', o4Input.attr('name') + o4Input.attr('value') + o4Input.attr('value') + i.toString())
      o4Input.insertBefore($(this).find('label').attr('for', o4Input.attr('name') + o4Input.attr('value') + o4Input.attr('value') + i.toString()));
      o4ArrVal.push(o4Input.attr('name') + o4Input.attr('value') + i.toString());
    }
  });
}

if (o5.length) {
  o5.attr('id', o5.attr('name') + o5.attr('value'));
  o5.parent().append('<label for="' + o5.attr('name') + o5.attr('value') + '"></label>');
  $('label[for="' + o5.attr('name') + o5.attr('value') + '"]').insertAfter(o5);
}

if (o6.length) {
  var o6Input;
  o6.each(function (i) {
    o6Input = $(this).find('input[type="checkbox"]');
    o6Input.attr('id', o6Input.attr('name') + o6Input.attr('value'))
    o6Input.insertBefore($(this).attr('for', o6Input.attr('name') + o6Input.attr('value')));
  });
}

if (o7.length) {
  o7.removeClass('form-control');
}