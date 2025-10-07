Адаптация модуля "filterpro 2.0" под шаблон Moneymaker 2.2.0 (для Opencart 2.1)
Ссылка на модуль: https://opencartforum.com/files/file/459-filter-pro/

Файлы для фильтра:
1. mmr2.adaptation_filterpro_opencart21.ocmod.xml - изменения в контроллер фильтра, устанавливать ocmod-файл следует так же, как аналогичные файлы шаблона
2. filterpro_products.tpl Файл шаблона вывода товаров фильтра, необходимо поместить соответственно в каталог catalog\view\theme\moneymaker2\template\module\

Внимание! Для корректной работы блока сортировки/отображения (для вывода в категориях), необходимо внести изменения в файл фильтра catalog\view\javascript\filterpro.min.js (не забывайте, что при обновлении фильтра и перезаписи этого файла данные изменения будут утеряны):
1. Найти код:

return '.product-layout';

заменить его на:

//return '.product-layout';
//mmr2 adapt
return '.row + .row .product-layout';

2. Найти код:

    if($("#input-sort").exists()){
        $("#input-sort").get(0).onchange = null;
        $("#input-sort").change(function () {
            var d = $(this).val();
            var a = gUV(d, "sort");
            var b = gUV(d, "order");
            $("#filterpro_sort").val(a);
            $("#filterpro_order").val(b);
            iF()
        });
        
добавить ПОД него:

        /*mmr2 adapt*/
        $("#input-sort > li > a").click(function () {
            $("#input-sort > li").removeClass("active");
            $(this).parent().addClass("active");
            var d = $(this).attr('href');
            var a = gUV(d, "sort");
            var b = gUV(d, "order");
            $("#filterpro_sort").val(a);
            $("#filterpro_order").val(b);
            iF();
            return false;
        });
        
3. Найти код:

    if ($("#input-limit").exists()) {
        $("#input-limit").get(0).onchange = null;
        $("#input-limit").change(function () {
            $("#filterpro_limit").val(gUV($(this).val(), "limit"));
            iF()
        });
        
добавить ПОД него:

        /*mmr2 adapt*/
        $("#input-limit > li > a").click(function () {
            $("#input-limit > li").removeClass("active");
            $(this).parent().addClass("active");
            var d = $(this).attr('href');
            $(".limit-btn-group .dropdown-toggle span:not(.hidden-xs)").text(gUV( d , "limit"));
            $("#filterpro_limit").val(gUV( d , "limit"));
            iF();
            return false;
        });