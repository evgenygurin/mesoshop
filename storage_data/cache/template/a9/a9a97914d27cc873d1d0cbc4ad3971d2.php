<?php

use Twig\Environment;
use Twig\Error\LoaderError;
use Twig\Error\RuntimeError;
use Twig\Extension\CoreExtension;
use Twig\Extension\SandboxExtension;
use Twig\Markup;
use Twig\Sandbox\SecurityError;
use Twig\Sandbox\SecurityNotAllowedTagError;
use Twig\Sandbox\SecurityNotAllowedFilterError;
use Twig\Sandbox\SecurityNotAllowedFunctionError;
use Twig\Source;
use Twig\Template;
use Twig\TemplateWrapper;

/* catalog/view/template/account/affiliate.twig */
class __TwigTemplate_ef608886ccac1f60af12a509595de63b extends Template
{
    private Source $source;
    /**
     * @var array<string, Template>
     */
    private array $macros = [];

    public function __construct(Environment $env)
    {
        parent::__construct($env);

        $this->source = $this->getSourceContext();

        $this->parent = false;

        $this->blocks = [
        ];
    }

    protected function doDisplay(array $context, array $blocks = []): iterable
    {
        $macros = $this->macros;
        // line 1
        yield ($context["header"] ?? null);
        yield "
<div id=\"account-affiliate\" class=\"container\">
  <ul class=\"breadcrumb\">
    ";
        // line 4
        $context['_parent'] = $context;
        $context['_seq'] = CoreExtension::ensureTraversable(($context["breadcrumbs"] ?? null));
        foreach ($context['_seq'] as $context["_key"] => $context["breadcrumb"]) {
            // line 5
            yield "      <li class=\"breadcrumb-item\"><a href=\"";
            yield CoreExtension::getAttribute($this->env, $this->source, $context["breadcrumb"], "href", [], "any", false, false, false, 5);
            yield "\">";
            yield CoreExtension::getAttribute($this->env, $this->source, $context["breadcrumb"], "text", [], "any", false, false, false, 5);
            yield "</a></li>
    ";
        }
        $_parent = $context['_parent'];
        unset($context['_seq'], $context['_key'], $context['breadcrumb'], $context['_parent']);
        $context = array_intersect_key($context, $_parent) + $_parent;
        // line 7
        yield "  </ul>
  <div class=\"row\">";
        // line 8
        yield ($context["column_left"] ?? null);
        yield "
    <div id=\"content\" class=\"col\">";
        // line 9
        yield ($context["content_top"] ?? null);
        yield "
      <h1>";
        // line 10
        yield ($context["heading_title"] ?? null);
        yield "</h1>
      <form id=\"form-affiliate\" action=\"";
        // line 11
        yield ($context["save"] ?? null);
        yield "\" method=\"post\" data-oc-toggle=\"ajax\">

        <fieldset>
          <legend>";
        // line 14
        yield ($context["text_my_affiliate"] ?? null);
        yield "</legend>
          <div class=\"row mb-3\">
            <label for=\"input-company\" class=\"col-sm-2 col-form-label\">";
        // line 16
        yield ($context["entry_company"] ?? null);
        yield "</label>
            <div class=\"col-sm-10\">
              <input type=\"text\" name=\"company\" value=\"";
        // line 18
        yield ($context["company"] ?? null);
        yield "\" placeholder=\"";
        yield ($context["entry_company"] ?? null);
        yield "\" id=\"input-company\" class=\"form-control\"/>
            </div>
          </div>
          <div class=\"row mb-3\">
            <label for=\"input-website\" class=\"col-sm-2 col-form-label\">";
        // line 22
        yield ($context["entry_website"] ?? null);
        yield "</label>
            <div class=\"col-sm-10\">
              <input type=\"text\" name=\"website\" value=\"";
        // line 24
        yield ($context["website"] ?? null);
        yield "\" placeholder=\"";
        yield ($context["entry_website"] ?? null);
        yield "\" id=\"input-website\" class=\"form-control\"/>
            </div>
          </div>
        </fieldset>
        <fieldset>
          <legend>";
        // line 29
        yield ($context["text_payment"] ?? null);
        yield "</legend>
          <div class=\"row mb-3\">
            <label for=\"input-tax\" class=\"col-sm-2 col-form-label\">";
        // line 31
        yield ($context["entry_tax"] ?? null);
        yield "</label>
            <div class=\"col-sm-10\">
              <input type=\"text\" name=\"tax\" value=\"";
        // line 33
        yield ($context["tax"] ?? null);
        yield "\" placeholder=\"";
        yield ($context["entry_tax"] ?? null);
        yield "\" id=\"input-tax\" class=\"form-control\"/>
            </div>
          </div>
          <div class=\"row mb-3\">
            <label class=\"col-sm-2 col-form-label\">";
        // line 37
        yield ($context["entry_payment_method"] ?? null);
        yield "</label>
            <div class=\"col-sm-10\">
              <div class=\"form-check\">
                <input type=\"radio\" name=\"payment_method\" value=\"cheque\" id=\"input-payment-cheque\" class=\"form-check-input\"";
        // line 40
        if ((($context["payment_method"] ?? null) == "cheque")) {
            yield " checked";
        }
        yield "/>
                <label for=\"input-payment-cheque\" class=\"form-check-label\">";
        // line 41
        yield ($context["text_cheque"] ?? null);
        yield "</label>
              </div>
              <div class=\"form-check\">
                <input type=\"radio\" name=\"payment_method\" value=\"paypal\" id=\"input-payment-paypal\" class=\"form-check-input\"";
        // line 44
        if ((($context["payment_method"] ?? null) == "paypal")) {
            yield " checked";
        }
        yield "/>
                <label for=\"input-payment-paypal\" class=\"form-check-label\">";
        // line 45
        yield ($context["text_paypal"] ?? null);
        yield "</label>
              </div>
              <div class=\"form-check\">
                <input type=\"radio\" name=\"payment_method\" value=\"bank\" id=\"input-payment-bank\" class=\"form-check-input\"";
        // line 48
        if ((($context["payment_method"] ?? null) == "bank")) {
            yield " checked";
        }
        yield "/>
                <label for=\"input-payment-bank\" class=\"form-check-label\">";
        // line 49
        yield ($context["text_bank"] ?? null);
        yield "</label>
              </div>
              <div id=\"error-payment-method\" class=\"invalid-feedback\"></div>
            </div>
          </div>
          <div class=\"row mb-3 required payment\" id=\"payment-cheque\">
            <label for=\"input-cheque\" class=\"col-sm-2 col-form-label\">";
        // line 55
        yield ($context["entry_cheque"] ?? null);
        yield "</label>
            <div class=\"col-sm-10\">
              <input type=\"text\" name=\"cheque\" value=\"";
        // line 57
        yield ($context["cheque"] ?? null);
        yield "\" placeholder=\"";
        yield ($context["entry_cheque"] ?? null);
        yield "\" id=\"input-cheque\" class=\"form-control\"/>
              <div id=\"error-cheque\" class=\"invalid-feedback\"></div>
            </div>
          </div>
          <div class=\"row mb-3 required payment\" id=\"payment-paypal\">
            <label for=\"input-paypal\" class=\"col-sm-2 col-form-label\">";
        // line 62
        yield ($context["entry_paypal"] ?? null);
        yield "</label>
            <div class=\"col-sm-10\">
              <input type=\"text\" name=\"paypal\" value=\"";
        // line 64
        yield ($context["paypal"] ?? null);
        yield "\" placeholder=\"";
        yield ($context["entry_paypal"] ?? null);
        yield "\" id=\"input-paypal\" class=\"form-control\"/>
              <div id=\"error-paypal\" class=\"invalid-feedback\"></div>
            </div>
          </div>
          <div id=\"payment-bank\" class=\"payment\">
            <div class=\"row mb-3\">
              <label for=\"input-bank-name\" class=\"col-sm-2 col-form-label\">";
        // line 70
        yield ($context["entry_bank_name"] ?? null);
        yield "</label>
              <div class=\"col-sm-10\">
                <input type=\"text\" name=\"bank_name\" value=\"";
        // line 72
        yield ($context["bank_name"] ?? null);
        yield "\" placeholder=\"";
        yield ($context["entry_bank_name"] ?? null);
        yield "\" id=\"input-bank-name\" class=\"form-control\"/>
              </div>
            </div>
            <div class=\"row mb-3\">
              <label for=\"input-bank-branch-number\" class=\"col-sm-2 col-form-label\">";
        // line 76
        yield ($context["entry_bank_branch_number"] ?? null);
        yield "</label>
              <div class=\"col-sm-10\">
                <input type=\"text\" name=\"bank_branch_number\" value=\"";
        // line 78
        yield ($context["bank_branch_number"] ?? null);
        yield "\" placeholder=\"";
        yield ($context["entry_bank_branch_number"] ?? null);
        yield "\" id=\"input-bank-branch-number\" class=\"form-control\"/>
              </div>
            </div>
            <div class=\"row mb-3\">
              <label for=\"input-bank-swift-code\" class=\"col-sm-2 col-form-label\">";
        // line 82
        yield ($context["entry_bank_swift_code"] ?? null);
        yield "</label>
              <div class=\"col-sm-10\">
                <input type=\"text\" name=\"bank_swift_code\" value=\"";
        // line 84
        yield ($context["bank_swift_code"] ?? null);
        yield "\" placeholder=\"";
        yield ($context["entry_bank_swift_code"] ?? null);
        yield "\" id=\"input-bank-swift-code\" class=\"form-control\"/>
              </div>
            </div>
            <div class=\"row mb-3 required row\">
              <label for=\"input-bank-account-name\" class=\"col-sm-2 col-form-label\">";
        // line 88
        yield ($context["entry_bank_account_name"] ?? null);
        yield "</label>
              <div class=\"col-sm-10\">
                <input type=\"text\" name=\"bank_account_name\" value=\"";
        // line 90
        yield ($context["bank_account_name"] ?? null);
        yield "\" placeholder=\"";
        yield ($context["entry_bank_account_name"] ?? null);
        yield "\" id=\"input-bank-account-name\" class=\"form-control\"/>
                <div id=\"error-bank-account-name\" class=\"invalid-feedback\"></div>
              </div>
            </div>
            <div class=\"row mb-3 required row\">
              <label for=\"input-bank-account-number\" class=\"col-sm-2 col-form-label\">";
        // line 95
        yield ($context["entry_bank_account_number"] ?? null);
        yield "</label>
              <div class=\"col-sm-10\">
                <input type=\"text\" name=\"bank_account_number\" value=\"";
        // line 97
        yield ($context["bank_account_number"] ?? null);
        yield "\" placeholder=\"";
        yield ($context["entry_bank_account_number"] ?? null);
        yield "\" id=\"input-bank-account-number\" class=\"form-control\"/>
                <div id=\"error-bank-account-number\" class=\"invalid-feedback\"></div>
              </div>
            </div>
          </div>
          ";
        // line 102
        $context['_parent'] = $context;
        $context['_seq'] = CoreExtension::ensureTraversable(($context["custom_fields"] ?? null));
        foreach ($context['_seq'] as $context["_key"] => $context["custom_field"]) {
            // line 103
            yield "            ";
            if ((CoreExtension::getAttribute($this->env, $this->source, $context["custom_field"], "location", [], "any", false, false, false, 103) == "affiliate")) {
                // line 104
                yield "
              ";
                // line 105
                if ((CoreExtension::getAttribute($this->env, $this->source, $context["custom_field"], "type", [], "any", false, false, false, 105) == "select")) {
                    // line 106
                    yield "                <div class=\"row mb-3";
                    if (CoreExtension::getAttribute($this->env, $this->source, $context["custom_field"], "required", [], "any", false, false, false, 106)) {
                        yield " required";
                    }
                    yield " custom-field\">
                  <label for=\"input-custom-field-";
                    // line 107
                    yield CoreExtension::getAttribute($this->env, $this->source, $context["custom_field"], "custom_field_id", [], "any", false, false, false, 107);
                    yield "\" class=\"col-sm-2 col-form-label\">";
                    yield CoreExtension::getAttribute($this->env, $this->source, $context["custom_field"], "name", [], "any", false, false, false, 107);
                    yield "</label>
                  <div class=\"col-sm-10\">
                    <select name=\"custom_field[";
                    // line 109
                    yield CoreExtension::getAttribute($this->env, $this->source, $context["custom_field"], "custom_field_id", [], "any", false, false, false, 109);
                    yield "]\" id=\"input-custom-field-";
                    yield CoreExtension::getAttribute($this->env, $this->source, $context["custom_field"], "custom_field_id", [], "any", false, false, false, 109);
                    yield "\" class=\"form-select\">
                      <option value=\"\">";
                    // line 110
                    yield ($context["text_select"] ?? null);
                    yield "</option>
                      ";
                    // line 111
                    $context['_parent'] = $context;
                    $context['_seq'] = CoreExtension::ensureTraversable(CoreExtension::getAttribute($this->env, $this->source, $context["custom_field"], "custom_field_value", [], "any", false, false, false, 111));
                    foreach ($context['_seq'] as $context["_key"] => $context["custom_field_value"]) {
                        // line 112
                        yield "                        <option value=\"";
                        yield CoreExtension::getAttribute($this->env, $this->source, $context["custom_field_value"], "custom_field_value_id", [], "any", false, false, false, 112);
                        yield "\"";
                        if (((($_v0 = ($context["affiliate_custom_field"] ?? null)) && is_array($_v0) || $_v0 instanceof ArrayAccess ? ($_v0[CoreExtension::getAttribute($this->env, $this->source, $context["custom_field"], "custom_field_id", [], "any", false, false, false, 112)] ?? null) : null) && (CoreExtension::getAttribute($this->env, $this->source, $context["custom_field_value"], "custom_field_value_id", [], "any", false, false, false, 112) == (($_v1 = ($context["affiliate_custom_field"] ?? null)) && is_array($_v1) || $_v1 instanceof ArrayAccess ? ($_v1[CoreExtension::getAttribute($this->env, $this->source, $context["custom_field"], "custom_field_id", [], "any", false, false, false, 112)] ?? null) : null)))) {
                            yield " selected";
                        }
                        yield ">";
                        yield CoreExtension::getAttribute($this->env, $this->source, $context["custom_field_value"], "name", [], "any", false, false, false, 112);
                        yield "</option>
                      ";
                    }
                    $_parent = $context['_parent'];
                    unset($context['_seq'], $context['_key'], $context['custom_field_value'], $context['_parent']);
                    $context = array_intersect_key($context, $_parent) + $_parent;
                    // line 114
                    yield "                    </select>
                    <div id=\"error-custom-field-";
                    // line 115
                    yield CoreExtension::getAttribute($this->env, $this->source, $context["custom_field"], "custom_field_id", [], "any", false, false, false, 115);
                    yield "\" class=\"invalid-feedback\"></div>
                  </div>
                </div>
              ";
                }
                // line 119
                yield "
              ";
                // line 120
                if ((CoreExtension::getAttribute($this->env, $this->source, $context["custom_field"], "type", [], "any", false, false, false, 120) == "radio")) {
                    // line 121
                    yield "                <div class=\"row mb-3";
                    if (CoreExtension::getAttribute($this->env, $this->source, $context["custom_field"], "required", [], "any", false, false, false, 121)) {
                        yield " required";
                    }
                    yield " custom-field\">
                  <label class=\"col-sm-2 col-form-label\">";
                    // line 122
                    yield CoreExtension::getAttribute($this->env, $this->source, $context["custom_field"], "name", [], "any", false, false, false, 122);
                    yield "</label>
                  <div class=\"col-sm-10\">
                    <div id=\"input-custom-field-";
                    // line 124
                    yield CoreExtension::getAttribute($this->env, $this->source, $context["custom_field"], "custom_field_id", [], "any", false, false, false, 124);
                    yield "\">
                      ";
                    // line 125
                    $context['_parent'] = $context;
                    $context['_seq'] = CoreExtension::ensureTraversable(CoreExtension::getAttribute($this->env, $this->source, $context["custom_field"], "custom_field_value", [], "any", false, false, false, 125));
                    foreach ($context['_seq'] as $context["_key"] => $context["custom_field_value"]) {
                        // line 126
                        yield "                        <div class=\"form-check\">
                          <input type=\"radio\" name=\"custom_field[";
                        // line 127
                        yield CoreExtension::getAttribute($this->env, $this->source, $context["custom_field"], "custom_field_id", [], "any", false, false, false, 127);
                        yield "]\" value=\"";
                        yield CoreExtension::getAttribute($this->env, $this->source, $context["custom_field_value"], "custom_field_value_id", [], "any", false, false, false, 127);
                        yield "\" id=\"input-custom-value-";
                        yield CoreExtension::getAttribute($this->env, $this->source, $context["custom_field_value"], "custom_field_value_id", [], "any", false, false, false, 127);
                        yield "\" class=\"form-check-input\"";
                        if (((($_v2 = ($context["affiliate_custom_field"] ?? null)) && is_array($_v2) || $_v2 instanceof ArrayAccess ? ($_v2[CoreExtension::getAttribute($this->env, $this->source, $context["custom_field"], "custom_field_id", [], "any", false, false, false, 127)] ?? null) : null) && (CoreExtension::getAttribute($this->env, $this->source, $context["custom_field_value"], "custom_field_value_id", [], "any", false, false, false, 127) == (($_v3 = ($context["affiliate_custom_field"] ?? null)) && is_array($_v3) || $_v3 instanceof ArrayAccess ? ($_v3[CoreExtension::getAttribute($this->env, $this->source, $context["custom_field"], "custom_field_id", [], "any", false, false, false, 127)] ?? null) : null)))) {
                            yield " checked";
                        }
                        yield "/> <label for=\"input-custom-value-";
                        yield CoreExtension::getAttribute($this->env, $this->source, $context["custom_field_value"], "custom_field_value_id", [], "any", false, false, false, 127);
                        yield "\" class=\"form-check-label\">";
                        yield CoreExtension::getAttribute($this->env, $this->source, $context["custom_field_value"], "name", [], "any", false, false, false, 127);
                        yield "</label>
                        </div>
                      ";
                    }
                    $_parent = $context['_parent'];
                    unset($context['_seq'], $context['_key'], $context['custom_field_value'], $context['_parent']);
                    $context = array_intersect_key($context, $_parent) + $_parent;
                    // line 130
                    yield "                    </div>
                    <div id=\"error-custom-field-";
                    // line 131
                    yield CoreExtension::getAttribute($this->env, $this->source, $context["custom_field"], "custom_field_id", [], "any", false, false, false, 131);
                    yield "\" class=\"invalid-feedback\"></div>
                  </div>
                </div>
              ";
                }
                // line 135
                yield "
              ";
                // line 136
                if ((CoreExtension::getAttribute($this->env, $this->source, $context["custom_field"], "type", [], "any", false, false, false, 136) == "checkbox")) {
                    // line 137
                    yield "                <div class=\"row mb-3";
                    if (CoreExtension::getAttribute($this->env, $this->source, $context["custom_field"], "required", [], "any", false, false, false, 137)) {
                        yield " required";
                    }
                    yield " custom-field\">
                  <label class=\"col-sm-2 col-form-label\">";
                    // line 138
                    yield CoreExtension::getAttribute($this->env, $this->source, $context["custom_field"], "name", [], "any", false, false, false, 138);
                    yield "</label>
                  <div class=\"col-sm-10\">
                    <div id=\"input-custom-field-";
                    // line 140
                    yield CoreExtension::getAttribute($this->env, $this->source, $context["custom_field"], "custom_field_id", [], "any", false, false, false, 140);
                    yield "\">
                      ";
                    // line 141
                    $context['_parent'] = $context;
                    $context['_seq'] = CoreExtension::ensureTraversable(CoreExtension::getAttribute($this->env, $this->source, $context["custom_field"], "custom_field_value", [], "any", false, false, false, 141));
                    foreach ($context['_seq'] as $context["_key"] => $context["custom_field_value"]) {
                        // line 142
                        yield "                        <div class=\"form-check\">
                          <input type=\"checkbox\" name=\"custom_field[";
                        // line 143
                        yield CoreExtension::getAttribute($this->env, $this->source, $context["custom_field"], "custom_field_id", [], "any", false, false, false, 143);
                        yield "]\" value=\"";
                        yield CoreExtension::getAttribute($this->env, $this->source, $context["custom_field_value"], "custom_field_value_id", [], "any", false, false, false, 143);
                        yield "\" id=\"input-custom-value-";
                        yield CoreExtension::getAttribute($this->env, $this->source, $context["custom_field_value"], "custom_field_value_id", [], "any", false, false, false, 143);
                        yield "\" class=\"form-check-input\"";
                        if (((($_v4 = ($context["affiliate_custom_field"] ?? null)) && is_array($_v4) || $_v4 instanceof ArrayAccess ? ($_v4[CoreExtension::getAttribute($this->env, $this->source, $context["custom_field"], "custom_field_id", [], "any", false, false, false, 143)] ?? null) : null) && CoreExtension::inFilter(CoreExtension::getAttribute($this->env, $this->source, $context["custom_field_value"], "custom_field_value_id", [], "any", false, false, false, 143), (($_v5 = ($context["affiliate_custom_field"] ?? null)) && is_array($_v5) || $_v5 instanceof ArrayAccess ? ($_v5[CoreExtension::getAttribute($this->env, $this->source, $context["custom_field"], "custom_field_id", [], "any", false, false, false, 143)] ?? null) : null)))) {
                            yield " checked";
                        }
                        yield "/> <label for=\"input-custom-value-";
                        yield CoreExtension::getAttribute($this->env, $this->source, $context["custom_field_value"], "custom_field_value_id", [], "any", false, false, false, 143);
                        yield "\" class=\"form-check-label\">";
                        yield CoreExtension::getAttribute($this->env, $this->source, $context["custom_field_value"], "name", [], "any", false, false, false, 143);
                        yield "</label>
                        </div>
                      ";
                    }
                    $_parent = $context['_parent'];
                    unset($context['_seq'], $context['_key'], $context['custom_field_value'], $context['_parent']);
                    $context = array_intersect_key($context, $_parent) + $_parent;
                    // line 146
                    yield "                    </div>
                    <div id=\"error-custom-field-";
                    // line 147
                    yield CoreExtension::getAttribute($this->env, $this->source, $context["custom_field"], "custom_field_id", [], "any", false, false, false, 147);
                    yield "\" class=\"invalid-feedback\"></div>
                  </div>
                </div>
              ";
                }
                // line 151
                yield "
              ";
                // line 152
                if ((CoreExtension::getAttribute($this->env, $this->source, $context["custom_field"], "type", [], "any", false, false, false, 152) == "text")) {
                    // line 153
                    yield "                <div class=\"row mb-3";
                    if (CoreExtension::getAttribute($this->env, $this->source, $context["custom_field"], "required", [], "any", false, false, false, 153)) {
                        yield " required";
                    }
                    yield " custom-field\">
                  <label for=\"input-custom-field-";
                    // line 154
                    yield CoreExtension::getAttribute($this->env, $this->source, $context["custom_field"], "custom_field_id", [], "any", false, false, false, 154);
                    yield "\" class=\"col-sm-2 col-form-label\">";
                    yield CoreExtension::getAttribute($this->env, $this->source, $context["custom_field"], "name", [], "any", false, false, false, 154);
                    yield "</label>
                  <div class=\"col-sm-10\">
                    <input type=\"text\" name=\"custom_field[";
                    // line 156
                    yield CoreExtension::getAttribute($this->env, $this->source, $context["custom_field"], "custom_field_id", [], "any", false, false, false, 156);
                    yield "]\" value=\"";
                    if ((($_v6 = ($context["affiliate_custom_field"] ?? null)) && is_array($_v6) || $_v6 instanceof ArrayAccess ? ($_v6[CoreExtension::getAttribute($this->env, $this->source, $context["custom_field"], "custom_field_id", [], "any", false, false, false, 156)] ?? null) : null)) {
                        yield (($_v7 = ($context["affiliate_custom_field"] ?? null)) && is_array($_v7) || $_v7 instanceof ArrayAccess ? ($_v7[CoreExtension::getAttribute($this->env, $this->source, $context["custom_field"], "custom_field_id", [], "any", false, false, false, 156)] ?? null) : null);
                    } else {
                        yield CoreExtension::getAttribute($this->env, $this->source, $context["custom_field"], "value", [], "any", false, false, false, 156);
                    }
                    yield "\" placeholder=\"";
                    yield CoreExtension::getAttribute($this->env, $this->source, $context["custom_field"], "name", [], "any", false, false, false, 156);
                    yield "\" id=\"input-custom-field-";
                    yield CoreExtension::getAttribute($this->env, $this->source, $context["custom_field"], "custom_field_id", [], "any", false, false, false, 156);
                    yield "\" class=\"form-control\"/>
                    <div id=\"error-custom-field-";
                    // line 157
                    yield CoreExtension::getAttribute($this->env, $this->source, $context["custom_field"], "custom_field_id", [], "any", false, false, false, 157);
                    yield "\" class=\"invalid-feedback\"></div>
                  </div>
                </div>
              ";
                }
                // line 161
                yield "
              ";
                // line 162
                if ((CoreExtension::getAttribute($this->env, $this->source, $context["custom_field"], "type", [], "any", false, false, false, 162) == "textarea")) {
                    // line 163
                    yield "                <div class=\"row mb-3";
                    if (CoreExtension::getAttribute($this->env, $this->source, $context["custom_field"], "required", [], "any", false, false, false, 163)) {
                        yield " required";
                    }
                    yield " custom-field\">
                  <label for=\"input-custom-field-";
                    // line 164
                    yield CoreExtension::getAttribute($this->env, $this->source, $context["custom_field"], "custom_field_id", [], "any", false, false, false, 164);
                    yield "\" class=\"col-sm-2 col-form-label\">";
                    yield CoreExtension::getAttribute($this->env, $this->source, $context["custom_field"], "name", [], "any", false, false, false, 164);
                    yield "</label>
                  <div class=\"col-sm-10\">
                    <textarea name=\"custom_field[";
                    // line 166
                    yield CoreExtension::getAttribute($this->env, $this->source, $context["custom_field"], "custom_field_id", [], "any", false, false, false, 166);
                    yield "]\" rows=\"5\" placeholder=\"";
                    yield CoreExtension::getAttribute($this->env, $this->source, $context["custom_field"], "name", [], "any", false, false, false, 166);
                    yield "\" id=\"input-custom-field-";
                    yield CoreExtension::getAttribute($this->env, $this->source, $context["custom_field"], "custom_field_id", [], "any", false, false, false, 166);
                    yield "\" class=\"form-control\">";
                    if ((($_v8 = ($context["affiliate_custom_field"] ?? null)) && is_array($_v8) || $_v8 instanceof ArrayAccess ? ($_v8[CoreExtension::getAttribute($this->env, $this->source, $context["custom_field"], "custom_field_id", [], "any", false, false, false, 166)] ?? null) : null)) {
                        yield (($_v9 = ($context["affiliate_custom_field"] ?? null)) && is_array($_v9) || $_v9 instanceof ArrayAccess ? ($_v9[CoreExtension::getAttribute($this->env, $this->source, $context["custom_field"], "custom_field_id", [], "any", false, false, false, 166)] ?? null) : null);
                    } else {
                        yield CoreExtension::getAttribute($this->env, $this->source, $context["custom_field"], "value", [], "any", false, false, false, 166);
                    }
                    yield "</textarea>
                    <div id=\"error-custom-field-";
                    // line 167
                    yield CoreExtension::getAttribute($this->env, $this->source, $context["custom_field"], "custom_field_id", [], "any", false, false, false, 167);
                    yield "\" class=\"invalid-feedback\"></div>
                  </div>
                </div>
              ";
                }
                // line 171
                yield "
              ";
                // line 172
                if ((CoreExtension::getAttribute($this->env, $this->source, $context["custom_field"], "type", [], "any", false, false, false, 172) == "file")) {
                    // line 173
                    yield "                <div class=\"row mb-3";
                    if (CoreExtension::getAttribute($this->env, $this->source, $context["custom_field"], "required", [], "any", false, false, false, 173)) {
                        yield " required";
                    }
                    yield " custom-field\">
                  <label class=\"col-sm-2 col-form-label\">";
                    // line 174
                    yield CoreExtension::getAttribute($this->env, $this->source, $context["custom_field"], "name", [], "any", false, false, false, 174);
                    yield "</label>
                  <div class=\"col-sm-10\">
                    <div>
                      <button type=\"button\" data-oc-toggle=\"upload\" data-oc-url=\"";
                    // line 177
                    yield ($context["upload"] ?? null);
                    yield "\" data-oc-size-max=\"";
                    yield ($context["config_file_max_size"] ?? null);
                    yield "\" data-oc-size-error=\"";
                    yield ($context["error_upload_size"] ?? null);
                    yield "\" data-oc-target=\"#input-custom-field-";
                    yield CoreExtension::getAttribute($this->env, $this->source, $context["custom_field"], "custom_field_id", [], "any", false, false, false, 177);
                    yield "\" class=\"btn btn-light\"><i class=\"fa-solid fa-upload\"></i> ";
                    yield ($context["button_upload"] ?? null);
                    yield "</button>
                      <input type=\"hidden\" name=\"custom_field[";
                    // line 178
                    yield CoreExtension::getAttribute($this->env, $this->source, $context["custom_field"], "custom_field_id", [], "any", false, false, false, 178);
                    yield "]\" value=\"";
                    if ((($_v10 = ($context["affiliate_custom_field"] ?? null)) && is_array($_v10) || $_v10 instanceof ArrayAccess ? ($_v10[CoreExtension::getAttribute($this->env, $this->source, $context["custom_field"], "custom_field_id", [], "any", false, false, false, 178)] ?? null) : null)) {
                        yield (($_v11 = ($context["affiliate_custom_field"] ?? null)) && is_array($_v11) || $_v11 instanceof ArrayAccess ? ($_v11[CoreExtension::getAttribute($this->env, $this->source, $context["custom_field"], "custom_field_id", [], "any", false, false, false, 178)] ?? null) : null);
                    }
                    yield "\" id=\"input-custom-field-";
                    yield CoreExtension::getAttribute($this->env, $this->source, $context["custom_field"], "custom_field_id", [], "any", false, false, false, 178);
                    yield "\"/>
                    </div>
                    <div id=\"error-custom-field-";
                    // line 180
                    yield CoreExtension::getAttribute($this->env, $this->source, $context["custom_field"], "custom_field_id", [], "any", false, false, false, 180);
                    yield "\" class=\"invalid-feedback\"></div>
                  </div>
                </div>
              ";
                }
                // line 184
                yield "
              ";
                // line 185
                if ((CoreExtension::getAttribute($this->env, $this->source, $context["custom_field"], "type", [], "any", false, false, false, 185) == "date")) {
                    // line 186
                    yield "                <div class=\"row mb-3";
                    if (CoreExtension::getAttribute($this->env, $this->source, $context["custom_field"], "required", [], "any", false, false, false, 186)) {
                        yield " required";
                    }
                    yield " custom-field\">
                  <label for=\"input-custom-field-";
                    // line 187
                    yield CoreExtension::getAttribute($this->env, $this->source, $context["custom_field"], "custom_field_id", [], "any", false, false, false, 187);
                    yield "\" class=\"col-sm-2 col-form-label\">";
                    yield CoreExtension::getAttribute($this->env, $this->source, $context["custom_field"], "name", [], "any", false, false, false, 187);
                    yield "</label>
                  <div class=\"col-sm-10\">
                    <input type=\"date\" name=\"custom_field[";
                    // line 189
                    yield CoreExtension::getAttribute($this->env, $this->source, $context["custom_field"], "custom_field_id", [], "any", false, false, false, 189);
                    yield "]\" value=\"";
                    if ((($_v12 = ($context["affiliate_custom_field"] ?? null)) && is_array($_v12) || $_v12 instanceof ArrayAccess ? ($_v12[CoreExtension::getAttribute($this->env, $this->source, $context["custom_field"], "custom_field_id", [], "any", false, false, false, 189)] ?? null) : null)) {
                        yield (($_v13 = ($context["affiliate_custom_field"] ?? null)) && is_array($_v13) || $_v13 instanceof ArrayAccess ? ($_v13[CoreExtension::getAttribute($this->env, $this->source, $context["custom_field"], "custom_field_id", [], "any", false, false, false, 189)] ?? null) : null);
                    } else {
                        yield CoreExtension::getAttribute($this->env, $this->source, $context["custom_field"], "value", [], "any", false, false, false, 189);
                    }
                    yield "\" placeholder=\"";
                    yield CoreExtension::getAttribute($this->env, $this->source, $context["custom_field"], "name", [], "any", false, false, false, 189);
                    yield "\" id=\"input-custom-field-";
                    yield CoreExtension::getAttribute($this->env, $this->source, $context["custom_field"], "custom_field_id", [], "any", false, false, false, 189);
                    yield "\" class=\"form-control\"/>
                    <div id=\"error-custom-field-";
                    // line 190
                    yield CoreExtension::getAttribute($this->env, $this->source, $context["custom_field"], "custom_field_id", [], "any", false, false, false, 190);
                    yield "\" class=\"invalid-feedback\"></div>
                  </div>
                </div>
              ";
                }
                // line 194
                yield "
              ";
                // line 195
                if ((CoreExtension::getAttribute($this->env, $this->source, $context["custom_field"], "type", [], "any", false, false, false, 195) == "time")) {
                    // line 196
                    yield "                <div class=\"row mb-3";
                    if (CoreExtension::getAttribute($this->env, $this->source, $context["custom_field"], "required", [], "any", false, false, false, 196)) {
                        yield " required";
                    }
                    yield " custom-field\">
                  <label for=\"input-custom-field-";
                    // line 197
                    yield CoreExtension::getAttribute($this->env, $this->source, $context["custom_field"], "custom_field_id", [], "any", false, false, false, 197);
                    yield "\" class=\"col-sm-2 col-form-label\">";
                    yield CoreExtension::getAttribute($this->env, $this->source, $context["custom_field"], "name", [], "any", false, false, false, 197);
                    yield "</label>
                  <div class=\"col-sm-10\">
                    <input type=\"time\" name=\"custom_field[";
                    // line 199
                    yield CoreExtension::getAttribute($this->env, $this->source, $context["custom_field"], "custom_field_id", [], "any", false, false, false, 199);
                    yield "]\" value=\"";
                    if ((($_v14 = ($context["affiliate_custom_field"] ?? null)) && is_array($_v14) || $_v14 instanceof ArrayAccess ? ($_v14[CoreExtension::getAttribute($this->env, $this->source, $context["custom_field"], "custom_field_id", [], "any", false, false, false, 199)] ?? null) : null)) {
                        yield (($_v15 = ($context["affiliate_custom_field"] ?? null)) && is_array($_v15) || $_v15 instanceof ArrayAccess ? ($_v15[CoreExtension::getAttribute($this->env, $this->source, $context["custom_field"], "custom_field_id", [], "any", false, false, false, 199)] ?? null) : null);
                    } else {
                        yield CoreExtension::getAttribute($this->env, $this->source, $context["custom_field"], "value", [], "any", false, false, false, 199);
                    }
                    yield "\" placeholder=\"";
                    yield CoreExtension::getAttribute($this->env, $this->source, $context["custom_field"], "name", [], "any", false, false, false, 199);
                    yield "\" id=\"input-custom-field-";
                    yield CoreExtension::getAttribute($this->env, $this->source, $context["custom_field"], "custom_field_id", [], "any", false, false, false, 199);
                    yield "\" class=\"form-control\"/>
                    <div id=\"error-custom-field-";
                    // line 200
                    yield CoreExtension::getAttribute($this->env, $this->source, $context["custom_field"], "custom_field_id", [], "any", false, false, false, 200);
                    yield "\" class=\"invalid-feedback\"></div>
                  </div>
                </div>
              ";
                }
                // line 204
                yield "
              ";
                // line 205
                if ((CoreExtension::getAttribute($this->env, $this->source, $context["custom_field"], "type", [], "any", false, false, false, 205) == "datetime")) {
                    // line 206
                    yield "                <div class=\"row mb-3";
                    if (CoreExtension::getAttribute($this->env, $this->source, $context["custom_field"], "required", [], "any", false, false, false, 206)) {
                        yield " required";
                    }
                    yield " custom-field\">
                  <label for=\"input-custom-field-";
                    // line 207
                    yield CoreExtension::getAttribute($this->env, $this->source, $context["custom_field"], "custom_field_id", [], "any", false, false, false, 207);
                    yield "\" class=\"col-sm-2 col-form-label\">";
                    yield CoreExtension::getAttribute($this->env, $this->source, $context["custom_field"], "name", [], "any", false, false, false, 207);
                    yield "</label>
                  <div class=\"col-sm-10\">
                    <input type=\"datetime-local\" name=\"custom_field[";
                    // line 209
                    yield CoreExtension::getAttribute($this->env, $this->source, $context["custom_field"], "custom_field_id", [], "any", false, false, false, 209);
                    yield "]\" value=\"";
                    if ((($_v16 = ($context["affiliate_custom_field"] ?? null)) && is_array($_v16) || $_v16 instanceof ArrayAccess ? ($_v16[CoreExtension::getAttribute($this->env, $this->source, $context["custom_field"], "custom_field_id", [], "any", false, false, false, 209)] ?? null) : null)) {
                        yield (($_v17 = ($context["affiliate_custom_field"] ?? null)) && is_array($_v17) || $_v17 instanceof ArrayAccess ? ($_v17[CoreExtension::getAttribute($this->env, $this->source, $context["custom_field"], "custom_field_id", [], "any", false, false, false, 209)] ?? null) : null);
                    } else {
                        yield CoreExtension::getAttribute($this->env, $this->source, $context["custom_field"], "value", [], "any", false, false, false, 209);
                    }
                    yield "\" placeholder=\"";
                    yield CoreExtension::getAttribute($this->env, $this->source, $context["custom_field"], "name", [], "any", false, false, false, 209);
                    yield "\" id=\"input-custom-field-";
                    yield CoreExtension::getAttribute($this->env, $this->source, $context["custom_field"], "custom_field_id", [], "any", false, false, false, 209);
                    yield "\" class=\"form-control\"/>
                    <div id=\"error-custom-field-";
                    // line 210
                    yield CoreExtension::getAttribute($this->env, $this->source, $context["custom_field"], "custom_field_id", [], "any", false, false, false, 210);
                    yield "\" class=\"invalid-feedback\"></div>
                  </div>
                </div>
              ";
                }
                // line 214
                yield "
            ";
            }
            // line 216
            yield "          ";
        }
        $_parent = $context['_parent'];
        unset($context['_seq'], $context['_key'], $context['custom_field'], $context['_parent']);
        $context = array_intersect_key($context, $_parent) + $_parent;
        // line 217
        yield "        </fieldset>
        <div class=\"text-end\">
          ";
        // line 219
        if (($context["text_agree"] ?? null)) {
            // line 220
            yield "            <div class=\"form-check form-switch form-switch-lg form-check-reverse form-check-inline\">
              <label class=\"form-check-label\">";
            // line 221
            yield ($context["text_agree"] ?? null);
            yield "</label>
              <input type=\"hidden\" name=\"agree\" value=\"0\"/>
              <input type=\"checkbox\" name=\"agree\" value=\"1\" id=\"input-agree\" class=\"form-check-input\"/>
            </div>
          ";
        }
        // line 226
        yield "          <button type=\"submit\" class=\"btn btn-primary\">";
        yield ($context["button_continue"] ?? null);
        yield "</button>
        </div>
      </form>
      ";
        // line 229
        yield ($context["content_bottom"] ?? null);
        yield "</div>
    ";
        // line 230
        yield ($context["column_right"] ?? null);
        yield "</div>
</div>
<script type=\"text/javascript\"><!--
\$('input[name=\\'payment_method\\']').on('change', function() {
    \$('.payment').hide();

    \$('#payment-' + this.value).show();
});

\$('input[name=\\'payment_method\\']:checked').trigger('change');
//--></script>
";
        // line 241
        yield ($context["footer"] ?? null);
        yield "
";
        yield from [];
    }

