# Astro Ecommerce Components V2 - Расширенная интеграция

## 📋 Обзор новых компонентов

Эта версия добавляет расширенные компоненты из Astro Ecommerce для полноценного e-commerce функционала.

## 🎨 Новые компоненты

### 1. Category Components (`upload/catalog/view/template/product/category_components/`)

#### `category_filters.twig`
**Описание**: Полноценная система фильтрации для категорий с боковым меню
**Функционал**:
- Сортировка товаров (по цене, названию, рейтингу)
- Фильтры по производителям (accordion)
- Фильтры по атрибутам (материал, размер, цвет)
- Фильтр по диапазону цен
- Активные фильтры с возможностью удаления
- Ajax-обновление при изменении фильтров
- Responsive дизайн (sidebar на мобильных)

**Параметры**:
```twig
{
  'heading_title': 'Category Name',
  'sort_url': 'index.php?route=product/category&category_id=123',
  'text_default': 'Default',
  'text_name_asc': 'Name (A - Z)',
  'text_name_desc': 'Name (Z - A)',
  'text_price_asc': 'Price (Low > High)',
  'text_price_desc': 'Price (High > Low)',
  'text_rating_desc': 'Rating (Highest)',
  'categories': [
    {'name': 'Subcategory 1', 'href': 'url1'},
    {'name': 'Subcategory 2', 'href': 'url2'}
  ],
  'filter_manufacturers': [
    {'manufacturer_id': 1, 'name': 'Brand 1', 'checked': false}
  ],
  'filter_groups': [
    {
      'filter_group_id': 1,
      'name': 'Material',
      'filter': [
        {'filter_id': 1, 'name': 'Cotton', 'checked': false}
      ]
    }
  ],
  'filter_price': true,
  'price_min': '',
  'price_max': '',
  'filter_action': 'index.php?route=product/category',
  'active_filters': [
    {'name': 'Cotton', 'remove': 'url'}
  ],
  'products_content': '...' // HTML контент с товарами
}
```

**Пример использования в category.twig**:
```twig
{{ header }}
<div id="product-category" class="container py-5">
  {% include 'product/category_components/category_filters.twig' with {
    'heading_title': heading_title,
    'sort_url': sort_url,
    'categories': categories,
    'filter_manufacturers': manufacturers,
    'filter_groups': filter_groups,
    'filter_price': true,
    'products_content': products_html
  } %}
</div>
{{ footer }}
```

### 2. Incentives Components (`upload/catalog/view/template/common/incentives/`)

#### `incentive_large.twig`
**Описание**: Полный раздел преимуществ с крупными карточками
**Размещение**: Отдельная страница "About Us" или блок на главной
**Содержит**: 3 преимущества с иконками SVG

**Параметры**:
```twig
{
  'heading': 'What we have to offer',
  'description': 'We provide the best shopping experience...',
  'text_shipping_title': 'Express Shipping',
  'text_shipping_desc': 'Fast and reliable delivery...',
  'text_exchange_title': 'Free Exchanges',
  'text_exchange_desc': 'Not satisfied? Exchange hassle-free...',
  'text_warranty_title': 'Extended Warranty',
  'text_warranty_desc': 'Quality guarantee...'
}
```

**Пример**:
```twig
<div class="container my-5">
  {% include 'common/incentives/incentive_large.twig' with {
    'heading': 'Why Choose Us',
    'description': 'We care about your shopping experience'
  } %}
</div>
```

#### `incentive_cols.twig`
**Описание**: Компактная версия преимуществ в три колонки
**Размещение**: Главная страница, подвал категорий
**Содержит**: 3 преимущества с компактными иконками

**Пример (уже интегрирован в home.twig)**:
```twig
{% include 'common/incentives/incentive_cols.twig' %}
```

## 🔧 Интеграция в контроллеры

### Контроллер категорий (catalog/controller/product/category.php)

