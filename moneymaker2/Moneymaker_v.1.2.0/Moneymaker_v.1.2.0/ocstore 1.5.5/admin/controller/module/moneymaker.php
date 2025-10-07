<?php
class ControllerModulemoneymaker extends Controller {
	private $error = array(); 
	
	public function index() {
    // language files
    $this->language->load('catalog/review'); // Rating text
	$this->language->load('module/moneymaker');

    // setting the title
	$this->document->setTitle(strip_tags($this->language->get('heading_title')));
		
	// loading the settings model
	$this->load->model('setting/setting');
	$this->load->model('tool/image');

    // saving the settings
	if (($this->request->server['REQUEST_METHOD'] == 'POST') && $this->validate()) {
		$this->model_setting_setting->editSetting('moneymaker', $this->request->post);
		$this->session->data['success'] = $this->language->get('text_success');
        if(isset($this->request->post['apply']) and $this->request->post['apply'])
            $this->redirect($this->url->link('module/moneymaker', 'token=' . $this->session->data['token'], 'SSL'));
        else
            $this->redirect($this->url->link('extension/module', 'token=' . $this->session->data['token'], 'SSL'));
    }

    $this->data['text_image_manager'] = 'Image manager';
    $this->data['token'] = $this->session->data['token'];

    // preparing text strings
    $text_strings = array(
        'heading_title',
        'text_enabled',
        'text_disabled',
        'text_yes',
        'text_no',
        'text_select',
        'text_clear',
        'text_or',
        'text_view',

        'text_content_top',
        'text_content_bottom',
        'text_column_left',
        'text_column_right',
        'text_description',
        'entry_status',
        'entry_sort_order',
        'button_save',
        'button_cancel',
        'button_apply',
        'column_rating',
        'tab_module',

        'entry_status',
        'entry_icon',
        //'entry_icons',
        'entry_solid_color',
        'entry_image',
        'entry_images',
        'entry_image_popup',
        'entry_link',
        'entry_url',
        'entry_information',
        'entry_manufacturer',
        'entry_search',
        'entry_special',
        'entry_home',
        'entry_label',
        'entry_columns',
        'entry_optional',
        'entry_required',
        'entry_jquery',
        'entry_css3',
        'entry_color',
        'entry_size',
        'entry_text',
        'entry_title',
        'entry_content',
        'entry_display_options',
        'entry_tab',
        'entry_add_tab',
        'entry_add_contact',
        'entry_add_link',
        'entry_px',
        'entry_ms',
        'entry_em',
        'entry_days',
        'entry_characters',
        'entry_tabs',
        'entry_modules',
        'entry_modules_bestsellers',
        'entry_modules_featured',
        'entry_modules_latest',
        'entry_modules_specials',
        'entry_modules_related',
        'entry_options',
        'entry_availability',
        'entry_table',
        'entry_fields',
        'entry_field',
        'entry_add_field',
        'entry_pills',
        'entry_font',
        'entry_font_customization',
        'entry_font_size_small',
        'entry_font_size_large',
        'entry_font_customization_help',
        'entry_caption',
        'entry_caption_color',
        'entry_type',
        'entry_duration',
        'entry_light',
        'entry_dark',
        'entry_element',
        'entry_add_element',
        'entry_logged_in',
        'entry_logged_out',

        'entry_tab_common',
        'entry_tab_themes',
        'entry_tab_header',
        'entry_tab_quickorder',
        'entry_tab_callback',
        'entry_tab_stickers',
        'entry_tab_advantages',
        'entry_tab_savings',
        'entry_tab_cartgift',
        'entry_tab_timer',
        'entry_tab_catalog',
        'entry_tab_footer',
        'entry_tab_builtin_modules',
        'entry_tab_builtin_modules_help',
        'entry_tab_help',
        'entry_tab_help_text',
        'entry_tab_effects',
        'entry_tab_product',

        'entry_product_gallery_type',
        'entry_product_sharing',
        'entry_product_sharing_enabled',
        'entry_product_sharing_loading_delay',
        'entry_product_sharing_loading_delay_help',
        'entry_product_sharing_yandex_enabled',
        'entry_product_sharing_pluso_enabled',
        'entry_product_sharing_custom_enabled',
        'entry_product_h1_meta_enabled',
        'entry_product_h1_meta_enabled_help',
        'entry_product_h1_code_enabled',
        'entry_product_images_help',
        'entry_product_images_hidden',
        'entry_product_images_hide_limit',
        'entry_product_options',
        'entry_product_options_help',
        'entry_product_options_hidden',
        'entry_product_options_hide_limit',
        'entry_product_tabs_help',
        'entry_product_tabs_disabled',
        'entry_product_tabs_disabled_help',
        'entry_product_tabs_mode',
        'entry_product_tabs_mode_help',
        'entry_product_tabs_cart_button_disabled',
        'entry_product_description',
        'entry_product_description_disabled',
        'entry_product_specification',
        'entry_product_specification_disabled',

        'entry_product_specification_model',
        'entry_product_specification_brand',
        'entry_product_specification_weight',
        'entry_product_specification_dimensions',
        'entry_product_specification_headers',
        'entry_product_specification_table_hover',
        'entry_product_specification_table_striped',
        'entry_product_specification_row_bordered',
        'entry_product_specification_table_bordered',
        'entry_product_specification_table_condensed',
        'entry_product_review',
        'entry_product_review_visualization',
        'entry_product_review_visualization_help',
        'entry_product_review_write',
        'entry_product_code_field',
        'entry_product_code_caption',
        'entry_product_buy_caption_hidden',

        'entry_catalog_categories',
        'entry_catalog_category_description_hidden',
        'entry_catalog_category_description_dropped',
        'entry_catalog_category_refine_hidden',
        'entry_catalog_category_description_spoiled',
        'entry_catalog_categories_images_hidden',
        'entry_catalog_recaptcha',
        'entry_catalog_recaptcha_help',
        'entry_catalog_recaptcha_public_key',
        'entry_catalog_recaptcha_private_key',
        'entry_catalog_cart',
        'entry_catalog_cart_additional_hidden',
        'entry_catalog_cart_additional_coupon_hidden',
        'entry_catalog_cart_additional_voucher_hidden',
        'entry_catalog_cart_additional_reward_hidden',
        'entry_catalog_cart_additional_shippingtaxes_hidden',
        'entry_catalog_compare',
        'entry_catalog_compare_model_hidden',
        'entry_catalog_compare_manufacturer_hidden',
        'entry_catalog_compare_description_hidden',
        'entry_catalog_compare_weight_hidden',
        'entry_catalog_compare_dimension_hidden',
        'entry_catalog_layout',
        'entry_catalog_list',
        'entry_catalog_grid',
        'entry_catalog_limits_classic',
        'entry_catalog_limits_classic_help',
        'entry_catalog_layout_switcher_hidden',
        'entry_catalog_grid_details',
        'entry_catalog_grid_details_help',
        'entry_catalog_contacts',
        'entry_catalog_contacts_additional_enabled',
        'entry_catalog_contacts_map_enabled',
        'entry_catalog_contacts_map_code',
        'entry_catalog_contacts_map_code_help',

        'entry_catalog_help',
        'entry_product_help',
        'entry_quickorder_help',
        'entry_callback_help',
        'entry_advantages_help',
        'entry_stickers_help',

        'entry_quickorder_mail_language',
        'entry_quickorder_buttons_display_help',
        'entry_quickorder_fields_help',
        'entry_quickorder_code_field_enabled',
        'entry_quickorder_buy_caption_hidden',

        'entry_callback_mail_language',
        'entry_callback_fields_help',

        'entry_footer_help',
        'entry_footer_information_hidden',
        'entry_footer_extras_hidden',
        'entry_footer_service_hidden',
        'entry_footer_account_hidden',
        'entry_footer_contact_hidden',
        'entry_footer_socials',
        'entry_footer_socials_help',
        'entry_footer_socials_icons_large',
        'entry_footer_payments',
        'entry_footer_payments_help',
        'entry_footer_custom',
        'entry_footer_custom_help',
        'entry_footer_custom_year',
        'entry_footer_contact',
        'entry_footer_contact_help',
        'entry_footer_links',
        'entry_footer_links_help',
        'entry_footer_link',
        'entry_footer_link_mode',
        'entry_footer_link_mode_url_help',

        'entry_effects_help',
        'entry_effects_home_enabled',
        'entry_effects_vtab',
        'entry_effects_vtab_help',

        'entry_common_help',
        'entry_common_addtocart_hide_enabled',
        'entry_common_btn_wishlist_hidden',
        'entry_common_btn_compare_hidden',
        'entry_common_header_fixed',
        'entry_common_scrolltotop',
        'entry_common_product_details',
        'entry_common_product_details_help',
        'entry_common_stock_enabled',
        'entry_common_descriptions_enabled',
        'entry_common_descriptions_limit',
        'entry_common_attributes_enabled',
        'entry_common_attributes_limit',
        'entry_common_attributes_delimiter',
        'entry_common_metadescriptions_enabled',
        'entry_common_stock_availability_hidden',
        'entry_common_stock_visualization_enabled',
        'entry_common_stock_available_color',
        'entry_common_stock_unavailable_color',

        'entry_themes_help',
        'entry_themes_mode',
        'entry_themes_responsive_disabled',
        'entry_themes_rounded_disabled',
        'entry_themes_transparent_disabled',
        'entry_themes_builtin',
        'entry_themes_custom',
        'entry_themes_custom_brightness',
        'entry_themes_custom_color',
        'entry_themes_custom_bg_mode',
        'entry_themes_custom_bg_color',
        'entry_themes_custom_bg_img',
        'entry_themes_custom_bg_attachment',
        'entry_themes_custom_bg_position',
        'entry_themes_custom_bg_repeat',

        'entry_header_help',
        'entry_header_livesearch',
        'entry_contact',
        'entry_header_contacts',
        'entry_header_contacts_help',
        'entry_header_contact',
        'entry_header_contact_help',
        'entry_header_contacts_mode',
        'entry_header_contacts_mobiles',
        'entry_header_contacts_header',
        'entry_header_contacts_divider',
        'entry_header_contacts_icons',
        'entry_header_contacts_address',
        'entry_header_contacts_address_text',
        'entry_header_contacts_caption',
        'entry_header_contacts_telephone_hidden',

        'entry_header_links',
        'entry_header_links_help',
        'entry_header_link',
        'entry_header_link_mode',
        'entry_header_link_mode_url_help',
        'entry_header_custom_css',
        'entry_header_custom_js',
        'entry_header_categories',
        'entry_header_categories_help',
        'entry_header_categories_description_hidden',
        'entry_header_categories_child_image_hidden',
        'entry_header_categories_columns_help',
        'entry_header_categories_description_limit',
        'entry_header_categories_hidden',
        'entry_header_categories_hide_limit',
        'entry_header_categories_mobile_enabled',
        'entry_header_dropdown_hover_enabled',
        'entry_header_dropdown_hover_delay_enabled',
        'entry_header_small_cart_btn_enabled',
        'entry_header_brand_caption',

        'entry_advantage',
        'entry_advantages_display_help',
        'entry_add_advantage',
        'entry_advantages_icon_help',
        'entry_advantages_font_help',

        'entry_savings_help',
        'entry_cartgift_help',
        'entry_timer_help',
        'entry_timer_title_date_enabled',
        'entry_timer_units',
        'entry_timer_text_limited',

        'entry_icon_help',

        'entry_stickers_vtab',
        'entry_stickers_vtab_help',
        'entry_stickers_title_help',
        'entry_stickers_caption_help',
        'entry_stickers_rating_title_help',
        'entry_stickers_rating_caption_help',
        'entry_stickers_size_small',
        'entry_stickers_size_large',
        'entry_stickers_size_help',
        'entry_stickers_custom_limit',
        'entry_stickers_popular_limit',
        'entry_stickers_new_limit',
        'entry_stickers_voted_limit',

    );
    
    foreach ($text_strings as $text) {
      $this->data[$text] = $this->language->get($text);
    }

    // preparing config data
    $config_data = array(
    'mmr_themes_mode',
    'mmr_themes_responsive_disabled',
    'mmr_themes_rounded_disabled',
    'mmr_themes_transparent_disabled',
    'mmr_themes_builtin_theme',
    'mmr_themes_builtin_disabled',
    'mmr_themes_custom_brightness',
    'mmr_themes_custom_bg_color',
    'mmr_themes_custom_bg_mode',
    'mmr_themes_custom_color',

    'mmr_themes_custom_bg_img',
    'mmr_themes_custom_bg_img_preview',
    'mmr_themes_custom_bg_attachment',
    'mmr_themes_custom_bg_position',
    'mmr_themes_custom_bg_repeat',

    'mmr_common_addtocart_hide_enabled',
    'mmr_common_btn_wishlist_hidden',
    'mmr_common_btn_compare_hidden',
    'mmr_common_header_fixed',
    'mmr_common_scrolltotop_enabled',
    'mmr_common_catalog_stock_enabled',
    'mmr_common_bestsellers_stock_enabled',
    'mmr_common_featured_stock_enabled',
    'mmr_common_latest_stock_enabled',
    'mmr_common_specials_stock_enabled',
    'mmr_common_related_stock_enabled',
    'mmr_common_catalog_product_code_enabled',
    'mmr_common_bestsellers_product_code_enabled',
    'mmr_common_featured_product_code_enabled',
    'mmr_common_latest_product_code_enabled',
    'mmr_common_specials_product_code_enabled',
    'mmr_common_related_product_code_enabled',
    'mmr_common_product_code_field',
    'mmr_common_product_code_caption',
    'mmr_common_catalog_descriptions_enabled',
    'mmr_common_bestsellers_descriptions_enabled',
    'mmr_common_featured_descriptions_enabled',
    'mmr_common_latest_descriptions_enabled',
    'mmr_common_specials_descriptions_enabled',
    'mmr_common_related_descriptions_enabled',
    'mmr_common_descriptions_limit',
    'mmr_common_catalog_attributes_enabled',
    'mmr_common_bestsellers_attributes_enabled',
    'mmr_common_featured_attributes_enabled',
    'mmr_common_latest_attributes_enabled',
    'mmr_common_specials_attributes_enabled',
    'mmr_common_related_attributes_enabled',
    'mmr_common_attributes_limit',
    'mmr_common_attributes_delimiter',
    'mmr_common_catalog_metadescriptions_enabled',
    'mmr_common_bestsellers_metadescriptions_enabled',
    'mmr_common_featured_metadescriptions_enabled',
    'mmr_common_latest_metadescriptions_enabled',
    'mmr_common_specials_metadescriptions_enabled',
    'mmr_common_related_metadescriptions_enabled',

    'mmr_common_stock_availability_hidden',
    'mmr_common_stock_visualization_enabled',
    'mmr_common_stock_available_color',
    'mmr_common_stock_unavailable_color',

    'mmr_header_livesearch_enabled',
    'mmr_header_categories_description_hidden',
    'mmr_header_categories_child_image_hidden',
    'mmr_header_categories_description_limit',
    'mmr_header_categories_hidden',
    'mmr_header_categories_hide_limit',
    'mmr_header_categories_mobile_enabled',
    'mmr_header_dropdown_hover_enabled',
    'mmr_header_dropdown_hover_delay_enabled',
    'mmr_header_small_cart_btn_enabled',
    'mmr_header_brand_caption',
    'mmr_header_custom_css_enabled',
    'mmr_header_custom_js_enabled',
    'mmr_header_custom_css',
    'mmr_header_custom_js',
    'mmr_header_contacts_address_hidden',
    'mmr_header_contacts_address',
    'mmr_header_contacts_telephone_hidden',
    'mmr_header_contacts_caption_enabled',
    'mmr_header_contacts_caption',

    'mmr_footer_information_hidden',
    'mmr_footer_extras_hidden',
    'mmr_footer_service_hidden',
    'mmr_footer_account_hidden',
    'mmr_footer_contact_hidden',
    'mmr_footer_contact_title',
    'mmr_footer_socials_enabled',
    'mmr_footer_socials_icons_large',
    'mmr_footer_socials_title',
    'mmr_footer_socials_links',
    'mmr_footer_socials_types',
    'mmr_footer_payments_enabled',
    'mmr_footer_payments_icons_large',
    'mmr_footer_payments_title',
    'mmr_footer_payments_links',
    'mmr_footer_payments_types',
    'mmr_footer_custom_enabled',
    'mmr_footer_custom_title',
    'mmr_footer_custom_text',
    'mmr_footer_custom_year',
    'mmr_footer_links_enabled',
    'mmr_footer_links_title',

    'mmr_product_gallery_type',
    'mmr_product_sharing_enabled',
    'mmr_product_sharing_loading_delay',
    'mmr_product_sharing_yandex_enabled',
    'mmr_product_sharing_pluso_enabled',
    'mmr_product_sharing_custom_enabled',
    'mmr_product_sharing_custom',
    'mmr_product_h1_meta_enabled',
    'mmr_product_h1_code_enabled',
    'mmr_product_h1_code_field',
    'mmr_product_images_hidden',
    'mmr_product_images_hide_limit',
    'mmr_product_options_hidden',
    'mmr_product_options_hide_limit',
    'mmr_product_tabs_disabled',
    'mmr_product_tabs_mode',
    'mmr_product_description_disabled',
    'mmr_product_description_font_customized',
    'mmr_product_description_font_color',
    'mmr_product_description_font_size',
    'mmr_product_description_cart_button_disabled',
    'mmr_product_specification_disabled',
    'mmr_product_specification_model_disabled',
    'mmr_product_specification_brand_disabled',
    'mmr_product_specification_weight_disabled',
    'mmr_product_specification_dimensions_disabled',
    'mmr_product_specification_headers_disabled',
    'mmr_product_specification_table_hover',
    'mmr_product_specification_table_striped',
    'mmr_product_specification_table_bordered',
    'mmr_product_specification_row_bordered',
    'mmr_product_specification_table_condensed',
    'mmr_product_specification_font_customized',
    'mmr_product_specification_font_size',
    'mmr_product_specification_font_color',
    'mmr_product_specification_cart_button_disabled',
    'mmr_product_review_visualization',
    'mmr_product_review_write',
    'mmr_product_review_font_customized',
    'mmr_product_review_font_size',
    'mmr_product_review_font_color',
    'mmr_product_review_cart_button_disabled',
    'mmr_product_buy_caption_hidden',

    'mmr_catalog_category_description_hidden',
    'mmr_catalog_category_description_dropped',
    'mmr_catalog_category_refine_hidden',
    'mmr_catalog_category_description_spoiled',
    'mmr_catalog_category_description_spoiler_limit',
    'mmr_catalog_categories_images_hidden',
    'mmr_catalog_recaptcha_enabled',
    'mmr_catalog_recaptcha_public_key',
    'mmr_catalog_recaptcha_private_key',
    'mmr_catalog_cart_additional_coupon_hidden',
    'mmr_catalog_cart_additional_voucher_hidden',
    'mmr_catalog_cart_additional_reward_hidden',
    'mmr_catalog_cart_additional_shippingtaxes_hidden',
    'mmr_catalog_compare_model_hidden',
    'mmr_catalog_compare_manufacturer_hidden',
    'mmr_catalog_compare_description_hidden',
    'mmr_catalog_compare_weight_hidden',
    'mmr_catalog_compare_dimension_hidden',
    'mmr_catalog_layout',
    'mmr_catalog_limits_classic',
    'mmr_catalog_layout_switcher_hidden',
    'mmr_catalog_grid_details',
    'mmr_catalog_contacts_additional_enabled',
    'mmr_catalog_contacts_map_enabled',
    'mmr_catalog_contacts_map_code',

    'mmr_effects',
    'mmr_effects_enabled',
    'mmr_effects_home_enabled',

    'mmr_quickorder_enabled',
    'mmr_quickorder_mail_language',
    'mmr_quickorder_popup_button_disabled',
    'mmr_quickorder_description_button_disabled',
    'mmr_quickorder_specification_button_disabled',
    'mmr_quickorder_review_button_disabled',
    'mmr_quickorder_product_code_field_enabled',
    'mmr_quickorder_product_code_field',
    'mmr_quickorder_buy_caption_hidden',

    'mmr_callback_enabled',
    'mmr_callback_mail_language',
    'mmr_callback_popup_button_disabled',
    'mmr_callback_description_button_disabled',
    'mmr_callback_specification_button_disabled',
    'mmr_callback_review_button_disabled',
    'mmr_callback_product_code_field_enabled',
    'mmr_callback_product_code_field',

    'mmr_advantages_enabled',
    'mmr_advantages_number',
    'mmr_advantages_text',
    'mmr_advantages_icons_size',
    'mmr_advantages_icons_color',
    'mmr_advantages_font_size',
    'mmr_advantages_font_color',
    'mmr_advantages_display_product',
    'mmr_advantages_display_category',
    'mmr_advantages_display_manufacturer',
    'mmr_advantages_display_search',
    'mmr_advantages_display_special',
    'mmr_advantages_display_home',
    'mmr_advantages_icon',

    'mmr_savings_enabled',
    'mmr_savings_text',
    'mmr_savings_text_color',

    'mmr_cartgift_enabled',
    'mmr_cartgift_caption',
    'mmr_cartgift_text',
    'mmr_cartgift_text_logged',

    'mmr_timer_enabled',
    'mmr_timer_title',
    'mmr_timer_title_date_enabled',
    'mmr_timer_text',
    'mmr_timer_text_link',
    'mmr_timer_link_id',
    'mmr_timer_text_days',
    'mmr_timer_text_hours',
    'mmr_timer_text_minutes',
    'mmr_timer_text_seconds',
    'mmr_timer_text_limited',

    'mmr_stickers',
    'mmr_stickers_enabled',
    'mmr_stickers_size_small',
    'mmr_stickers_size_large',


    );

    foreach ($config_data as $conf) {
        if (isset($this->request->post[$conf])) {
            $this->data[$conf] = $this->request->post[$conf];
        } else {
            $this->data[$conf] = $this->config->get($conf);
        }
    }

		// error message
 		if (isset($this->error['warning'])) {
			$this->data['error_warning'] = $this->error['warning'];
		} else {
			$this->data['error_warning'] = '';
		}

    // success message
		if (isset($this->session->data['success'])) {
			$this->data['success'] = $this->session->data['success'];
			unset($this->session->data['success']);
		} else {
			$this->data['success'] = '';
		}

    // loading articles list
    $this->load->model('catalog/information');
    $this->data['informations'] = $this->model_catalog_information->getInformations();

    // loading languages
    $this->load->model('localisation/language');
    $languages = $this->model_localisation_language->getLanguages();

		// setting up breadcrumbs
    $this->data['breadcrumbs'] = array();

    $this->data['breadcrumbs'][] = array(
        'text'      => $this->language->get('text_home'),
    'href'      => $this->url->link('common/home', 'token=' . $this->session->data['token'], 'SSL'),
        'separator' => false
    );

    $this->data['breadcrumbs'][] = array(
        'text'      => $this->language->get('text_module'),
    'href'      => $this->url->link('extension/module', 'token=' . $this->session->data['token'], 'SSL'),
        'separator' => ' :: '
    );
  
    $this->data['breadcrumbs'][] = array(
        'text'      => $this->language->get('heading_title'),
    'href'      => $this->url->link('module/moneymaker', 'token=' . $this->session->data['token'], 'SSL'),
        'separator' => ' :: '
    );

		$this->data['action'] = $this->url->link('module/moneymaker', 'token=' . $this->session->data['token'], 'SSL');
		
		$this->data['cancel'] = $this->url->link('extension/module', 'token=' . $this->session->data['token'], 'SSL');

    // header_links
    $this->data['header_links'] = array();
    if (isset($this->request->post['mmr_header_links'])) {
      $this->data['header_links'] = $this->request->post['mmr_header_links'];
    } elseif ($this->config->get('mmr_header_links')) {
      $this->data['header_links'] = $this->config->get('mmr_header_links');
    }
    // header_contacts
    $this->data['header_contacts'] = array();
    if (isset($this->request->post['mmr_header_contacts'])) {
      $this->data['header_contacts'] = $this->request->post['mmr_header_contacts'];
    } elseif ($this->config->get('mmr_header_contacts')) {
      $this->data['header_contacts'] = $this->config->get('mmr_header_contacts');
    }
    // footer_links
    $this->data['footer_links'] = array();
    if (isset($this->request->post['mmr_footer_links'])) {
      $this->data['footer_links'] = $this->request->post['mmr_footer_links'];
    } elseif ($this->config->get('mmr_footer_links')) {
      $this->data['footer_links'] = $this->config->get('mmr_footer_links');
    }

    // qo fields
    $this->data['quickorder_fields'] = array();
    if (isset($this->request->post['mmr_quickorder_fields'])) {
      $this->data['quickorder_fields'] = $this->request->post['mmr_quickorder_fields'];
    } elseif ($this->config->get('mmr_quickorder_fields')) {
      $this->data['quickorder_fields'] = $this->config->get('mmr_quickorder_fields');
    }

    // cb fields
    $this->data['callback_fields'] = array();
    if (isset($this->request->post['mmr_callback_fields'])) {
      $this->data['callback_fields'] = $this->request->post['mmr_callback_fields'];
    } elseif ($this->config->get('mmr_callback_fields')) {
      $this->data['callback_fields'] = $this->config->get('mmr_callback_fields');
    }

    // additional tabs
    $this->data['product_tabs'] = array();
    if (isset($this->request->post['mmr_product_tabs_additional'])) {
      $this->data['product_tabs'] = $this->request->post['mmr_product_tabs_additional'];
    } elseif ($this->config->get('mmr_product_tabs_additional')) {
      $this->data['product_tabs'] = $this->config->get('mmr_product_tabs_additional');
    }

    // advantages
    $this->data['advantages'] = array();
    if (isset($this->request->post['mmr_advantages'])) {
      $this->data['advantages'] = $this->request->post['mmr_advantages'];
    } elseif ($this->config->get('mmr_advantages')) {
      $this->data['advantages'] = $this->config->get('mmr_advantages');
    }

    $this->data['languages'] = $languages;

		$this->template = 'module/moneymaker.tpl';
		$this->children = array(
			'common/header',
			'common/footer'
		);

    if (isset($this->data['mmr_themes_custom_bg_img']) && $this->data['mmr_themes_custom_bg_img'] != "" && file_exists(DIR_IMAGE . $this->data['mmr_themes_custom_bg_img'])) {
      $this->data['mmr_themes_custom_bg_img_preview'] = $this->model_tool_image->resize($this->data['mmr_themes_custom_bg_img'], 70, 70);
    } else {
      $this->data['mmr_themes_custom_bg_img_preview'] = $this->model_tool_image->resize('no_image.jpg', 70, 70);
    }

    $this->data['no_image'] = $this->model_tool_image->resize('no_image.jpg', 70, 70);

    // sending the output
		$this->response->setOutput($this->render());
	}
	
	  // validating
	private function validate() {
		if (!$this->user->hasPermission('modify', 'module/moneymaker')) {
			$this->error['warning'] = $this->language->get('error_permission');
		}

		if (!$this->error) {
			return true;
		} else {
			return false;
		}	
	}
}
?>