    /**
     * @codeCoverageIgnore
     */
    public function getTemplateName(): string
    {
        return "catalog/view/template/account/affiliate.twig";
    }

    /**
     * @codeCoverageIgnore
     */
    public function isTraitable(): bool
    {
        return false;
    }

    /**
     * @codeCoverageIgnore
     */
    public function getDebugInfo(): array
    {
        return array (  768 => 241,  754 => 230,  750 => 229,  743 => 226,  735 => 221,  732 => 220,  730 => 219,  726 => 217,  720 => 216,  716 => 214,  709 => 210,  695 => 209,  688 => 207,  681 => 206,  679 => 205,  676 => 204,  669 => 200,  655 => 199,  648 => 197,  641 => 196,  639 => 195,  636 => 194,  629 => 190,  615 => 189,  608 => 187,  601 => 186,  599 => 185,  596 => 184,  589 => 180,  578 => 178,  566 => 177,  560 => 174,  553 => 173,  551 => 172,  548 => 171,  541 => 167,  527 => 166,  520 => 164,  513 => 163,  511 => 162,  508 => 161,  501 => 157,  487 => 156,  480 => 154,  473 => 153,  471 => 152,  468 => 151,  461 => 147,  458 => 146,  437 => 143,  434 => 142,  430 => 141,  426 => 140,  421 => 138,  414 => 137,  412 => 136,  409 => 135,  402 => 131,  399 => 130,  378 => 127,  375 => 126,  371 => 125,  367 => 124,  362 => 122,  355 => 121,  353 => 120,  350 => 119,  343 => 115,  340 => 114,  325 => 112,  321 => 111,  317 => 110,  311 => 109,  304 => 107,  297 => 106,  295 => 105,  292 => 104,  289 => 103,  285 => 102,  275 => 97,  270 => 95,  260 => 90,  255 => 88,  246 => 84,  241 => 82,  232 => 78,  227 => 76,  218 => 72,  213 => 70,  202 => 64,  197 => 62,  187 => 57,  182 => 55,  173 => 49,  167 => 48,  161 => 45,  155 => 44,  149 => 41,  143 => 40,  137 => 37,  128 => 33,  123 => 31,  118 => 29,  108 => 24,  103 => 22,  94 => 18,  89 => 16,  84 => 14,  78 => 11,  74 => 10,  70 => 9,  66 => 8,  63 => 7,  52 => 5,  48 => 4,  42 => 1,);
    }

