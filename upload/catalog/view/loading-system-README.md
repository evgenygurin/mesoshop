# Bootstrap 5.3 Loading System для OpenCart 4

Система современных индикаторов загрузки с использованием Bootstrap 5.3 Spinners и Placeholders.

## 🚀 Возможности

- ✅ Bootstrap 5.3 Spinners различных размеров и цветов
- ✅ Placeholders для карточек товаров, списков, таблиц
- ✅ Автоматические loading состояния для AJAX операций
- ✅ Интеграция с кнопками добавления в корзину
- ✅ Поддержка accessibility (ARIA labels)
- ✅ Адаптивность для мобильных устройств

## 📁 Файлы системы

```
upload/catalog/view/
├── javascript/
│   ├── loading-states.js        # Основной класс LoadingManager
│   └── ajax-integration.js      # Глобальная интеграция AJAX
├── stylesheet/
│   └── loading.css             # Стили для spinners и placeholders
└── template/product/
    ├── category.twig           # Категория с placeholders
    └── thumb.twig              # Карточка товара с loading buttons
```

## 🔧 Подключение

### 1. Подключите файлы в header.twig
```twig
{# После Bootstrap CSS #}
<link href="catalog/view/stylesheet/loading.css" rel="stylesheet">

{# После jQuery и Bootstrap JS #}
<script src="catalog/view/javascript/loading-states.js"></script>
<script src="catalog/view/javascript/ajax-integration.js"></script>
```

### 2. Инициализация
```javascript
// LoadingManager доступен глобально как window.loadingManager
$(document).ready(function() {
    console.log('Loading Manager готов к работе!');
});
```

## 📖 Использование

### Базовые Spinners

```html
<!-- Простой spinner -->
<button id="my-button" class="btn btn-primary">
    Нажми меня
</button>

<script>
$('#my-button').on('click', function() {
    loadingManager.showSpinner(this, 'sm', 'primary', 'Загрузка...');
    
    setTimeout(() => {
        loadingManager.hide(this);
    }, 2000);
});
</script>
```

### Автоматические Loading Buttons

```html
<button 
    class="btn btn-primary" 
    data-loading="true"
    data-loading-text="<span class='spinner-border spinner-border-sm me-2'></span>Обработка..."
    data-loading-size="sm">
    Отправить форму
</button>
```

### Placeholders для контента

```html
<!-- Контейнер для товаров -->
<div id="product-container"></div>

<script>
// Показать placeholders
loadingManager.showPlaceholder('#product-container', 'product', 8);

// Загрузить данные через AJAX
$.ajax({
    url: 'product/category',
    success: function(data) {
        loadingManager.hide('#product-container', data.html);
    }
});
</script>
```

### AJAX с Loading Manager

```javascript
// Простой AJAX с loading состояниями
loadingManager.ajax({
    url: 'checkout/cart/add',
    type: 'POST',
    data: { product_id: 123, quantity: 1 }
}, {
    button: '#add-to-cart-btn',
    loadingText: 'Добавление в корзину...',
    successText: 'Товар добавлен!',
    errorText: 'Ошибка добавления'
});
```

### Обработчик кнопок с асинхронными операциями

```javascript
$('#checkout-btn').on('click', function() {
    const $btn = $(this);
    
    loadingManager.handleButtonClick($btn, async () => {
        // Ваша асинхронная операция
        const response = await fetch('/api/checkout', {
            method: 'POST',
            body: JSON.stringify(orderData)
        });
        
        return response.json();
    }, {
        loadingText: 'Обработка заказа...',
        successText: 'Заказ оформлен!',
        successDelay: 3000,
        spinnerSize: 'sm'
    });
});
```

## 🎨 Типы Placeholders

### 1. Карточка товара
```javascript
loadingManager.showPlaceholder('#container', 'product', 6);
```

### 2. Список товаров
```javascript
loadingManager.showPlaceholder('#container', 'list', 10);
```

### 3. Таблица
```javascript
loadingManager.showPlaceholder('#container', 'table', 1);
```

