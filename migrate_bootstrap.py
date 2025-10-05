#!/usr/bin/env python3
"""
Bootstrap 5 Migration Script
Автоматическая миграция шаблонов OpenCart с Bootstrap 3/4 на Bootstrap 5
"""

import re
import sys
from pathlib import Path

# Словарь замен Bootstrap 3/4 → Bootstrap 5
MIGRATIONS = {
    # Utility classes
    r'\bpull-left\b': 'float-start',
    r'\bpull-right\b': 'float-end',
    r'\btext-left\b': 'text-start',
    r'\btext-right\b': 'text-end',

    # Spacing utilities (margins)
    r'\bml-(\d+)\b': r'ms-\1',  # margin-left → margin-start
    r'\bmr-(\d+)\b': r'me-\1',  # margin-right → margin-end

    # Spacing utilities (padding)
    r'\bpl-(\d+)\b': r'ps-\1',  # padding-left → padding-start
    r'\bpr-(\d+)\b': r'pe-\1',  # padding-right → padding-end

    # Visibility
    r'\bsr-only\b': 'visually-hidden',
    r'\bsr-only-focusable\b': 'visually-hidden-focusable',

    # Font weights
    r'\bfont-weight-bold\b': 'fw-bold',
    r'\bfont-weight-bolder\b': 'fw-bolder',
    r'\bfont-weight-normal\b': 'fw-normal',
    r'\bfont-weight-light\b': 'fw-light',
    r'\bfont-weight-lighter\b': 'fw-lighter',

    # Typography
    r'\btext-monospace\b': 'font-monospace',

    # Button block (removed in BS5)
    # Оставляем как есть - требует ручного анализа контекста
    # r'\bbtn-block\b': 'w-100 d-grid gap-2',
}

# Специальные замены требующие контекста
CONTEXTUAL_REPLACEMENTS = {
    'btn-block': 'w-100',  # или 'd-grid gap-2' для группы кнопок
    'close': 'btn-close',   # только для кнопок закрытия
}


def migrate_file(file_path: Path) -> tuple[bool, list[str]]:
    """
    Мигрирует один файл

    Returns:
        (changed, found_classes): кортеж из флага изменений и списка найденных классов
    """
    try:
        content = file_path.read_text(encoding='utf-8')
        original_content = content
        found_classes = []

        # Применяем автоматические замены
        for old_pattern, new_value in MIGRATIONS.items():
            matches = re.findall(old_pattern, content)
            if matches:
                found_classes.extend(matches if isinstance(matches[0], str) else [old_pattern.strip('\\b')])
                content = re.sub(old_pattern, new_value, content)

        # Проверяем контекстные замены (без автозамены)
        for old_class in CONTEXTUAL_REPLACEMENTS:
            if re.search(rf'\b{old_class}\b', content):
                found_classes.append(old_class)

        # Сохраняем если были изменения
        if content != original_content:
            file_path.write_text(content, encoding='utf-8')
            return True, found_classes

        return False, found_classes

    except Exception as e:
        print(f"❌ Ошибка при обработке {file_path}: {e}", file=sys.stderr)
        return False, []