    public function getSourceContext(): Source
    {
        return new Source("{{ header }}
<div id=\"account-affiliate\" class=\"container\">
  <ul class=\"breadcrumb\">
    {% for breadcrumb in breadcrumbs %}
      <li class=\"breadcrumb-item\"><a href=\"{{ breadcrumb.href }}\">{{ breadcrumb.text }}</a></li>
    {% endfor %}
  </ul>
  <div class=\"row\">{{ column_left }}
    <div id=\"content\" class=\"col\">{{ content_top }}
      <h1>{{ heading_title }}</h1>
      <form id=\"form-affiliate\" action=\"{{ save }}\" method=\"post\" data-oc-toggle=\"ajax\">

        <fieldset>
          <legend>{{ text_my_affiliate }}</legend>
          <div class=\"row mb-3\">
            <label for=\"input-company\" class=\"col-sm-2 col-form-label\">{{ entry_company }}</label>
            <div class=\"col-sm-10\">
              <input type=\"text\" name=\"company\" value=\"{{ company }}\" placeholder=\"{{ entry_company }}\" id=\"input-company\" class=\"form-control\"/>
            </div>
          </div>
          <div class=\"row mb-3\">
            <label for=\"input-website\" class=\"col-sm-2 col-form-label\">{{ entry_website }}</label>
            <div class=\"col-sm-10\">
              <input type=\"text\" name=\"website\" value=\"{{ website }}\" placeholder=\"{{ entry_website }}\" id=\"input-website\" class=\"form-control\"/>
            </div>
          </div>
        </fieldset>
        <fieldset>
          <legend>{{ text_payment }}</legend>
          <div class=\"row mb-3\">
            <label for=\"input-tax\" class=\"col-sm-2 col-form-label\">{{ entry_tax }}</label>
            <div class=\"col-sm-10\">
              <input type=\"text\" name=\"tax\" value=\"{{ tax }}\" placeholder=\"{{ entry_tax }}\" id=\"input-tax\" class=\"form-control\"/>
            </div>
          </div>
          <div class=\"row mb-3\">
            <label class=\"col-sm-2 col-form-label\">{{ entry_payment_method }}</label>
            <div class=\"col-sm-10\">
              <div class=\"form-check\">
                <input type=\"radio\" name=\"payment_method\" value=\"cheque\" id=\"input-payment-cheque\" class=\"form-check-input\"{% if payment_method == 'cheque' %} checked{% endif %}/>
                <label for=\"input-payment-cheque\" class=\"form-check-label\">{{ text_cheque }}</label>
              </div>
              <div class=\"form-check\">
                <input type=\"radio\" name=\"payment_method\" value=\"paypal\" id=\"input-payment-paypal\" class=\"form-check-input\"{% if payment_method == 'paypal' %} checked{% endif %}/>
                <label for=\"input-payment-paypal\" class=\"form-check-label\">{{ text_paypal }}</label>
              </div>
              <div class=\"form-check\">
                <input type=\"radio\" name=\"payment_method\" value=\"bank\" id=\"input-payment-bank\" class=\"form-check-input\"{% if payment_method == 'bank' %} checked{% endif %}/>
                <label for=\"input-payment-bank\" class=\"form-check-label\">{{ text_bank }}</label>
              </div>
              <div id=\"error-payment-method\" class=\"invalid-feedback\"></div>
            </div>
          </div>
          <div class=\"row mb-3 required payment\" id=\"payment-cheque\">
            <label for=\"input-cheque\" class=\"col-sm-2 col-form-label\">{{ entry_cheque }}</label>
            <div class=\"col-sm-10\">
              <input type=\"text\" name=\"cheque\" value=\"{{ cheque }}\" placeholder=\"{{ entry_cheque }}\" id=\"input-cheque\" class=\"form-control\"/>
              <div id=\"error-cheque\" class=\"invalid-feedback\"></div>
            </div>
          </div>
          <div class=\"row mb-3 required payment\" id=\"payment-paypal\">
            <label for=\"input-paypal\" class=\"col-sm-2 col-form-label\">{{ entry_paypal }}</label>
            <div class=\"col-sm-10\">
              <input type=\"text\" name=\"paypal\" value=\"{{ paypal }}\" placeholder=\"{{ entry_paypal }}\" id=\"input-paypal\" class=\"form-control\"/>
              <div id=\"error-paypal\" class=\"invalid-feedback\"></div>
            </div>
          </div>
          <div id=\"payment-bank\" class=\"payment\">
            <div class=\"row mb-3\">
              <label for=\"input-bank-name\" class=\"col-sm-2 col-form-label\">{{ entry_bank_name }}</label>
              <div class=\"col-sm-10\">
                <input type=\"text\" name=\"bank_name\" value=\"{{ bank_name }}\" placeholder=\"{{ entry_bank_name }}\" id=\"input-bank-name\" class=\"form-control\"/>
              </div>
            </div>
            <div class=\"row mb-3\">
              <label for=\"input-bank-branch-number\" class=\"col-sm-2 col-form-label\">{{ entry_bank_branch_number }}</label>
              <div class=\"col-sm-10\">
                <input type=\"text\" name=\"bank_branch_number\" value=\"{{ bank_branch_number }}\" placeholder=\"{{ entry_bank_branch_number }}\" id=\"input-bank-branch-number\" class=\"form-control\"/>
              </div>
            </div>
            <div class=\"row mb-3\">
              <label for=\"input-bank-swift-code\" class=\"col-sm-2 col-form-label\">{{ entry_bank_swift_code }}</label>
              <div class=\"col-sm-10\">
                <input type=\"text\" name=\"bank_swift_code\" value=\"{{ bank_swift_code }}\" placeholder=\"{{ entry_bank_swift_code }}\" id=\"input-bank-swift-code\" class=\"form-control\"/>
              </div>
            </div>
            <div class=\"row mb-3 required row\">
              <label for=\"input-bank-account-name\" class=\"col-sm-2 col-form-label\">{{ entry_bank_account_name }}</label>
              <div class=\"col-sm-10\">
                <input type=\"text\" name=\"bank_account_name\" value=\"{{ bank_account_name }}\" placeholder=\"{{ entry_bank_account_name }}\" id=\"input-bank-account-name\" class=\"form-control\"/>
                <div id=\"error-bank-account-name\" class=\"invalid-feedback\"></div>
              </div>
            </div>
            <div class=\"row mb-3 required row\">
              <label for=\"input-bank-account-number\" class=\"col-sm-2 col-form-label\">{{ entry_bank_account_number }}</label>
              <div class=\"col-sm-10\">
                <input type=\"text\" name=\"bank_account_number\" value=\"{{ bank_account_number }}\" placeholder=\"{{ entry_bank_account_number }}\" id=\"input-bank-account-number\" class=\"form-control\"/>
                <div id=\"error-bank-account-number\" class=\"invalid-feedback\"></div>
              </div>
            </div>
          </div>
          {% for custom_field in custom_fields %}
            {% if custom_field.location == 'affiliate' %}

              {% if custom_field.type == 'select' %}
                <div class=\"row mb-3{% if custom_field.required %} required{% endif %} custom-field\">
                  <label for=\"input-custom-field-{{ custom_field.custom_field_id }}\" class=\"col-sm-2 col-form-label\">{{ custom_field.name }}</label>
                  <div class=\"col-sm-10\">
                    <select name=\"custom_field[{{ custom_field.custom_field_id }}]\" id=\"input-custom-field-{{ custom_field.custom_field_id }}\" class=\"form-select\">
                      <option value=\"\">{{ text_select }}</option>
                      {% for custom_field_value in custom_field.custom_field_value %}
                        <option value=\"{{ custom_field_value.custom_field_value_id }}\"{% if affiliate_custom_field[custom_field.custom_field_id] and custom_field_value.custom_field_value_id == affiliate_custom_field[custom_field.custom_field_id] %} selected{% endif %}>{{ custom_field_value.name }}</option>
                      {% endfor %}
                    </select>
                    <div id=\"error-custom-field-{{ custom_field.custom_field_id }}\" class=\"invalid-feedback\"></div>
                  </div>
                </div>
              {% endif %}

              {% if custom_field.type == 'radio' %}
                <div class=\"row mb-3{% if custom_field.required %} required{% endif %} custom-field\">
                  <label class=\"col-sm-2 col-form-label\">{{ custom_field.name }}</label>
                  <div class=\"col-sm-10\">
                    <div id=\"input-custom-field-{{ custom_field.custom_field_id }}\">
                      {% for custom_field_value in custom_field.custom_field_value %}
                        <div class=\"form-check\">
                          <input type=\"radio\" name=\"custom_field[{{ custom_field.custom_field_id }}]\" value=\"{{ custom_field_value.custom_field_value_id }}\" id=\"input-custom-value-{{ custom_field_value.custom_field_value_id }}\" class=\"form-check-input\"{% if affiliate_custom_field[custom_field.custom_field_id] and custom_field_value.custom_field_value_id == affiliate_custom_field[custom_field.custom_field_id] %} checked{% endif %}/> <label for=\"input-custom-value-{{ custom_field_value.custom_field_value_id }}\" class=\"form-check-label\">{{ custom_field_value.name }}</label>
                        </div>
                      {% endfor %}
                    </div>
                    <div id=\"error-custom-field-{{ custom_field.custom_field_id }}\" class=\"invalid-feedback\"></div>
                  </div>
                </div>
              {% endif %}

              {% if custom_field.type == 'checkbox' %}
                <div class=\"row mb-3{% if custom_field.required %} required{% endif %} custom-field\">
                  <label class=\"col-sm-2 col-form-label\">{{ custom_field.name }}</label>
                  <div class=\"col-sm-10\">
                    <div id=\"input-custom-field-{{ custom_field.custom_field_id }}\">
                      {% for custom_field_value in custom_field.custom_field_value %}
                        <div class=\"form-check\">
                          <input type=\"checkbox\" name=\"custom_field[{{ custom_field.custom_field_id }}]\" value=\"{{ custom_field_value.custom_field_value_id }}\" id=\"input-custom-value-{{ custom_field_value.custom_field_value_id }}\" class=\"form-check-input\"{% if affiliate_custom_field[custom_field.custom_field_id] and custom_field_value.custom_field_value_id in affiliate_custom_field[custom_field.custom_field_id] %} checked{% endif %}/> <label for=\"input-custom-value-{{ custom_field_value.custom_field_value_id }}\" class=\"form-check-label\">{{ custom_field_value.name }}</label>
                        </div>
                      {% endfor %}
                    </div>
                    <div id=\"error-custom-field-{{ custom_field.custom_field_id }}\" class=\"invalid-feedback\"></div>
                  </div>
                </div>
              {% endif %}

              {% if custom_field.type == 'text' %}
                <div class=\"row mb-3{% if custom_field.required %} required{% endif %} custom-field\">
                  <label for=\"input-custom-field-{{ custom_field.custom_field_id }}\" class=\"col-sm-2 col-form-label\">{{ custom_field.name }}</label>
                  <div class=\"col-sm-10\">
                    <input type=\"text\" name=\"custom_field[{{ custom_field.custom_field_id }}]\" value=\"{% if affiliate_custom_field[custom_field.custom_field_id] %}{{ affiliate_custom_field[custom_field.custom_field_id] }}{% else %}{{ custom_field.value }}{% endif %}\" placeholder=\"{{ custom_field.name }}\" id=\"input-custom-field-{{ custom_field.custom_field_id }}\" class=\"form-control\"/>
                    <div id=\"error-custom-field-{{ custom_field.custom_field_id }}\" class=\"invalid-feedback\"></div>
                  </div>
                </div>
              {% endif %}

              {% if custom_field.type == 'textarea' %}
                <div class=\"row mb-3{% if custom_field.required %} required{% endif %} custom-field\">
                  <label for=\"input-custom-field-{{ custom_field.custom_field_id }}\" class=\"col-sm-2 col-form-label\">{{ custom_field.name }}</label>
                  <div class=\"col-sm-10\">
                    <textarea name=\"custom_field[{{ custom_field.custom_field_id }}]\" rows=\"5\" placeholder=\"{{ custom_field.name }}\" id=\"input-custom-field-{{ custom_field.custom_field_id }}\" class=\"form-control\">{% if affiliate_custom_field[custom_field.custom_field_id] %}{{ affiliate_custom_field[custom_field.custom_field_id] }}{% else %}{{ custom_field.value }}{% endif %}</textarea>
                    <div id=\"error-custom-field-{{ custom_field.custom_field_id }}\" class=\"invalid-feedback\"></div>
                  </div>
                </div>
              {% endif %}

              {% if custom_field.type == 'file' %}
                <div class=\"row mb-3{% if custom_field.required %} required{% endif %} custom-field\">
                  <label class=\"col-sm-2 col-form-label\">{{ custom_field.name }}</label>
                  <div class=\"col-sm-10\">
                    <div>
                      <button type=\"button\" data-oc-toggle=\"upload\" data-oc-url=\"{{ upload }}\" data-oc-size-max=\"{{ config_file_max_size }}\" data-oc-size-error=\"{{ error_upload_size }}\" data-oc-target=\"#input-custom-field-{{ custom_field.custom_field_id }}\" class=\"btn btn-light\"><i class=\"fa-solid fa-upload\"></i> {{ button_upload }}</button>
                      <input type=\"hidden\" name=\"custom_field[{{ custom_field.custom_field_id }}]\" value=\"{% if affiliate_custom_field[custom_field.custom_field_id] %}{{ affiliate_custom_field[custom_field.custom_field_id] }}{% endif %}\" id=\"input-custom-field-{{ custom_field.custom_field_id }}\"/>
                    </div>
                    <div id=\"error-custom-field-{{ custom_field.custom_field_id }}\" class=\"invalid-feedback\"></div>
                  </div>
                </div>
              {% endif %}

              {% if custom_field.type == 'date' %}
                <div class=\"row mb-3{% if custom_field.required %} required{% endif %} custom-field\">
                  <label for=\"input-custom-field-{{ custom_field.custom_field_id }}\" class=\"col-sm-2 col-form-label\">{{ custom_field.name }}</label>
                  <div class=\"col-sm-10\">
                    <input type=\"date\" name=\"custom_field[{{ custom_field.custom_field_id }}]\" value=\"{% if affiliate_custom_field[custom_field.custom_field_id] %}{{ affiliate_custom_field[custom_field.custom_field_id] }}{% else %}{{ custom_field.value }}{% endif %}\" placeholder=\"{{ custom_field.name }}\" id=\"input-custom-field-{{ custom_field.custom_field_id }}\" class=\"form-control\"/>
                    <div id=\"error-custom-field-{{ custom_field.custom_field_id }}\" class=\"invalid-feedback\"></div>
                  </div>
                </div>
              {% endif %}

              {% if custom_field.type == 'time' %}
                <div class=\"row mb-3{% if custom_field.required %} required{% endif %} custom-field\">
                  <label for=\"input-custom-field-{{ custom_field.custom_field_id }}\" class=\"col-sm-2 col-form-label\">{{ custom_field.name }}</label>
                  <div class=\"col-sm-10\">
                    <input type=\"time\" name=\"custom_field[{{ custom_field.custom_field_id }}]\" value=\"{% if affiliate_custom_field[custom_field.custom_field_id] %}{{ affiliate_custom_field[custom_field.custom_field_id] }}{% else %}{{ custom_field.value }}{% endif %}\" placeholder=\"{{ custom_field.name }}\" id=\"input-custom-field-{{ custom_field.custom_field_id }}\" class=\"form-control\"/>
                    <div id=\"error-custom-field-{{ custom_field.custom_field_id }}\" class=\"invalid-feedback\"></div>
                  </div>
                </div>
              {% endif %}

              {% if custom_field.type == 'datetime' %}
                <div class=\"row mb-3{% if custom_field.required %} required{% endif %} custom-field\">
                  <label for=\"input-custom-field-{{ custom_field.custom_field_id }}\" class=\"col-sm-2 col-form-label\">{{ custom_field.name }}</label>
                  <div class=\"col-sm-10\">
                    <input type=\"datetime-local\" name=\"custom_field[{{ custom_field.custom_field_id }}]\" value=\"{% if affiliate_custom_field[custom_field.custom_field_id] %}{{ affiliate_custom_field[custom_field.custom_field_id] }}{% else %}{{ custom_field.value }}{% endif %}\" placeholder=\"{{ custom_field.name }}\" id=\"input-custom-field-{{ custom_field.custom_field_id }}\" class=\"form-control\"/>
                    <div id=\"error-custom-field-{{ custom_field.custom_field_id }}\" class=\"invalid-feedback\"></div>
                  </div>
                </div>
              {% endif %}

            {% endif %}
          {% endfor %}
        </fieldset>
        <div class=\"text-end\">
          {% if text_agree %}
            <div class=\"form-check form-switch form-switch-lg form-check-reverse form-check-inline\">
              <label class=\"form-check-label\">{{ text_agree }}</label>
              <input type=\"hidden\" name=\"agree\" value=\"0\"/>
              <input type=\"checkbox\" name=\"agree\" value=\"1\" id=\"input-agree\" class=\"form-check-input\"/>
            </div>
          {% endif %}
          <button type=\"submit\" class=\"btn btn-primary\">{{ button_continue }}</button>
        </div>
      </form>
      {{ content_bottom }}</div>
    {{ column_right }}</div>
</div>
<script type=\"text/javascript\"><!--
\$('input[name=\\'payment_method\\']').on('change', function() {
    \$('.payment').hide();

    \$('#payment-' + this.value).show();
});

\$('input[name=\\'payment_method\\']:checked').trigger('change');
//--></script>
{{ footer }}
", "catalog/view/template/account/affiliate.twig", "/var/www/html/catalog/view/template/account/affiliate.twig");
    }
}
