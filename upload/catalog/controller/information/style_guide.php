<?php
namespace Opencart\Catalog\Controller\Information;

/**
 * Class StyleGuide
 *
 * @package Opencart\Catalog\Controller\Information
 */
class StyleGuide extends \Opencart\System\Engine\Controller {
	/**
	 * Index
	 *
	 * @return ?\Opencart\System\Engine\Action
	 */
	public function index(): ?\Opencart\System\Engine\Action {
		$this->load->language('information/information');

		$this->document->setTitle('Bootstrap 5.3 Style Guide - Component Library');
		$this->document->setDescription('Complete Bootstrap 5.3 component library and style guide for consistent UI development.');
		$this->document->setKeywords('Bootstrap, Components, Style Guide, UI, CSS, HTML, Design System');

		$data['breadcrumbs'] = [];

		$data['breadcrumbs'][] = [
			'text' => $this->language->get('text_home'),
			'href' => $this->url->link('common/home', 'language=' . $this->config->get('config_language'))
		];

		$data['breadcrumbs'][] = [
			'text' => 'Style Guide',
			'href' => $this->url->link('information/style_guide', 'language=' . $this->config->get('config_language'))
		];

		$data['heading_title'] = 'Bootstrap 5.3 Component Library & Style Guide';

		$data['continue'] = $this->url->link('common/home', 'language=' . $this->config->get('config_language'));

		$data['column_left'] = $this->load->controller('common/column_left');
		$data['column_right'] = $this->load->controller('common/column_right');
		$data['content_top'] = $this->load->controller('common/content_top');
		$data['content_bottom'] = $this->load->controller('common/content_bottom');
		$data['footer'] = $this->load->controller('common/footer');
		$data['header'] = $this->load->controller('common/header');

		$this->response->setOutput($this->load->view('information/style-guide', $data));

		return null;
	}
}