def main():
    """Основная функция миграции"""

    # Список файлов для миграции
    files_to_migrate = [
        "upload/admin/view/template/catalog/category.twig",
        "upload/admin/view/template/catalog/product_form.twig",
        "upload/admin/view/template/catalog/review.twig",
        "upload/admin/view/template/cms/article.twig",
        "upload/admin/view/template/cms/comment.twig",
        "upload/admin/view/template/common/authorize.twig",
        "upload/admin/view/template/common/authorize_reset.twig",
        "upload/admin/view/template/common/column_left.twig",
        "upload/admin/view/template/common/developer.twig",
        "upload/admin/view/template/common/filemanager.twig",
        "upload/admin/view/template/common/login.twig",
        "upload/admin/view/template/common/security.twig",
        "upload/admin/view/template/common/security_list.twig",
        "upload/admin/view/template/customer/address_form.twig",
        "upload/admin/view/template/customer/customer.twig",
        "upload/admin/view/template/customer/customer_approval.twig",
        "upload/admin/view/template/customer/customer_form.twig",
        "upload/admin/view/template/customer/gdpr.twig",
        "upload/admin/view/template/design/theme.twig",
        "upload/admin/view/template/design/theme_form.twig",
        "upload/admin/view/template/marketing/affiliate.twig",
        "upload/admin/view/template/marketing/affiliate_form.twig",
        "upload/admin/view/template/marketing/contact.twig",
        "upload/admin/view/template/marketplace/api.twig",
        "upload/admin/view/template/marketplace/cron.twig",
        "upload/admin/view/template/marketplace/cron_list.twig",
        "upload/admin/view/template/marketplace/event.twig",
        "upload/admin/view/template/marketplace/event_list.twig",
        "upload/admin/view/template/marketplace/extension.twig",
        "upload/admin/view/template/marketplace/installer.twig",
        "upload/admin/view/template/marketplace/installer_extension.twig",
        "upload/admin/view/template/marketplace/marketplace_comment.twig",
        "upload/admin/view/template/marketplace/marketplace_info.twig",
        "upload/admin/view/template/marketplace/marketplace_reply.twig",
        "upload/admin/view/template/marketplace/modification.twig",
        "upload/admin/view/template/marketplace/modification_list.twig",
        "upload/admin/view/template/marketplace/startup.twig",
        "upload/admin/view/template/marketplace/startup_list.twig",
        "upload/admin/view/template/report/statistics.twig",
        "upload/admin/view/template/sale/order_info.twig",
        "upload/admin/view/template/sale/returns_form.twig",
        "upload/admin/view/template/sale/subscription_info.twig",
        "upload/admin/view/template/tool/backup.twig",
        "upload/admin/view/template/tool/log.twig",
        "upload/admin/view/template/tool/notification.twig",
        "upload/admin/view/template/tool/notification_info.twig",
        "upload/admin/view/template/tool/notification_list.twig",
        "upload/admin/view/template/user/user_form.twig",
        "upload/catalog/view/template/account/address.twig",
        "upload/catalog/view/template/account/authorize.twig",
        "upload/catalog/view/template/account/authorize_reset.twig",
        "upload/catalog/view/template/account/login.twig",
        "upload/catalog/view/template/account/order_info.twig",
        "upload/catalog/view/template/account/subscription_info.twig",
        "upload/catalog/view/template/account/wishlist.twig",
        "upload/catalog/view/template/checkout/cart.twig",
        "upload/catalog/view/template/checkout/cart_list.twig",
        "upload/catalog/view/template/checkout/payment_address.twig",
        "upload/catalog/view/template/checkout/payment_method.twig",
        "upload/catalog/view/template/checkout/register.twig",
        "upload/catalog/view/template/checkout/shipping_address.twig",
        "upload/catalog/view/template/checkout/shipping_method.twig",
        "upload/catalog/view/template/cms/comment.twig",
        "upload/catalog/view/template/common/cookie.twig",
        "upload/catalog/view/template/information/gdpr.twig",
        "upload/catalog/view/template/information/information_info.twig",
        "upload/catalog/view/template/product/compare.twig",
        "upload/catalog/view/template/product/product.twig",
        "upload/catalog/view/template/product/review.twig",
        "upload/install/view/template/install/step_2.twig",
        "upload/install/view/template/install/step_3.twig",
        "upload/extension/opencart/admin/view/template/api/coupon.twig",
        "upload/extension/opencart/admin/view/template/api/reward.twig",
        "upload/extension/opencart/admin/view/template/fraud/ip.twig",
        "upload/extension/opencart/admin/view/template/module/bestseller.twig",
        "upload/extension/opencart/admin/view/template/report/product_viewed.twig",
        "upload/extension/opencart/catalog/view/template/checkout/shipping.twig",
        "upload/extension/opencart/catalog/view/template/module/filter.twig",
        "upload/extension/opencart/catalog/view/template/payment/bank_transfer.twig",
        "upload/extension/opencart/catalog/view/template/payment/cheque.twig",
        "upload/extension/opencart/catalog/view/template/payment/cod.twig",
        "upload/extension/opencart/catalog/view/template/payment/free_checkout.twig",
    ]

    root = Path(__file__).parent
    migrated_count = 0
    skipped_count = 0
    manual_review = []

    print("🚀 Запуск миграции Bootstrap 5...\n")

    for file_rel in files_to_migrate:
        file_path = root / file_rel

        if not file_path.exists():
            print(f"⚠️  Файл не найден: {file_rel}")
            skipped_count += 1
            continue

        changed, found_classes = migrate_file(file_path)

        if changed:
            print(f"✅ {file_rel}")
            migrated_count += 1
        else:
            print(f"⏭️  {file_rel} (не требует автомиграции)")

        # Если найдены контекстные классы, добавляем в список ручной проверки
        contextual_found = [c for c in found_classes if c in CONTEXTUAL_REPLACEMENTS]
        if contextual_found:
            manual_review.append((file_rel, contextual_found))

    # Итоги
    print(f"\n📊 Результаты миграции:")
    print(f"   ✅ Мигрировано: {migrated_count} файлов")
    print(f"   ⏭️  Пропущено: {skipped_count} файлов")
    print(f"   📋 Всего обработано: {len(files_to_migrate)} файлов")

    if manual_review:
        print(f"\n⚠️  Требуется ручная проверка ({len(manual_review)} файлов):")
        for file_rel, classes in manual_review:
            print(f"   {file_rel}")
            print(f"      Классы: {', '.join(classes)}")

    print("\n✨ Миграция завершена!")


if __name__ == "__main__":
    main()
