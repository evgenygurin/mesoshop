/*!
 * Loading States Manager v1.0.0
 * Bootstrap 5.3 Spinners and Placeholders for OpenCart 4
 * Copyright 2024 MesoShop
 * Licensed under MIT
 */

(function($) {
    'use strict';

    /**
     * Loading Manager - управляет состояниями загрузки с Bootstrap 5.3
     */
    class LoadingManager {
        constructor() {
            this.activeOperations = new Map();
            this.defaultOptions = {
                spinnerSize: 'md',
                spinnerColor: 'primary',
                timeout: 30000,
                showText: true
            };
        }

        /**
         * Показать spinner в элементе
         * @param {string|jQuery} element - селектор или jQuery объект
         * @param {string} size - размер спиннера (sm, md, lg)
         * @param {string} color - цвет спиннера (primary, secondary, success, etc.)
         * @param {string} text - текст рядом со спиннером
         */
        showSpinner(element, size = 'md', color = 'primary', text = null) {
            const $element = $(element);
            
            // Сохраняем оригинальное содержимое
            if (!$element.data('original-content')) {
                $element.data('original-content', $element.html());
            }
            
            const spinnerSizes = {
                'sm': 'spinner-border-sm',
                'md': '',
                'lg': 'spinner-border-lg'
            };
            
            const spinnerClass = `spinner-border ${spinnerSizes[size]} text-${color}`;
            const textContent = text ? `<span class="ms-2">${text}</span>` : '';
            
            const spinnerHTML = `
                <div class="d-flex align-items-center justify-content-center">
                    <div class="${spinnerClass}" role="status">
                        <span class="visually-hidden">Загрузка...</span>
                    </div>
                    ${textContent}
                </div>
            `;
            
            $element.html(spinnerHTML);
            
            // Отключаем кнопки и ссылки
            if ($element.is('button, a, input[type="submit"]')) {
                $element.prop('disabled', true).addClass('disabled');
            }
        }

        /**
         * Показать placeholder контент
         * @param {string|jQuery} container - контейнер для placeholders
         * @param {string} type - тип placeholder (card, list, table, form)
         * @param {number} count - количество элементов
         */
        showPlaceholder(container, type = 'card', count = 1) {
            const $container = $(container);
            
            // Сохраняем оригинальное содержимое
            if (!$container.data('original-content')) {
                $container.data('original-content', $container.html());
            }
            
            const templates = {
                card: this.getCardPlaceholder(),
                list: this.getListPlaceholder(),
                table: this.getTablePlaceholder(),
                form: this.getFormPlaceholder(),
                product: this.getProductPlaceholder()
            };
            
            let placeholderHTML = '';
            for (let i = 0; i < count; i++) {
                placeholderHTML += templates[type] || templates.card;
            }
            
            $container.html(`<div class="loading-placeholders" aria-hidden="true">${placeholderHTML}</div>`);
        }

        /**
         * Получить шаблон placeholder для карточки товара
         */
        getProductPlaceholder() {
            return `
                <div class="col-6 col-md-4 col-lg-3 mb-4">
                    <div class="card h-100">
                        <div class="card-img-top placeholder-glow">
                            <div class="placeholder col-12 rounded" style="height: 200px;"></div>
                        </div>
                        <div class="card-body">
                            <h5 class="card-title placeholder-glow">
                                <span class="placeholder col-8"></span>
                            </h5>
                            <div class="placeholder-glow mb-2">
                                <span class="placeholder col-6"></span>
                                <span class="placeholder col-4"></span>
                            </div>
                            <p class="card-text placeholder-glow">
                                <span class="placeholder col-7"></span>
                                <span class="placeholder col-4"></span>
                                <span class="placeholder col-6"></span>
                            </p>
                            <div class="d-flex justify-content-between align-items-center placeholder-glow">
                                <span class="placeholder col-3 bg-success"></span>
                                <span class="placeholder col-4 bg-primary" style="height: 38px;"></span>
                            </div>
                        </div>
                    </div>
                </div>
            `;
        }

        /**
         * Получить шаблон placeholder для карточки
         */
        getCardPlaceholder() {
            return `
                <div class="card mb-3">
                    <div class="card-img-top placeholder-glow">
                        <div class="placeholder col-12" style="height: 180px;"></div>
                    </div>
                    <div class="card-body">
                        <h5 class="card-title placeholder-glow">
                            <span class="placeholder col-6"></span>
                        </h5>
                        <p class="card-text placeholder-glow">
                            <span class="placeholder col-7"></span>
                            <span class="placeholder col-4"></span>
                            <span class="placeholder col-8"></span>
                        </p>
                        <a class="btn btn-primary disabled placeholder col-4" aria-hidden="true"></a>
                    </div>
                </div>
            `;
        }

        /**
         * Получить шаблон placeholder для списка
         */
        getListPlaceholder() {
            return `
                <div class="d-flex mb-3">
                    <div class="placeholder-glow me-3">
                        <div class="placeholder rounded-circle" style="width: 48px; height: 48px;"></div>
                    </div>
                    <div class="flex-grow-1 placeholder-glow">
                        <span class="placeholder col-6 mb-2"></span>
                        <span class="placeholder col-8"></span>
                    </div>
                </div>
            `;
        }

        /**
         * Получить шаблон placeholder для таблицы
         */
        getTablePlaceholder() {
            return `
                <div class="table-responsive">
                    <table class="table">
                        <thead>
                            <tr class="placeholder-glow">
                                <th><span class="placeholder col-8"></span></th>
                                <th><span class="placeholder col-6"></span></th>
                                <th><span class="placeholder col-4"></span></th>
                                <th><span class="placeholder col-5"></span></th>
                            </tr>
                        </thead>
                        <tbody>
                            ${Array(5).fill().map(() => `
                                <tr class="placeholder-glow">
                                    <td><span class="placeholder col-9"></span></td>
                                    <td><span class="placeholder col-7"></span></td>
                                    <td><span class="placeholder col-5"></span></td>
                                    <td><span class="placeholder col-6"></span></td>
                                </tr>
                            `).join('')}
                        </tbody>
                    </table>
                </div>
            `;
        }

        /**
         * Получить шаблон placeholder для формы
         */
        getFormPlaceholder() {
            return `
                <div class="placeholder-glow">
                    <div class="mb-3">
                        <span class="placeholder col-3 mb-2 d-block"></span>
                        <span class="placeholder col-12" style="height: 38px;"></span>
                    </div>
                    <div class="mb-3">
                        <span class="placeholder col-4 mb-2 d-block"></span>
                        <span class="placeholder col-12" style="height: 38px;"></span>
                    </div>
                    <div class="mb-3">
                        <span class="placeholder col-2 mb-2 d-block"></span>
                        <span class="placeholder col-12" style="height: 100px;"></span>
                    </div>
                    <span class="placeholder col-3 bg-primary" style="height: 38px;"></span>
                </div>
            `;
        }

        /**
         * Скрыть loading состояние и восстановить содержимое
         * @param {string|jQuery} element - элемент для восстановления
         * @param {string} newContent - новое содержимое (опционально)
         */
        hide(element, newContent = null) {
            const $element = $(element);
            
            if (newContent) {
                $element.html(newContent);
            } else {
                const originalContent = $element.data('original-content');
                if (originalContent) {
                    $element.html(originalContent);
                }
            }
            
            // Включаем обратно кнопки и ссылки
            if ($element.is('button, a, input[type="submit"]')) {
                $element.prop('disabled', false).removeClass('disabled');
            }
            
            // Очищаем данные
            $element.removeData('original-content');
        }

        /**
         * Обработчик для кнопок с loading состоянием
         * @param {string|jQuery} button - кнопка
         * @param {Function} asyncFn - асинхронная функция
         * @param {Object} options - опции
         */
        async handleButtonClick(button, asyncFn, options = {}) {
            const $button = $(button);
            const opts = Object.assign({}, this.defaultOptions, options);
            
            // Показываем spinner
            const loadingText = $button.data('loading-text') || opts.loadingText;
            this.showSpinner($button, opts.spinnerSize, opts.spinnerColor, loadingText);
            
            try {
                const result = await asyncFn();
                
                // Показываем успех
                if (opts.successText) {
                    $button.html(`<i class="fas fa-check me-2"></i>${opts.successText}`);
                    setTimeout(() => this.hide($button), opts.successDelay || 2000);
                } else {
                    this.hide($button);
                }
                
                return result;
            } catch (error) {
                console.error('Loading operation failed:', error);
                
                // Показываем ошибку
                if (opts.errorText) {
                    $button.html(`<i class="fas fa-exclamation-triangle me-2"></i>${opts.errorText}`);
                    setTimeout(() => this.hide($button), opts.errorDelay || 3000);
                } else {
                    this.hide($button);
                }
                
                throw error;
            }
        }

        /**
         * Обработчик AJAX запросов с loading состояниями
         * @param {Object} ajaxOptions - опции jQuery AJAX
         * @param {Object} loadingOptions - опции loading состояний
         */
        ajax(ajaxOptions, loadingOptions = {}) {
            const opts = Object.assign({}, this.defaultOptions, loadingOptions);
            
            // Показываем spinner в кнопке, если указана
            if (opts.button) {
                this.showSpinner(opts.button, opts.spinnerSize, opts.spinnerColor, opts.loadingText);
            }
            
            // Показываем placeholders в контейнере, если указан
            if (opts.container) {
                this.showPlaceholder(opts.container, opts.placeholderType, opts.placeholderCount);
            }
            
            const originalSuccess = ajaxOptions.success || (() => {});
            const originalError = ajaxOptions.error || (() => {});
            const originalComplete = ajaxOptions.complete || (() => {});
            
            return $.ajax(Object.assign({}, ajaxOptions, {
                success: (data, textStatus, jqXHR) => {
                    if (opts.button && opts.successText) {
                        $(opts.button).html(`<i class="fas fa-check me-2"></i>${opts.successText}`);
                        setTimeout(() => this.hide(opts.button), opts.successDelay || 2000);
                    } else if (opts.button) {
                        this.hide(opts.button);
                    }
                    
                    if (opts.container) {
                        this.hide(opts.container, data);
                    }
                    
                    originalSuccess(data, textStatus, jqXHR);
                },
                error: (jqXHR, textStatus, errorThrown) => {
                    if (opts.button && opts.errorText) {
                        $(opts.button).html(`<i class="fas fa-exclamation-triangle me-2"></i>${opts.errorText}`);
                        setTimeout(() => this.hide(opts.button), opts.errorDelay || 3000);
                    } else if (opts.button) {
                        this.hide(opts.button);
                    }
                    
                    if (opts.container) {
                        this.hide(opts.container);
                    }
                    
                    originalError(jqXHR, textStatus, errorThrown);
                },
                complete: (jqXHR, textStatus) => {
                    originalComplete(jqXHR, textStatus);
                }
            }));
        }

        /**
         * Создать loading состояние для всей страницы
         */
        showPageLoader() {
            const pageLoader = `
                <div id="page-loader" class="position-fixed top-0 start-0 w-100 h-100 d-flex justify-content-center align-items-center" style="background: rgba(255,255,255,0.8); z-index: 9999;">
                    <div class="text-center">
                        <div class="spinner-border text-primary mb-3" style="width: 3rem; height: 3rem;" role="status">
                            <span class="visually-hidden">Загрузка...</span>
                        </div>
                        <div class="h5">Загрузка...</div>
                    </div>
                </div>
            `;
            
            if ($('#page-loader').length === 0) {
                $('body').append(pageLoader);
            }
        }

        /**
         * Скрыть loading состояние страницы
         */
        hidePageLoader() {
            $('#page-loader').fadeOut(300, function() {
                $(this).remove();
            });
        }
    }

    // Создаем глобальный экземпляр
    window.loadingManager = new LoadingManager();

    // jQuery плагин для удобства использования
    $.fn.showSpinner = function(size, color, text) {
        return this.each(function() {
            window.loadingManager.showSpinner(this, size, color, text);
        });
    };

    $.fn.showPlaceholder = function(type, count) {
        return this.each(function() {
            window.loadingManager.showPlaceholder(this, type, count);
        });
    };

    $.fn.hideLoading = function(newContent) {
        return this.each(function() {
            window.loadingManager.hide(this, newContent);
        });
    };

    // Автоматическая обработка кнопок с data-loading атрибутами
    $(document).on('click', '[data-loading]', function(e) {
        const $button = $(this);
        const loadingText = $button.data('loading-text') || 'Загрузка...';
        const loadingSize = $button.data('loading-size') || 'sm';
        const loadingColor = $button.data('loading-color') || 'primary';
        
        window.loadingManager.showSpinner($button, loadingSize, loadingColor, loadingText);
    });

})(jQuery);