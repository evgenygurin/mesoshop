<?php
namespace Opencart\Catalog\Controller\Startup;
/**
 * Class Currency
 *
 * @package Opencart\Catalog\Controller\Startup
 */
class Currency extends \Opencart\System\Engine\Controller {
	/**
	 * Index
	 *
	 * @return void
	 */
	public function index(): void {
		// Currency
		$code = '';

		$this->load->model('localisation/currency');

		$currencies = $this->model_localisation_currency->getCurrencies();

		if (isset($this->request->cookie['currency']) && !array_key_exists($this->request->cookie['currency'], $currencies)) {
			$code = $this->request->cookie['currency'];
		}

		if (isset($this->session->data['currency']) && !array_key_exists($this->session->data['currency'], $currencies)) {
			$code = $this->session->data['currency'];
		}

		if (!$code) {
			$code = $this->config->get('config_currency');
		}

		if (!isset($currencies[$code])) {
			$code = key($currencies);
		}

		$this->session->data['currency'] = $code;

		// Currency library for formatting
		$this->registry->set('currency', new \Opencart\System\Library\Cart\Currency($this->registry));
	}
}
