Адаптация для версии шаблона 2.6.X
Opencart.pro 2.1
автор оригинальной адаптации kvr66
залить в корень содержимое папки upload
вместо родных xml файлов установить xml файлы из этой сборки
родные xml файлы УСТАНАВЛИВАТЬ НЕ НАДО!
В ДАННУЮ СБОРКУ ВКЛЮЧЕН АДАПТИВНЫЙ МОД ЖИВОЙ ЦЕНЫ

НАСТРОЙКА ВЕРХНЕГО МЕНЮ
если вы хотите что бы работало верхнее меню из шаблона, 
нужно зайти в админке в раздел меню и выбрать пункт НЕТ  в Использовать в качестве основного меню? сохранить.
при использование верхнего меню не из шаблона, а из сборки про в файле mmr2.part1.ocmod.xml нужно закомментировать строки - поставить перед ними //


$moneymaker2_categories_sort_order[$key] = $value['sort_order'];

array_multisort($moneymaker2_categories_sort_order, SORT_ASC, $data['header_categories']);

$moneymaker2_categories_sort_order[$key] = $value['sort_order'];

array_multisort($moneymaker2_categories_sort_order, SORT_ASC, $data['categories']);

$moneymaker2_categories_sort_order[$key2] = $value2['sort_order'];


иначе будет давать ошибки (по умолчанию они НЕ закомментированны)