### 4. Форма
```javascript
loadingManager.showPlaceholder('#container', 'form', 1);
```

## ⚙️ Настройки LoadingManager

```javascript
const customManager = new LoadingManager();

// Использование с настройками
customManager.handleButtonClick('#my-btn', asyncFunction, {
    spinnerSize: 'lg',           // xs, sm, md, lg, xl
    spinnerColor: 'success',     // primary, secondary, success, warning, danger
    loadingText: 'Загрузка...',
    successText: 'Готово!',
    errorText: 'Ошибка!',
    successDelay: 2000,          // ms
    errorDelay: 3000,            // ms
    timeout: 30000               // ms
});
```

## 🎯 Готовые интеграции

### Добавление в корзину
```html
<button 
    class="btn btn-primary cart-add-btn" 
    data-product-id="123"
    data-loading-text="<span class='spinner-border spinner-border-sm me-2'></span>Добавление..."
    data-success-text="<i class='fas fa-check me-2'></i>Добавлено">
    В корзину
</button>
```

### Фильтрация товаров
```html
<form class="filter-form" data-target="#product-list">
    <input type="checkbox" name="filter[]" value="brand1"> Бренд 1
    <input type="checkbox" name="filter[]" value="brand2"> Бренд 2
    <button type="submit">Применить</button>
</form>
```

### Пагинация с AJAX
```html
<div class="pagination">
    <a href="?page=2" class="page-link" data-ajax="true">2</a>
    <a href="?page=3" class="page-link" data-ajax="true">3</a>
</div>
```

## 🔧 Кастомизация стилей

### CSS переменные
```css
:root {
    --loading-shimmer-color: #f0f0f0;
    --loading-shimmer-highlight: #e0e0e0;
    --loading-overlay-bg: rgba(255, 255, 255, 0.8);
}
```

### Анимация placeholder
```css
.custom-placeholder {
    background: linear-gradient(90deg, 
        var(--loading-shimmer-color) 25%, 
        var(--loading-shimmer-highlight) 50%, 
        var(--loading-shimmer-color) 75%
    );
    animation: placeholderShimmer 1.6s ease-in-out infinite;
}
```

## 📱 Адаптивность

Система автоматически адаптируется под разные размеры экранов:

- **Desktop**: Полные тексты и крупные спиннеры
- **Tablet**: Средние размеры, упрощенные тексты
- **Mobile**: Компактные спиннеры, минимальные тексты

## ♿ Accessibility

- ✅ ARIA labels для всех спиннеров
- ✅ `aria-hidden="true"` для decorative placeholders
- ✅ `role="status"` для live regions
- ✅ Поддержка `prefers-reduced-motion`
- ✅ Keyboard navigation preservation

## 🐛 Отладка

### Console лог
```javascript
// Включить подробное логирование
loadingManager.debug = true;

// Проверить активные операции
console.log(loadingManager.activeOperations);
```

### Демо режим
```javascript
// Показать все типы индикаторов для тестирования
loadingManager.showDemo();
```

## 🔄 Интеграция с OpenCart

### События OpenCart
```javascript
// Интеграция с событиями корзины OpenCart
$('#cart').on('update.cart', function(e, data) {
    if (data.total) {
        $('#cart-total').html(data.total);
    }
});
```

### Совместимость с плагинами
Система совместима с:
- ✅ OpenCart AJAX фильтрами
- ✅ Quick View модулями  
- ✅ Multi-vendor плагинами
- ✅ Кастомными темами Bootstrap

## 📊 Производительность

- 🚀 Lazy loading изображений
- 🚀 Минимальный DOM manipulation
- 🚀 Debounced events для частых операций
- 🚀 Memory leak protection

## 🎉 Результат

После внедрения пользователи получают:
- **Понимание состояний** - всегда видно что происходит
- **Профессиональный UX** - современные loading patterns
- **Отзывчивость** - нет "мертвых" кликов
- **Accessibility** - доступность для всех пользователей

---

🤖 **Система готова к работе!** Все AJAX операции теперь имеют соответствующие loading states.