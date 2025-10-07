# Astro Ecommerce Components для OpenCart

Эта папка содержит адаптированные компоненты из Astro Ecommerce template для OpenCart 4.x в формате Twig.

## 📦 Структура компонентов

### Product Components (`product/components/`)

#### `product_badge.twig`
**Описание**: Отображает цветные бейджи для товаров
**Параметры**:
- `colors` (array) - массив цветов для бейджей

**Пример использования**:
```twig
{% include 'product/components/product_badge.twig' with {
  'colors': ['primary', 'success', 'danger']
} %}
```

---

#### `product_rating.twig`
**Описание**: Рейтинг товара со звездами SVG
**Параметры**:
- `rating` (float) - рейтинг товара (0-5)
- `reviews` (int) - количество отзывов

**Пример использования**:
```twig
{% include 'product/components/product_rating.twig' with {
  'rating': 4.5,
  'reviews': 128
} %}
```

---

#### `card_product.twig`
**Описание**: Карточка товара для списка/сетки
**Параметры**:
- `href` (string) - ссылка на товар
- `thumb` (string) - путь к изображению
- `name` (string) - название товара
- `description` (string, optional) - описание
- `price` (string) - цена товара
- `special` (string, optional) - цена со скидкой
- `colors` (array, optional) - массив цветов
- `position` (string, optional) - выравнивание текста (start/center/end)

**Пример использования**:
```twig
{% include 'product/components/card_product.twig' with {
  'href': product.href,
  'thumb': product.thumb,
  'name': product.name,
  'description': product.description,
  'price': product.price,
  'special': product.special,
  'position': 'start'
} %}
```

---

#### `product_gallery.twig`
**Описание**: Галерея изображений товара с thumbnails
**Параметры**:
- `thumb` (string) - главное изображение
- `popup` (string) - большое изображение для увеличения
- `images` (array) - массив дополнительных изображений
- `heading_title` (string) - название товара

**Пример использования**:
```twig
{% include 'product/components/product_gallery.twig' with {
  'thumb': thumb,
  'popup': popup,
  'images': images,
  'heading_title': heading_title
} %}
```

---

#### `product_features.twig`
**Описание**: Список характеристик товара с иконками
**Параметры**:
- `features` (object) - объект характеристик (key: value)

**Пример использования**:
```twig
{% include 'product/components/product_features.twig' with {
  'features': {
    'Material': 'Premium Cotton',
    'Care': 'Machine washable',
    'Origin': 'Made in USA'
  }
} %}
```

---

### Cart Components (`cart/components/`)

#### `cart_item.twig`
**Описание**: Элемент корзины покупок
**Параметры**:
- `key` (string) - уникальный ключ товара в корзине
- `thumb` (string) - изображение товара
- `name` (string) - название товара
- `option` (array, optional) - опции товара
- `quantity` (int) - количество
- `stock` (bool) - наличие на складе
- `total` (string) - итоговая стоимость

**Пример использования**:
```twig
{% include 'cart/components/cart_item.twig' with {
  'key': product.cart_id,
  'thumb': product.thumb,
  'name': product.name,
  'option': product.option,
  'quantity': product.quantity,
  'stock': product.stock,
  'total': product.total
} %}
```

---

#### `order_summary.twig`
**Описание**: Итоговая сводка заказа
**Параметры**:
- `sub_total` (string) - промежуточная сумма
- `totals` (array) - массив дополнительных сумм (доставка, налоги)
- `total` (string) - общая сумма
- `checkout` (string, optional) - ссылка на оформление заказа
- `checkout_button` (bool, optional) - показать кнопку оформления
- `textColor` (string, optional) - цвет текста (dark/white)

**Пример использования**:
```twig
{% include 'cart/components/order_summary.twig' with {
  'sub_total': sub_total,
  'totals': totals,
  'total': total,
  'checkout': checkout,
  'checkout_button': true,
  'textColor': 'dark'
} %}
```

---

### Checkout Components (`checkout/components/`)

