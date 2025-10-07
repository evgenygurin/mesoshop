<?php
class ControllerModuleMmrOwlSlideshow extends Controller {
	private $error = array(); 
	
	public function index() {   
		$this->language->load('module/mmr_owl_slideshow');

		$this->document->setTitle(strip_tags($this->language->get('heading_title')));
		
		$this->load->model('setting/setting');

    if (($this->request->server['REQUEST_METHOD'] == 'POST') && $this->validate()) {
      $this->model_setting_setting->editSetting('mmr_owl_slideshow', $this->request->post);
      $this->session->data['success'] = $this->language->get('text_success');
      if(isset($this->request->post['apply']) and $this->request->post['apply'])
        $this->redirect($this->url->link('module/mmr_owl_slideshow', 'token=' . $this->session->data['token'], 'SSL'));
      else
        $this->redirect($this->url->link('extension/module', 'token=' . $this->session->data['token'], 'SSL'));
    }
				
		$this->data['heading_title'] = $this->language->get('heading_title');

		$this->data['text_enabled'] = $this->language->get('text_enabled');
		$this->data['text_disabled'] = $this->language->get('text_disabled');
		$this->data['text_content_top'] = $this->language->get('text_content_top');
		$this->data['text_content_bottom'] = $this->language->get('text_content_bottom');		
		$this->data['text_column_left'] = $this->language->get('text_column_left');
		$this->data['text_column_right'] = $this->language->get('text_column_right');

		$this->data['text_yes'] = $this->language->get('text_yes');
		$this->data['text_no'] = $this->language->get('text_no');

		$this->data['entry_banner'] = $this->language->get('entry_banner');
		$this->data['entry_dimension'] = $this->language->get('entry_dimension'); 
		$this->data['entry_layout'] = $this->language->get('entry_layout');
		$this->data['entry_position'] = $this->language->get('entry_position');
		$this->data['entry_status'] = $this->language->get('entry_status');
		$this->data['entry_sort_order'] = $this->language->get('entry_sort_order');
		$this->data['entry_navigation'] = $this->language->get('entry_navigation');
		$this->data['entry_pagination'] = $this->language->get('entry_pagination');
		$this->data['entry_autoplay'] = $this->language->get('entry_autoplay');
		$this->data['entry_delay'] = $this->language->get('entry_delay');
		$this->data['entry_progress'] = $this->language->get('entry_progress');
		$this->data['entry_items'] = $this->language->get('entry_items');
		$this->data['entry_items_desktop'] = $this->language->get('entry_items_desktop');
		$this->data['entry_items_desktop_small'] = $this->language->get('entry_items_desktop_small');
		$this->data['entry_items_tablet'] = $this->language->get('entry_items_tablet');
		$this->data['entry_items_tablet_small'] = $this->language->get('entry_items_tablet_small');
		$this->data['entry_items_mobile'] = $this->language->get('entry_items_mobile');
		$this->data['entry_css3_transitions'] = $this->language->get('entry_css3_transitions');
		$this->data['entry_css3_transitions_type'] = $this->language->get('entry_css3_transitions_type');

		$this->data['button_save'] = $this->language->get('button_save');
		$this->data['button_cancel'] = $this->language->get('button_cancel');
		$this->data['button_add_module'] = $this->language->get('button_add_module');
		$this->data['button_remove'] = $this->language->get('button_remove');
		$this->data['button_apply'] = $this->language->get('button_apply');

 		if (isset($this->error['warning'])) {
			$this->data['error_warning'] = $this->error['warning'];
		} else {
			$this->data['error_warning'] = '';
		}

    if (isset($this->session->data['success'])) {
      $this->data['success'] = $this->session->data['success'];
      unset($this->session->data['success']);
    } else {
      $this->data['success'] = '';
    }

		if (isset($this->error['dimension'])) {
			$this->data['error_dimension'] = $this->error['dimension'];
		} else {
			$this->data['error_dimension'] = array();
		}
		
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
			'href'      => $this->url->link('module/mmr_owl_slideshow', 'token=' . $this->session->data['token'], 'SSL'),
      		'separator' => ' :: '
   		);
		
		$this->data['action'] = $this->url->link('module/mmr_owl_slideshow', 'token=' . $this->session->data['token'], 'SSL');
		
		$this->data['cancel'] = $this->url->link('extension/module', 'token=' . $this->session->data['token'], 'SSL');
		
		$this->data['modules'] = array();
		
		if (isset($this->request->post['mmr_owl_slideshow_module'])) {
			$this->data['modules'] = $this->request->post['mmr_owl_slideshow_module'];
		} else if ($this->config->get('mmr_owl_slideshow_module')) { 
			$this->data['modules'] = $this->config->get('mmr_owl_slideshow_module');
		}	
						
		$this->load->model('design/layout');
		
		$this->data['layouts'] = $this->model_design_layout->getLayouts();

		$this->load->model('design/banner');
		
		$this->data['banners'] = $this->model_design_banner->getBanners();
		
		$this->template = 'module/mmr_owl_slideshow.tpl';
		$this->children = array(
			'common/header',
			'common/footer'
		);
				
		$this->response->setOutput($this->render());
	}
	
	protected function validate() {
		if (!$this->user->hasPermission('modify', 'module/mmr_owl_slideshow')) {
			$this->error['warning'] = $this->language->get('error_permission');
		}
		
		if (isset($this->request->post['mmr_owl_slideshow_module'])) {
			foreach ($this->request->post['mmr_owl_slideshow_module'] as $key => $value) {
				if (!$value['width'] || !$value['height']) {
					$this->error['dimension'][$key] = $this->language->get('error_dimension');
				}				
			}
		}	
						
		if (!$this->error) {
			return true;
		} else {
			return false;
		}	
	}
}
?>