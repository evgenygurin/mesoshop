<?php  
class ControllerModuleMmrOwlSlideshow extends Controller {
	protected function index($setting) {
		static $module = 0;
		
		$this->load->model('design/banner');
		$this->load->model('tool/image');
		
    $this->document->addScript('catalog/view/javascript/jquery/mmr_owl_slideshow/mmr.owl.carousel.min.js');
    $this->document->addStyle('catalog/view/javascript/jquery/mmr_owl_slideshow/mmr.owl.carousel.css');
    $this->document->addStyle('catalog/view/javascript/jquery/mmr_owl_slideshow/mmr.owl.theme.css');
    $this->document->addStyle('catalog/view/javascript/jquery/mmr_owl_slideshow/mmr.owl.transitions.css');
		
		$this->data['width']  = $setting['width'];
		$this->data['height'] = $setting['height'];

		$this->data['navigation'] = $setting['navigation'];
		$this->data['pagination'] = $setting['pagination'];
		$this->data['autoplay'] = $setting['autoplay'];
		$this->data['delay'] = $setting['delay'];
		$this->data['progress'] = $setting['progress'];
		$this->data['items_desktop'] = $setting['items_desktop'];
		$this->data['items_desktop_small'] = $setting['items_desktop_small'];
		$this->data['items_tablet'] = $setting['items_tablet'];
		$this->data['items_tablet_small'] = $setting['items_tablet_small'];
		$this->data['items_mobile'] = $setting['items_mobile'];
		$this->data['css3_transitions'] = $setting['css3_transitions'];
		$this->data['css3_transitions_type'] = $setting['css3_transitions_type'];

		$this->data['banners'] = array();
		
		if (isset($setting['banner_id'])) {
			$results = $this->model_design_banner->getBanner($setting['banner_id']);
			  
			foreach ($results as $result) {
				if (file_exists(DIR_IMAGE . $result['image'])) {
					$this->data['banners'][] = array(
						'title' => $result['title'],
						'link'  => $result['link'],
						'image' => $this->model_tool_image->resize($result['image'], $setting['width'], $setting['height'])
					);
				}
			}
		}
		
		$this->data['module'] = $module++;
						
		if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/module/mmr_owl_slideshow.tpl')) {
			$this->template = $this->config->get('config_template') . '/template/module/mmr_owl_slideshow.tpl';
		} else {
			$this->template = 'default/template/module/mmr_owl_slideshow.tpl';
		}
		
		$this->render();
	}
}
?>