#### `checkout_item.twig`
**Описание**: Элемент товара в чекауте
**Параметры**:
- `thumb` (string) - изображение товара
- `name` (string) - название товара
- `option` (array, optional) - опции товара
- `quantity` (int) - количество
- `total` (string) - стоимость

**Пример использования**:
```twig
{% include 'checkout/components/checkout_item.twig' with {
  'thumb': product.thumb,
  'name': product.name,
  'option': product.option,
  'quantity': product.quantity,
  'total': product.total
} %}
```

---

#### `shipping_info.twig`
**Описание**: Форма информации о доставке
**Параметры**:
- Все параметры адреса доставки из контроллера

**Пример использования**:
```twig
{% include 'checkout/components/shipping_info.twig' %}
```

---

#### `payment_details.twig`
**Описание**: Форма платежных данных (карта)
**Параметры**: Нет

**Особенности**:
- Автоматическое форматирование номера карты
- Форматирование даты истечения (MM / YY)

**Пример использования**:
```twig
{% include 'checkout/components/payment_details.twig' %}
```

---

## 🎨 Стилизация

Все компоненты используют классы Bootstrap 5.3 и кастомные классы из Astro Ecommerce:

### Основные классы:
- `.card-product` - карточка товара
- `.height-350` - фиксированная высота изображения
- `.border-radius-lg` - большие скругленные углы
- `.shadow-xs` - небольшая тень
- `.font-weight-bold` - жирный шрифт
- `.text-body` - цвет текста body
- `.w-rem` - ширина в rem единицах

### CSS файлы:
Основной файл стилей: `catalog/view/stylesheet/astro-ecommerce.css`

---

## 🔧 Интеграция в существующие шаблоны

### Пример замены thumb.twig:
```twig
{# Старая версия #}
<div class="product-thumb">
  <div class="image">...</div>
  <div class="content">...</div>
</div>

{# Новая версия с Astro компонентами #}
{% include 'product/components/card_product.twig' with {
  'href': href,
  'thumb': thumb,
  'name': name,
  'price': price,
  'special': special
} %}
```

### Пример интеграции в product.twig:
```twig
{# В разделе галереи #}
{% include 'product/components/product_gallery.twig' with {
  'thumb': thumb,
  'popup': popup,
  'images': images,
  'heading_title': heading_title
} %}

{# В разделе рейтинга #}
{% if review_status and rating %}
  {% include 'product/components/product_rating.twig' with {
    'rating': rating,
    'reviews': reviews
  } %}
{% endif %}
```

---

## 📝 Созданные шаблоны

### Готовые к использованию шаблоны:
1. `product/thumb.twig.new` - обновленная карточка товара
2. `product/product.twig.new` - обновленная страница товара
3. `checkout/shopping_cart.twig` - страница корзины

### Как использовать:
```bash
# Backup оригиналов
cp upload/catalog/view/template/product/thumb.twig upload/catalog/view/template/product/thumb.twig.backup

# Применить новые шаблоны
mv upload/catalog/view/template/product/thumb.twig.new upload/catalog/view/template/product/thumb.twig
mv upload/catalog/view/template/product/product.twig.new upload/catalog/view/template/product/product.twig
```

---

## 🚀 Следующие шаги

1. ✅ Создать базовые компоненты (product, cart, checkout)
2. ⏳ Добавить review компоненты
3. ⏳ Добавить incentives компоненты
4. ⏳ Создать category page с filters
5. ⏳ Адаптировать admin шаблоны

---

## 💡 Советы по использованию

### Performance:
- Компоненты используют `include` вместо `extends` для лучшей производительности
- SVG иконки встроены инлайн для быстрой загрузки

### Кастомизация:
- Все классы Bootstrap можно переопределить в `catalog/view/stylesheet/astro-ecommerce.css`
- Компоненты полностью модульные - можно использовать отдельно

### Совместимость:
- OpenCart 4.0+
- PHP 8.0+
- Bootstrap 5.3+

---

**Автор**: MesoShop Development Team
**Версия**: 1.0.0
**Дата**: 2025-10-07
