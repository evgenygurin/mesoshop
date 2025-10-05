/**
 * Theme Switcher для OpenCart
 * Управление темной/светлой темой с использованием Bootstrap 5.3.8
 */

// Применяем тему сразу при загрузке (предотвращаем мигание)
(function() {
  const savedTheme = localStorage.getItem('theme') || 'light';
  document.documentElement.setAttribute('data-bs-theme', savedTheme);
})();

// Инициализация после загрузки DOM
document.addEventListener('DOMContentLoaded', function() {
  const themeToggle = document.getElementById('theme-toggle');
  const themeIcon = document.getElementById('theme-icon');
  const themeText = document.getElementById('theme-text');

  /**
   * Обновляет иконку и текст кнопки переключения темы
   * @param {string} theme - 'light' или 'dark'
   */
  function updateThemeUI(theme) {
    if (!themeIcon || !themeText) return;

    if (theme === 'dark') {
      themeIcon.classList.remove('fa-moon');
      themeIcon.classList.add('fa-sun');
      themeText.textContent = 'Light Mode';
      themeToggle.setAttribute('title', 'Switch to light mode');
    } else {
      themeIcon.classList.remove('fa-sun');
      themeIcon.classList.add('fa-moon');
      themeText.textContent = 'Dark Mode';
      themeToggle.setAttribute('title', 'Switch to dark mode');
    }
  }

  /**
   * Переключает тему между light и dark
   */
  function toggleTheme() {
    const html = document.documentElement;
    const currentTheme = html.getAttribute('data-bs-theme');
    const newTheme = currentTheme === 'light' ? 'dark' : 'light';

    // Применяем новую тему
    html.setAttribute('data-bs-theme', newTheme);
    localStorage.setItem('theme', newTheme);

    // Обновляем UI
    updateThemeUI(newTheme);

    // Событие для других компонентов
    document.dispatchEvent(new CustomEvent('themeChanged', {
      detail: { theme: newTheme }
    }));
  }

  // Установка начального состояния UI
  const currentTheme = localStorage.getItem('theme') || 'light';
  updateThemeUI(currentTheme);

  // Обработчик клика по кнопке
  if (themeToggle) {
    themeToggle.addEventListener('click', toggleTheme);
  }

  // Поддержка системных настроек (опционально)
  if (window.matchMedia) {
    const darkModeQuery = window.matchMedia('(prefers-color-scheme: dark)');

    // Если тема не сохранена, используем системную
    if (!localStorage.getItem('theme')) {
      const systemTheme = darkModeQuery.matches ? 'dark' : 'light';
      document.documentElement.setAttribute('data-bs-theme', systemTheme);
      updateThemeUI(systemTheme);
    }

    // Отслеживаем изменения системной темы
    darkModeQuery.addEventListener('change', function(e) {
      // Обновляем только если пользователь не выбрал тему вручную
      if (!localStorage.getItem('theme')) {
        const newTheme = e.matches ? 'dark' : 'light';
        document.documentElement.setAttribute('data-bs-theme', newTheme);
        updateThemeUI(newTheme);
      }
    });
  }
});