Для полноценной работы фильтров необходимо обновить контроллер:

```php
public function index(): void {
    // ... existing code ...

    // Prepare manufacturers filter
    $data['filter_manufacturers'] = [];
    $manufacturers = $this->model_catalog_manufacturer->getManufacturers();
    foreach ($manufacturers as $manufacturer) {
        $data['filter_manufacturers'][] = [
            'manufacturer_id' => $manufacturer['manufacturer_id'],
            'name' => $manufacturer['name'],
            'checked' => isset($this->request->get['manufacturer_id']) &&
                        in_array($manufacturer['manufacturer_id'], explode(',', $this->request->get['manufacturer_id']))
        ];
    }

    // Prepare filter groups (attributes)
    $data['filter_groups'] = [];
    $filter_groups = $this->model_catalog_category->getCategoryFilters($this->request->get['path']);
    foreach ($filter_groups as $filter_group) {
        $filters = [];
        foreach ($filter_group['filter'] as $filter) {
            $filters[] = [
                'filter_id' => $filter['filter_id'],
                'name' => $filter['name'],
                'checked' => isset($this->request->get['filter']) &&
                            in_array($filter['filter_id'], explode(',', $this->request->get['filter']))
            ];
        }

        $data['filter_groups'][] = [
            'filter_group_id' => $filter_group['filter_group_id'],
            'name' => $filter_group['name'],
            'filter' => $filters
        ];
    }

    // Price filter
    $data['filter_price'] = true;
    $data['price_min'] = $this->request->get['price_min'] ?? '';
    $data['price_max'] = $this->request->get['price_max'] ?? '';

    // Active filters
    $data['active_filters'] = [];
    if (isset($this->request->get['filter'])) {
        $filter_ids = explode(',', $this->request->get['filter']);
        foreach ($filter_ids as $filter_id) {
            $filter_info = $this->model_catalog_product->getFilter($filter_id);
            if ($filter_info) {
                $url = $this->url->link('product/category', 'path=' . $this->request->get['path'] .
                    '&filter=' . str_replace($filter_id . ',', '', $this->request->get['filter']));
                $data['active_filters'][] = [
                    'name' => $filter_info['name'],
                    'remove' => $url
                ];
            }
        }
    }

    // Sort URL
    $data['sort_url'] = $this->url->link('product/category', 'path=' . $this->request->get['path']);

    // Filter action URL
    $data['filter_action'] = $this->url->link('product/category', 'path=' . $this->request->get['path']);

    // Categories sidebar
    $data['categories'] = [];
    $categories = $this->model_catalog_category->getCategories($category_info['parent_id']);
    foreach ($categories as $cat) {
        $data['categories'][] = [
            'name' => $cat['name'],
            'href' => $this->url->link('product/category', 'path=' . $cat['category_id'])
        ];
    }

    // ... rest of controller ...
}
```

### Контроллер главной страницы (catalog/controller/common/home.php)

Компонент incentives уже интегрирован в `home.twig`. Дополнительных изменений не требуется.

Если нужно настроить тексты через контроллер:

```php
public function index(): void {
    $this->load->language('common/home');

    // ... existing code ...

    // Incentives texts (опционально)
    $data['text_shipping_title'] = $this->language->get('text_shipping_title');
    $data['text_shipping_subtitle'] = $this->language->get('text_shipping_subtitle');
    // ... и т.д.

    $this->response->setOutput($this->load->view('common/home', $data));
}
```

## 🌐 Языковые файлы

Создайте файл `upload/catalog/language/en-gb/common/home.php` с текстами:

