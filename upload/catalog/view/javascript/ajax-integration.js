/*!
 * AJAX Integration v1.0.0
 * Global AJAX handlers with Bootstrap 5.3 Loading States
 * Copyright 2024 MesoShop
 * Licensed under MIT
 */

(function($) {
    'use strict';

    /**
     * Глобальная интеграция AJAX запросов с loading states
     */
    $(document).ready(function() {
        
        // Настройки по умолчанию для AJAX
        $.ajaxSetup({
            timeout: 30000,
            cache: false
        });

        // Глобальные обработчики AJAX событий
        $(document)
            .ajaxStart(function() {
                // Показываем глобальный индикатор загрузки
                if ($('.global-loading').length === 0) {
                    $('body').append(`
                        <div class="global-loading position-fixed top-0 start-0 w-100 h-100 d-none" style="z-index: 9998; background: rgba(0,0,0,0.1);">
                            <div class="position-absolute top-50 start-50 translate-middle">
                                <div class="spinner-border text-primary" role="status">
                                    <span class="visually-hidden">Загрузка...</span>
                                </div>
                            </div>
                        </div>
                    `);
                }
            })
            .ajaxStop(function() {
                // Скрываем глобальный индикатор загрузки
                $('.global-loading').fadeOut(200, function() {
                    $(this).remove();
                });
            })
            .ajaxError(function(event, jqXHR, ajaxSettings, thrownError) {
                console.error('AJAX Error:', thrownError);
                
                // Показываем уведомление об ошибке
                if (window.showNotification) {
                    showNotification('error', 'Произошла ошибка при загрузке данных');
                }
            });

        // Обработчик для форм с фильтрами
        $(document).on('submit', '.filter-form', function(e) {
            e.preventDefault();
            
            const $form = $(this);
            const $container = $form.data('target') ? $($form.data('target')) : $('#product-list');
            const action = $form.attr('action');
            
            loadingManager.ajax({
                url: action,
                type: 'GET',
                data: $form.serialize()
            }, {
                container: $container,
                placeholderType: 'product',
                placeholderCount: 12,
                loadingText: 'Применение фильтров...'
            });
        });

        // Обработчик для пагинации с AJAX
        $(document).on('click', '.pagination a', function(e) {
            if ($(this).data('ajax') === false) {
                return; // Разрешаем обычную навигацию
            }
            
            e.preventDefault();
            
            const url = $(this).attr('href');
            const $container = $('#product-list');
            
            // Показываем loading состояние
            loadingManager.ajax({
                url: url,
                type: 'GET'
            }, {
                container: $container,
                placeholderType: 'product',
                placeholderCount: 12,
                loadingText: 'Загрузка страницы...'
            });
            
            // Прокручиваем к началу списка товаров
            $('html, body').animate({
                scrollTop: $container.offset().top - 100
            }, 500);
        });

        // Обработчик для поиска
        $(document).on('submit', '#search-form', function(e) {
            const $form = $(this);
            const searchTerm = $form.find('input[name="search"]').val().trim();
            
            if (searchTerm.length < 2) {
                e.preventDefault();
                showNotification('warning', 'Введите минимум 2 символа для поиска');
                return;
            }
            
            // Показываем page loader для поиска
            loadingManager.showPageLoader();
        });

        // Обработчик для быстрого просмотра товара
        $(document).on('click', '[data-bs-toggle="modal"][data-product-id]', function(e) {
            e.preventDefault();
            
            const $btn = $(this);
            const productId = $btn.data('product-id');
            const modalId = $btn.data('bs-target');
            
            loadingManager.showSpinner($btn, 'sm', 'primary', 'Загрузка...');
            
            loadingManager.ajax({
                url: 'index.php?route=product/product/quick_view',
                type: 'GET',
                data: { product_id: productId }
            }, {
                success: function(data) {
                    if (data.html) {
                        $(modalId + ' .modal-body').html(data.html);
                        $(modalId).modal('show');
                    }
                },
                complete: function() {
                    loadingManager.hide($btn);
                }
            });
        });

        // Обработчик для добавления в корзину (глобальный)
        $(document).on('click', '[data-cart-add]', function(e) {
            e.preventDefault();
            
            const $btn = $(this);
            const productId = $btn.data('cart-add');
            const quantity = $btn.data('quantity') || 1;
            
            loadingManager.handleButtonClick($btn, async () => {
                return await $.ajax({
                    url: 'index.php?route=checkout/cart/add',
                    type: 'POST',
                    data: {
                        product_id: productId,
                        quantity: quantity
                    }
                });
            }, {
                loadingText: 'Добавление в корзину...',
                successText: 'Товар добавлен!',
                successDelay: 2000,
                spinnerSize: 'sm'
            });
        });

        // Обработчик для обновления количества в корзине
        $(document).on('change', '.cart-quantity', function() {
            const $input = $(this);
            const cartKey = $input.data('cart-key');
            const quantity = parseInt($input.val());
            
            if (quantity < 1) {
                $input.val(1);
                return;
            }
            
            const $row = $input.closest('tr');
            
            loadingManager.ajax({
                url: 'index.php?route=checkout/cart/edit',
                type: 'POST',
                data: {
                    key: cartKey,
                    quantity: quantity
                }
            }, {
                success: function(data) {
                    if (data.total) {
                        $('#cart-total').html(data.total);
                    }
                    if (data.row_total) {
                        $row.find('.cart-total').html(data.row_total);
                    }
                },
                error: function() {
                    // Возвращаем предыдущее значение при ошибке
                    $input.val($input.data('previous-value') || 1);
                }
            });
            
            $input.data('previous-value', quantity);
        });

        // Обработчик для удаления из корзины
        $(document).on('click', '[data-cart-remove]', function(e) {
            e.preventDefault();
            
            const $btn = $(this);
            const cartKey = $btn.data('cart-remove');
            const $row = $btn.closest('tr');
            
            if (!confirm('Удалить товар из корзины?')) {
                return;
            }
            
            loadingManager.handleButtonClick($btn, async () => {
                return await $.ajax({
                    url: 'index.php?route=checkout/cart/remove',
                    type: 'POST',
                    data: { key: cartKey }
                });
            }, {
                loadingText: 'Удаление...',
                successText: 'Удалено',
                spinnerSize: 'sm',
                onSuccess: function() {
                    $row.fadeOut(300, function() {
                        $(this).remove();
                    });
                }
            });
        });

        // Обработчик для применения купона
        $(document).on('click', '#coupon-apply', function(e) {
            e.preventDefault();
            
            const $btn = $(this);
            const couponCode = $('#coupon-code').val().trim();
            
            if (!couponCode) {
                showNotification('warning', 'Введите код купона');
                $('#coupon-code').focus();
                return;
            }
            
            loadingManager.handleButtonClick($btn, async () => {
                return await $.ajax({
                    url: 'index.php?route=extension/total/coupon/coupon',
                    type: 'POST',
                    data: { coupon: couponCode }
                });
            }, {
                loadingText: 'Применение купона...',
                successText: 'Купон применен!',
                errorText: 'Ошибка применения'
            });
        });

        // Обработчик для подписки на рассылку
        $(document).on('submit', '.newsletter-form', function(e) {
            e.preventDefault();
            
            const $form = $(this);
            const $btn = $form.find('button[type="submit"]');
            const email = $form.find('input[name="email"]').val();
            
            // Простая валидация email
            const emailRegex = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
            if (!emailRegex.test(email)) {
                showNotification('error', 'Введите корректный email адрес');
                return;
            }
            
            loadingManager.handleButtonClick($btn, async () => {
                return await $.ajax({
                    url: $form.attr('action'),
                    type: 'POST',
                    data: $form.serialize()
                });
            }, {
                loadingText: 'Подписка...',
                successText: 'Вы подписаны!',
                successDelay: 3000
            });
        });

        // Прогрессивная загрузка изображений
        if ('IntersectionObserver' in window) {
            const imageObserver = new IntersectionObserver((entries, observer) => {
                entries.forEach(entry => {
                    if (entry.isIntersecting) {
                        const img = entry.target;
                        const src = img.dataset.src;
                        
                        if (src) {
                            img.src = src;
                            img.classList.remove('lazy');
                            imageObserver.unobserve(img);
                        }
                    }
                });
            });

            document.querySelectorAll('img[data-src]').forEach(img => {
                imageObserver.observe(img);
            });
        }

        // Утилитарная функция для показа уведомлений
        window.showNotification = function(type, message, duration = 4000) {
            const alertClass = {
                'success': 'alert-success',
                'error': 'alert-danger',
                'warning': 'alert-warning',
                'info': 'alert-info'
            }[type] || 'alert-info';
            
            const $alert = $(`
                <div class="alert ${alertClass} alert-dismissible fade show position-fixed" 
                     style="top: 20px; right: 20px; z-index: 9999; min-width: 300px;">
                    ${message}
                    <button type="button" class="btn-close" data-bs-dismiss="alert"></button>
                </div>
            `);
            
            $('body').append($alert);
            
            setTimeout(() => {
                $alert.alert('close');
            }, duration);
        };

        // Показать уведомление о работе в режиме демо (для разработки)
        if (window.location.hostname === 'localhost' || window.location.hostname === '127.0.0.1') {
            setTimeout(() => {
                showNotification('info', 'Демо режим: Loading states активны', 6000);
            }, 1000);
        }
    });

})(jQuery);