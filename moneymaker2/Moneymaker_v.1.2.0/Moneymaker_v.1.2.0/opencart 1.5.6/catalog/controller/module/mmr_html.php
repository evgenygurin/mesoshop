<?php  
class ControllerModuleMmrHtml extends Controller {
	protected function index($setting) {

    $this->data['title'] = isset($setting['title'][$this->config->get('config_language_id')]) ? html_entity_decode($setting['title'][$this->config->get('config_language_id')], ENT_QUOTES, 'UTF-8') : '';

		$this->data['message'] = isset($setting['description'][$this->config->get('config_language_id')]) ? html_entity_decode($setting['description'][$this->config->get('config_language_id')], ENT_QUOTES, 'UTF-8') : '';

		if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/module/mmr_html.tpl')) {
			$this->template = $this->config->get('config_template') . '/template/module/mmr_html.tpl';
		} else {
			$this->template = 'default/template/module/mmr_html.tpl';
		}
		
		$this->render();
	}
}
?>