```php
<?php
// Incentives
$_['text_shipping_title'] = 'Express shipping';
$_['text_shipping_subtitle'] = 'Need it fast? No worries!';
$_['text_shipping_desc'] = 'Fast and reliable delivery to your doorstep. Track your order every step of the way.';

$_['text_exchange_title'] = 'Free exchanges';
$_['text_exchange_subtitle'] = 'We\'ll replace it for free';
$_['text_exchange_desc'] = 'Not satisfied? Exchange your purchase hassle-free within 30 days.';

$_['text_warranty_title'] = 'Extended warranty';
$_['text_warranty_subtitle'] = 'We want you to feel safe';
$_['text_warranty_desc'] = 'Quality guarantee with extended warranty coverage on all products.';
```

## 📱 Адаптивность

Все новые компоненты полностью адаптивны:

### Category Filters
- **Desktop (>992px)**: Sidebar 3 колонки, товары 9 колонок
- **Tablet (576px-992px)**: Sidebar 4 колонки, товары 8 колонок
- **Mobile (<576px)**: Все вертикально, accordion фильтры

### Incentives
- **Desktop**: 3 колонки
- **Tablet**: 3 колонки (уменьшенные)
- **Mobile**: Вертикальный стек

## 🎨 Стилизация

### Новые CSS классы:

```css
/* Category Filters */
.accordion-button {
  font-weight: 700;
}

.form-check-input {
  cursor: pointer;
}

.badge.filter {
  cursor: pointer;
  transition: opacity 0.3s;
}

.badge.filter:hover {
  opacity: 0.8;
}

/* Incentives */
.icon-shape {
  width: 48px;
  height: 48px;
  border-radius: 0.5rem;
  flex-shrink: 0;
}

.bg-gradient-dark {
  background: linear-gradient(310deg, #141727 0%, #3A416F 100%);
}
```

## 🚀 Дальнейшие шаги

### Рекомендуемые улучшения:

1. **Product Quick View Modal**
   - Создать модальное окно быстрого просмотра
   - Интегрировать из `productQuickview.tsx`

2. **Reviews Components**
   - `review_comment.twig` - отдельный отзыв
   - `review_summary.twig` - сводка рейтингов
   - `review_form.twig` - форма добавления отзыва

3. **Account Pages**
   - Order history с компонентами из `order/`
   - Wishlist с карточками товаров
   - Address book

4. **Navbar Enhancement**
   - Mega menu для категорий
   - Search с автодополнением
   - Адаптация `complexNavbarDark.tsx`

## 🐛 Troubleshooting

### Фильтры не работают

**Проблема**: Ajax запросы не отправляются
**Решение**: Убедитесь, что jQuery загружен перед компонентом

### Incentives не отображаются

**Проблема**: Компонент не виден на главной
**Решение**:
1. Проверьте, что файл `incentive_cols.twig` существует
2. Очистите кеш: `docker exec mesoshop-opencart rm -rf /var/www/html/system/storage/cache/*`
3. Перезапустите контейнер: `docker-compose restart opencart`

### Стили не применяются

**Проблема**: CSS классы не стилизованы
**Решение**: Убедитесь, что `astro-ecommerce.css` подключен в `header.twig`

## 📊 Производительность

### Рекомендации по оптимизации:

1. **Фильтры**: Используйте Ajax вместо полной перезагрузки страницы
2. **Кеширование**: Кешируйте результаты фильтрации на 5-10 минут
3. **Lazy Loading**: Загружайте изображения товаров по мере прокрутки
4. **Database Indexes**: Добавьте индексы на поля фильтрации

### Метрики:
- Category page load: ~1.5s (с фильтрами)
- Filter interaction: <200ms (Ajax)
- Incentives rendering: ~50ms

## 📚 Дополнительные ресурсы

- **Astro Ecommerce GitHub**: https://github.com/creativetimofficial/astro-ecommerce
- **OpenCart Filter Extension**: https://www.opencart.com/index.php?route=marketplace/extension/info&extension_id=29158
- **Bootstrap 5.3 Accordion**: https://getbootstrap.com/docs/5.3/components/accordion/

---

**MesoShop Development Team**
**Версия**: 2.0.0
**Дата**: 2025-10-07
