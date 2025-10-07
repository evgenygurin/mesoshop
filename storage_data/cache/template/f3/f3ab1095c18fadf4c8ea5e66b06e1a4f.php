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

/* catalog/view/template/account/address_form.twig */
class __TwigTemplate_1ab6aec927d13997dad6ef1ad6c672ca extends Template
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
<div id=\"account-address\" class=\"container\">
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
        yield ($context["text_address"] ?? null);
        yield "</h1>
      <form id=\"form-address\" action=\"";
        // line 11
        yield ($context["save"] ?? null);
        yield "\" method=\"post\" data-oc-toggle=\"ajax\">
        <fieldset>
          <div class=\"row mb-3 required\">
            <label for=\"input-firstname\" class=\"col-sm-2 col-form-label\">";
        // line 14
        yield ($context["entry_firstname"] ?? null);
        yield "</label>
            <div class=\"col-sm-10\">
              <input type=\"text\" name=\"firstname\" value=\"";
        // line 16
        yield ($context["firstname"] ?? null);
        yield "\" placeholder=\"";
        yield ($context["entry_firstname"] ?? null);
        yield "\" id=\"input-firstname\" class=\"form-control\"/>
              <div id=\"error-firstname\" class=\"invalid-feedback\"></div>
            </div>
          </div>
          <div class=\"row mb-3 required\">
            <label for=\"input-lastname\" class=\"col-sm-2 col-form-label\">";
        // line 21
        yield ($context["entry_lastname"] ?? null);
        yield "</label>
            <div class=\"col-sm-10\">
              <input type=\"text\" name=\"lastname\" value=\"";
        // line 23
        yield ($context["lastname"] ?? null);
        yield "\" placeholder=\"";
        yield ($context["entry_lastname"] ?? null);
        yield "\" id=\"input-lastname\" class=\"form-control\"/>
              <div id=\"error-lastname\" class=\"invalid-feedback\"></div>
            </div>
          </div>
          <div class=\"row mb-3\">
            <label for=\"input-company\" class=\"col-sm-2 col-form-label\">";
        // line 28
        yield ($context["entry_company"] ?? null);
        yield "</label>
            <div class=\"col-sm-10\">
              <input type=\"text\" name=\"company\" value=\"";
        // line 30
        yield ($context["company"] ?? null);
        yield "\" placeholder=\"";
        yield ($context["entry_company"] ?? null);
        yield "\" id=\"input-company\" class=\"form-control\"/>
            </div>
          </div>
          <div class=\"row mb-3 required\">
            <label for=\"input-address-1\" class=\"col-sm-2 col-form-label\">";
        // line 34
        yield ($context["entry_address_1"] ?? null);
        yield "</label>
            <div class=\"col-sm-10\">
              <input type=\"text\" name=\"address_1\" value=\"";
        // line 36
        yield ($context["address_1"] ?? null);
        yield "\" placeholder=\"";
        yield ($context["entry_address_1"] ?? null);
        yield "\" id=\"input-address-1\" class=\"form-control\"/>
              <div id=\"error-address-1\" class=\"invalid-feedback\"></div>
            </div>
          </div>
          <div class=\"row mb-3\">
            <label for=\"input-address-2\" class=\"col-sm-2 col-form-label\">";
        // line 41
        yield ($context["entry_address_2"] ?? null);
        yield "</label>
            <div class=\"col-sm-10\">
              <input type=\"text\" name=\"address_2\" value=\"";
        // line 43
        yield ($context["address_2"] ?? null);
        yield "\" placeholder=\"";
        yield ($context["entry_address_2"] ?? null);
        yield "\" id=\"input-address-2\" class=\"form-control\"/>
            </div>
          </div>
          <div class=\"row mb-3 required\">
            <label for=\"input-city\" class=\"col-sm-2 col-form-label\">";
        // line 47
        yield ($context["entry_city"] ?? null);
        yield "</label>
            <div class=\"col-sm-10\">
              <input type=\"text\" name=\"city\" value=\"";
        // line 49
        yield ($context["city"] ?? null);
        yield "\" placeholder=\"";
        yield ($context["entry_city"] ?? null);
        yield "\" id=\"input-city\" class=\"form-control\"/>
              <div id=\"error-city\" class=\"invalid-feedback\"></div>
            </div>
          </div>
          <div class=\"row mb-3 required\">
            <label for=\"input-postcode\" class=\"col-sm-2 col-form-label\">";
        // line 54
        yield ($context["entry_postcode"] ?? null);
        yield "</label>
            <div class=\"col-sm-10\">
              <input type=\"text\" name=\"postcode\" value=\"";
        // line 56
        yield ($context["postcode"] ?? null);
        yield "\" placeholder=\"";
        yield ($context["entry_postcode"] ?? null);
        yield "\" id=\"input-postcode\" class=\"form-control\"/>
              <div id=\"error-postcode\" class=\"invalid-feedback\"></div>
            </div>
          </div>
          <div class=\"row mb-3 required\">
            <label for=\"input-country\" class=\"col-sm-2 col-form-label\">";
        // line 61
        yield ($context["entry_country"] ?? null);
        yield "</label>
            <div class=\"col-sm-10\">
              <select name=\"country_id\" id=\"input-country\" class=\"form-select\">
                <option value=\"0\">";
        // line 64
        yield ($context["text_select"] ?? null);
        yield "</option>
                ";
        // line 65
        $context['_parent'] = $context;
        $context['_seq'] = CoreExtension::ensureTraversable(($context["countries"] ?? null));
        foreach ($context['_seq'] as $context["_key"] => $context["country"]) {
            // line 66
            yield "                  <option value=\"";
            yield CoreExtension::getAttribute($this->env, $this->source, $context["country"], "country_id", [], "any", false, false, false, 66);
            yield "\"";
            if ((CoreExtension::getAttribute($this->env, $this->source, $context["country"], "country_id", [], "any", false, false, false, 66) == ($context["country_id"] ?? null))) {
                yield " selected";
            }
            yield ">";
            yield CoreExtension::getAttribute($this->env, $this->source, $context["country"], "name", [], "any", false, false, false, 66);
            yield "</option>
                ";
        }
        $_parent = $context['_parent'];
        unset($context['_seq'], $context['_key'], $context['country'], $context['_parent']);
        $context = array_intersect_key($context, $_parent) + $_parent;
        // line 68
        yield "              </select>
              <div id=\"error-country\" class=\"invalid-feedback\"></div>
            </div>
          </div>
          <div class=\"row mb-3 required\">
            <label for=\"input-zone\" class=\"col-sm-2 col-form-label\">";
        // line 73
        yield ($context["entry_zone"] ?? null);
        yield "</label>
            <div class=\"col-sm-10\">
              <select name=\"zone_id\" id=\"input-zone\" class=\"form-select\">
                <option value=\"\">";
        // line 76
        yield ($context["text_select"] ?? null);
        yield "</option>
                ";
        // line 77
        $context['_parent'] = $context;
        $context['_seq'] = CoreExtension::ensureTraversable(($context["zones"] ?? null));
        foreach ($context['_seq'] as $context["_key"] => $context["zone"]) {
            // line 78
            yield "                  <option value=\"";
            yield CoreExtension::getAttribute($this->env, $this->source, $context["zone"], "zone_id", [], "any", false, false, false, 78);
            yield "\"";
            if ((CoreExtension::getAttribute($this->env, $this->source, $context["zone"], "zone_id", [], "any", false, false, false, 78) == ($context["zone_id"] ?? null))) {
                yield " selected";
            }
            yield ">";
            yield CoreExtension::getAttribute($this->env, $this->source, $context["zone"], "name", [], "any", false, false, false, 78);
            yield "</option>
                ";
        }
        $_parent = $context['_parent'];
        unset($context['_seq'], $context['_key'], $context['zone'], $context['_parent']);
        $context = array_intersect_key($context, $_parent) + $_parent;
        // line 80
        yield "              </select>
              <div id=\"error-zone\" class=\"invalid-feedback\"></div>
            </div>
          </div>

          ";
        // line 85
        $context['_parent'] = $context;
        $context['_seq'] = CoreExtension::ensureTraversable(($context["custom_fields"] ?? null));
        foreach ($context['_seq'] as $context["_key"] => $context["custom_field"]) {
            // line 86
            yield "
            ";
            // line 87
            if ((CoreExtension::getAttribute($this->env, $this->source, $context["custom_field"], "type", [], "any", false, false, false, 87) == "select")) {
                // line 88
                yield "              <div class=\"row mb-3";
                if (CoreExtension::getAttribute($this->env, $this->source, $context["custom_field"], "required", [], "any", false, false, false, 88)) {
                    yield " required";
                }
                yield "\">
                <label for=\"input-custom-field-";
                // line 89
                yield CoreExtension::getAttribute($this->env, $this->source, $context["custom_field"], "custom_field_id", [], "any", false, false, false, 89);
                yield "\" class=\"col-sm-2 col-form-label\">";
                yield CoreExtension::getAttribute($this->env, $this->source, $context["custom_field"], "name", [], "any", false, false, false, 89);
                yield "</label>
                <div class=\"col-sm-10\">
                  <select name=\"custom_field[";
                // line 91
                yield CoreExtension::getAttribute($this->env, $this->source, $context["custom_field"], "custom_field_id", [], "any", false, false, false, 91);
                yield "]\" id=\"input-custom-field-";
                yield CoreExtension::getAttribute($this->env, $this->source, $context["custom_field"], "custom_field_id", [], "any", false, false, false, 91);
                yield "\" class=\"form-select\">
                    <option value=\"\">";
                // line 92
                yield ($context["text_select"] ?? null);
                yield "</option>
                    ";
                // line 93
                $context['_parent'] = $context;
                $context['_seq'] = CoreExtension::ensureTraversable(CoreExtension::getAttribute($this->env, $this->source, $context["custom_field"], "custom_field_value", [], "any", false, false, false, 93));
                foreach ($context['_seq'] as $context["_key"] => $context["custom_field_value"]) {
                    // line 94
                    yield "                      <option value=\"";
                    yield CoreExtension::getAttribute($this->env, $this->source, $context["custom_field_value"], "custom_field_value_id", [], "any", false, false, false, 94);
                    yield "\"";
                    if (((($_v0 = ($context["address_custom_field"] ?? null)) && is_array($_v0) || $_v0 instanceof ArrayAccess ? ($_v0[CoreExtension::getAttribute($this->env, $this->source, $context["custom_field"], "custom_field_id", [], "any", false, false, false, 94)] ?? null) : null) && (CoreExtension::getAttribute($this->env, $this->source, $context["custom_field_value"], "custom_field_value_id", [], "any", false, false, false, 94) == (($_v1 = ($context["address_custom_field"] ?? null)) && is_array($_v1) || $_v1 instanceof ArrayAccess ? ($_v1[CoreExtension::getAttribute($this->env, $this->source, $context["custom_field"], "custom_field_id", [], "any", false, false, false, 94)] ?? null) : null)))) {
                        yield " selected";
                    }
                    yield ">";
                    yield CoreExtension::getAttribute($this->env, $this->source, $context["custom_field_value"], "name", [], "any", false, false, false, 94);
                    yield "</option>
                    ";
                }
                $_parent = $context['_parent'];
                unset($context['_seq'], $context['_key'], $context['custom_field_value'], $context['_parent']);
                $context = array_intersect_key($context, $_parent) + $_parent;
                // line 96
                yield "                  </select>
                  <div id=\"error-custom-field-";
                // line 97
                yield CoreExtension::getAttribute($this->env, $this->source, $context["custom_field"], "custom_field_id", [], "any", false, false, false, 97);
                yield "\" class=\"invalid-feedback\"></div>
                </div>
              </div>
            ";
            }
            // line 101
            yield "
            ";
            // line 102
            if ((CoreExtension::getAttribute($this->env, $this->source, $context["custom_field"], "type", [], "any", false, false, false, 102) == "radio")) {
                // line 103
                yield "              <div class=\"row mb-3";
                if (CoreExtension::getAttribute($this->env, $this->source, $context["custom_field"], "required", [], "any", false, false, false, 103)) {
                    yield " required";
                }
                yield "\">
                <label class=\"col-sm-2 col-form-label\">";
                // line 104
                yield CoreExtension::getAttribute($this->env, $this->source, $context["custom_field"], "name", [], "any", false, false, false, 104);
                yield "</label>
                <div class=\"col-sm-10\">
                  <div id=\"input-custom-field-";
                // line 106
                yield CoreExtension::getAttribute($this->env, $this->source, $context["custom_field"], "custom_field_id", [], "any", false, false, false, 106);
                yield "\">
                    ";
                // line 107
                $context['_parent'] = $context;
                $context['_seq'] = CoreExtension::ensureTraversable(CoreExtension::getAttribute($this->env, $this->source, $context["custom_field"], "custom_field_value", [], "any", false, false, false, 107));
                foreach ($context['_seq'] as $context["_key"] => $context["custom_field_value"]) {
                    // line 108
                    yield "                      <div class=\"form-check\">
                        <input type=\"radio\" name=\"custom_field[";
                    // line 109
                    yield CoreExtension::getAttribute($this->env, $this->source, $context["custom_field"], "custom_field_id", [], "any", false, false, false, 109);
                    yield "]\" value=\"";
                    yield CoreExtension::getAttribute($this->env, $this->source, $context["custom_field_value"], "custom_field_value_id", [], "any", false, false, false, 109);
                    yield "\" id=\"input-custom-value-";
                    yield CoreExtension::getAttribute($this->env, $this->source, $context["custom_field_value"], "custom_field_value_id", [], "any", false, false, false, 109);
                    yield "\" class=\"form-check-input\"";
                    if (((($_v2 = ($context["address_custom_field"] ?? null)) && is_array($_v2) || $_v2 instanceof ArrayAccess ? ($_v2[CoreExtension::getAttribute($this->env, $this->source, $context["custom_field"], "custom_field_id", [], "any", false, false, false, 109)] ?? null) : null) && (CoreExtension::getAttribute($this->env, $this->source, $context["custom_field_value"], "custom_field_value_id", [], "any", false, false, false, 109) == (($_v3 = ($context["address_custom_field"] ?? null)) && is_array($_v3) || $_v3 instanceof ArrayAccess ? ($_v3[CoreExtension::getAttribute($this->env, $this->source, $context["custom_field"], "custom_field_id", [], "any", false, false, false, 109)] ?? null) : null)))) {
                        yield " checked";
                    }
                    yield "/> <label for=\"input-custom-value-";
                    yield CoreExtension::getAttribute($this->env, $this->source, $context["custom_field_value"], "custom_field_value_id", [], "any", false, false, false, 109);
                    yield "\" class=\"form-check-label\">";
                    yield CoreExtension::getAttribute($this->env, $this->source, $context["custom_field_value"], "name", [], "any", false, false, false, 109);
                    yield "</label>
                      </div>
                    ";
                }
                $_parent = $context['_parent'];
                unset($context['_seq'], $context['_key'], $context['custom_field_value'], $context['_parent']);
                $context = array_intersect_key($context, $_parent) + $_parent;
                // line 112
                yield "                  </div>
                  <div id=\"error-custom-field-";
                // line 113
                yield CoreExtension::getAttribute($this->env, $this->source, $context["custom_field"], "custom_field_id", [], "any", false, false, false, 113);
                yield "\" class=\"invalid-feedback\"></div>
                </div>
              </div>
            ";
            }
            // line 117
            yield "
            ";
            // line 118
            if ((CoreExtension::getAttribute($this->env, $this->source, $context["custom_field"], "type", [], "any", false, false, false, 118) == "checkbox")) {
                // line 119
                yield "              <div class=\"row mb-3";
                if (CoreExtension::getAttribute($this->env, $this->source, $context["custom_field"], "required", [], "any", false, false, false, 119)) {
                    yield " required";
                }
                yield "\">
                <label class=\"col-sm-2 col-form-label\">";
                // line 120
                yield CoreExtension::getAttribute($this->env, $this->source, $context["custom_field"], "name", [], "any", false, false, false, 120);
                yield "</label>
                <div class=\"col-sm-10\">
                  <div id=\"input-custom-field-";
                // line 122
                yield CoreExtension::getAttribute($this->env, $this->source, $context["custom_field"], "custom_field_id", [], "any", false, false, false, 122);
                yield "\">
                    ";
                // line 123
                $context['_parent'] = $context;
                $context['_seq'] = CoreExtension::ensureTraversable(CoreExtension::getAttribute($this->env, $this->source, $context["custom_field"], "custom_field_value", [], "any", false, false, false, 123));
                foreach ($context['_seq'] as $context["_key"] => $context["custom_field_value"]) {
                    // line 124
                    yield "                      <div class=\"form-check\">
                        <input type=\"checkbox\" name=\"custom_field[";
                    // line 125
                    yield CoreExtension::getAttribute($this->env, $this->source, $context["custom_field"], "custom_field_id", [], "any", false, false, false, 125);
                    yield "][]\" value=\"";
                    yield CoreExtension::getAttribute($this->env, $this->source, $context["custom_field_value"], "custom_field_value_id", [], "any", false, false, false, 125);
                    yield "\" id=\"input-custom-value-";
                    yield CoreExtension::getAttribute($this->env, $this->source, $context["custom_field_value"], "custom_field_value_id", [], "any", false, false, false, 125);
                    yield "\" class=\"form-check-input\"";
                    if (((($_v4 = ($context["address_custom_field"] ?? null)) && is_array($_v4) || $_v4 instanceof ArrayAccess ? ($_v4[CoreExtension::getAttribute($this->env, $this->source, $context["custom_field"], "custom_field_id", [], "any", false, false, false, 125)] ?? null) : null) && CoreExtension::inFilter(CoreExtension::getAttribute($this->env, $this->source, $context["custom_field_value"], "custom_field_value_id", [], "any", false, false, false, 125), (($_v5 = ($context["address_custom_field"] ?? null)) && is_array($_v5) || $_v5 instanceof ArrayAccess ? ($_v5[CoreExtension::getAttribute($this->env, $this->source, $context["custom_field"], "custom_field_id", [], "any", false, false, false, 125)] ?? null) : null)))) {
                        yield " checked";
                    }
                    yield "/> <label for=\"input-custom-value-";
                    yield CoreExtension::getAttribute($this->env, $this->source, $context["custom_field_value"], "custom_field_value_id", [], "any", false, false, false, 125);
                    yield "\" class=\"form-check-label\">";
                    yield CoreExtension::getAttribute($this->env, $this->source, $context["custom_field_value"], "name", [], "any", false, false, false, 125);
                    yield "</label>
                      </div>
                    ";
                }
                $_parent = $context['_parent'];
                unset($context['_seq'], $context['_key'], $context['custom_field_value'], $context['_parent']);
                $context = array_intersect_key($context, $_parent) + $_parent;
                // line 128
                yield "                  </div>
                  <div id=\"error-custom-field-";
                // line 129
                yield CoreExtension::getAttribute($this->env, $this->source, $context["custom_field"], "custom_field_id", [], "any", false, false, false, 129);
                yield "\" class=\"invalid-feedback\"></div>
                </div>
              </div>
            ";
            }
            // line 133
            yield "
            ";
            // line 134
            if ((CoreExtension::getAttribute($this->env, $this->source, $context["custom_field"], "type", [], "any", false, false, false, 134) == "text")) {
                // line 135
                yield "              <div class=\"row mb-3";
                if (CoreExtension::getAttribute($this->env, $this->source, $context["custom_field"], "required", [], "any", false, false, false, 135)) {
                    yield " required";
                }
                yield "\">
                <label for=\"input-custom-field-";
                // line 136
                yield CoreExtension::getAttribute($this->env, $this->source, $context["custom_field"], "custom_field_id", [], "any", false, false, false, 136);
                yield "\" class=\"col-sm-2 col-form-label\">";
                yield CoreExtension::getAttribute($this->env, $this->source, $context["custom_field"], "name", [], "any", false, false, false, 136);
                yield "</label>
                <div class=\"col-sm-10\">
                  <input type=\"text\" name=\"custom_field[";
                // line 138
                yield CoreExtension::getAttribute($this->env, $this->source, $context["custom_field"], "custom_field_id", [], "any", false, false, false, 138);
                yield "]\" value=\"";
                if ((($_v6 = ($context["address_custom_field"] ?? null)) && is_array($_v6) || $_v6 instanceof ArrayAccess ? ($_v6[CoreExtension::getAttribute($this->env, $this->source, $context["custom_field"], "custom_field_id", [], "any", false, false, false, 138)] ?? null) : null)) {
                    yield (($_v7 = ($context["address_custom_field"] ?? null)) && is_array($_v7) || $_v7 instanceof ArrayAccess ? ($_v7[CoreExtension::getAttribute($this->env, $this->source, $context["custom_field"], "custom_field_id", [], "any", false, false, false, 138)] ?? null) : null);
                } else {
                    yield CoreExtension::getAttribute($this->env, $this->source, $context["custom_field"], "value", [], "any", false, false, false, 138);
                }
                yield "\" placeholder=\"";
                yield CoreExtension::getAttribute($this->env, $this->source, $context["custom_field"], "name", [], "any", false, false, false, 138);
                yield "\" id=\"input-custom-field-";
                yield CoreExtension::getAttribute($this->env, $this->source, $context["custom_field"], "custom_field_id", [], "any", false, false, false, 138);
                yield "\" class=\"form-control\"/>
                  <div id=\"error-custom-field-";
                // line 139
                yield CoreExtension::getAttribute($this->env, $this->source, $context["custom_field"], "custom_field_id", [], "any", false, false, false, 139);
                yield "\" class=\"invalid-feedback\"></div>
                </div>
              </div>
            ";
            }
            // line 143
            yield "
            ";
            // line 144
            if ((CoreExtension::getAttribute($this->env, $this->source, $context["custom_field"], "type", [], "any", false, false, false, 144) == "textarea")) {
                // line 145
                yield "              <div class=\"row mb-3";
                if (CoreExtension::getAttribute($this->env, $this->source, $context["custom_field"], "required", [], "any", false, false, false, 145)) {
                    yield " required";
                }
                yield "\">
                <label for=\"input-custom-field-";
                // line 146
                yield CoreExtension::getAttribute($this->env, $this->source, $context["custom_field"], "custom_field_id", [], "any", false, false, false, 146);
                yield "\" class=\"col-sm-2 col-form-label\">";
                yield CoreExtension::getAttribute($this->env, $this->source, $context["custom_field"], "name", [], "any", false, false, false, 146);
                yield "</label>
                <div class=\"col-sm-10\">
                  <textarea name=\"custom_field[";
                // line 148
                yield CoreExtension::getAttribute($this->env, $this->source, $context["custom_field"], "custom_field_id", [], "any", false, false, false, 148);
                yield "]\" rows=\"5\" placeholder=\"";
                yield CoreExtension::getAttribute($this->env, $this->source, $context["custom_field"], "name", [], "any", false, false, false, 148);
                yield "\" id=\"input-custom-field-";
                yield CoreExtension::getAttribute($this->env, $this->source, $context["custom_field"], "custom_field_id", [], "any", false, false, false, 148);
                yield "\" class=\"form-control\">";
                if ((($_v8 = ($context["address_custom_field"] ?? null)) && is_array($_v8) || $_v8 instanceof ArrayAccess ? ($_v8[CoreExtension::getAttribute($this->env, $this->source, $context["custom_field"], "custom_field_id", [], "any", false, false, false, 148)] ?? null) : null)) {
                    yield (($_v9 = ($context["address_custom_field"] ?? null)) && is_array($_v9) || $_v9 instanceof ArrayAccess ? ($_v9[CoreExtension::getAttribute($this->env, $this->source, $context["custom_field"], "custom_field_id", [], "any", false, false, false, 148)] ?? null) : null);
                } else {
                    yield CoreExtension::getAttribute($this->env, $this->source, $context["custom_field"], "value", [], "any", false, false, false, 148);
                }
                yield "</textarea>
                  <div id=\"error-custom-field-";
                // line 149
                yield CoreExtension::getAttribute($this->env, $this->source, $context["custom_field"], "custom_field_id", [], "any", false, false, false, 149);
                yield "\" class=\"invalid-feedback\"></div>
                </div>
              </div>
            ";
            }
            // line 153
            yield "
            ";
            // line 154
            if ((CoreExtension::getAttribute($this->env, $this->source, $context["custom_field"], "type", [], "any", false, false, false, 154) == "file")) {
                // line 155
                yield "              <div class=\"row mb-3";
                if (CoreExtension::getAttribute($this->env, $this->source, $context["custom_field"], "required", [], "any", false, false, false, 155)) {
                    yield " required";
                }
                yield "\">
                <label class=\"col-sm-2 col-form-label\">";
                // line 156
                yield CoreExtension::getAttribute($this->env, $this->source, $context["custom_field"], "name", [], "any", false, false, false, 156);
                yield "</label>
                <div class=\"col-sm-10\">
                  <div>
                    <button type=\"button\" data-oc-toggle=\"upload\" data-oc-url=\"";
                // line 159
                yield ($context["upload"] ?? null);
                yield "\" data-oc-size-max=\"";
                yield ($context["config_file_max_size"] ?? null);
                yield "\" data-oc-size-error=\"";
                yield ($context["error_upload_size"] ?? null);
                yield "\" data-oc-target=\"#input-custom-field-";
                yield CoreExtension::getAttribute($this->env, $this->source, $context["custom_field"], "custom_field_id", [], "any", false, false, false, 159);
                yield "\" class=\"btn btn-light\"><i class=\"fa-solid fa-upload\"></i> ";
                yield ($context["button_upload"] ?? null);
                yield "</button>
                    <input type=\"hidden\" name=\"custom_field[";
                // line 160
                yield CoreExtension::getAttribute($this->env, $this->source, $context["custom_field"], "custom_field_id", [], "any", false, false, false, 160);
                yield "]\" value=\"";
                if ((($_v10 = ($context["address_custom_field"] ?? null)) && is_array($_v10) || $_v10 instanceof ArrayAccess ? ($_v10[CoreExtension::getAttribute($this->env, $this->source, $context["custom_field"], "custom_field_id", [], "any", false, false, false, 160)] ?? null) : null)) {
                    yield (($_v11 = ($context["address_custom_field"] ?? null)) && is_array($_v11) || $_v11 instanceof ArrayAccess ? ($_v11[CoreExtension::getAttribute($this->env, $this->source, $context["custom_field"], "custom_field_id", [], "any", false, false, false, 160)] ?? null) : null);
                }
                yield "\" id=\"input-custom-field-";
                yield CoreExtension::getAttribute($this->env, $this->source, $context["custom_field"], "custom_field_id", [], "any", false, false, false, 160);
                yield "\"/>
                  </div>
                  <div id=\"error-custom-field-";
                // line 162
                yield CoreExtension::getAttribute($this->env, $this->source, $context["custom_field"], "custom_field_id", [], "any", false, false, false, 162);
                yield "\" class=\"invalid-feedback\"></div>
                </div>
              </div>
            ";
            }
            // line 166
            yield "
            ";
            // line 167
            if ((CoreExtension::getAttribute($this->env, $this->source, $context["custom_field"], "type", [], "any", false, false, false, 167) == "date")) {
                // line 168
                yield "              <div class=\"row mb-3";
                if (CoreExtension::getAttribute($this->env, $this->source, $context["custom_field"], "required", [], "any", false, false, false, 168)) {
                    yield " required";
                }
                yield "\">
                <label for=\"input-custom-field-";
                // line 169
                yield CoreExtension::getAttribute($this->env, $this->source, $context["custom_field"], "custom_field_id", [], "any", false, false, false, 169);
                yield "\" class=\"col-sm-2 col-form-label\">";
                yield CoreExtension::getAttribute($this->env, $this->source, $context["custom_field"], "name", [], "any", false, false, false, 169);
                yield "</label>
                <div class=\"col-sm-10\">
                  <input type=\"date\" name=\"custom_field[";
                // line 171
                yield CoreExtension::getAttribute($this->env, $this->source, $context["custom_field"], "custom_field_id", [], "any", false, false, false, 171);
                yield "]\" value=\"";
                if ((($_v12 = ($context["address_custom_field"] ?? null)) && is_array($_v12) || $_v12 instanceof ArrayAccess ? ($_v12[CoreExtension::getAttribute($this->env, $this->source, $context["custom_field"], "custom_field_id", [], "any", false, false, false, 171)] ?? null) : null)) {
                    yield (($_v13 = ($context["address_custom_field"] ?? null)) && is_array($_v13) || $_v13 instanceof ArrayAccess ? ($_v13[CoreExtension::getAttribute($this->env, $this->source, $context["custom_field"], "custom_field_id", [], "any", false, false, false, 171)] ?? null) : null);
                } else {
                    yield CoreExtension::getAttribute($this->env, $this->source, $context["custom_field"], "value", [], "any", false, false, false, 171);
                }
                yield "\" placeholder=\"";
                yield CoreExtension::getAttribute($this->env, $this->source, $context["custom_field"], "name", [], "any", false, false, false, 171);
                yield "\" id=\"input-custom-field-";
                yield CoreExtension::getAttribute($this->env, $this->source, $context["custom_field"], "custom_field_id", [], "any", false, false, false, 171);
                yield "\" class=\"form-control\"/>
                  <div id=\"error-custom-field-";
                // line 172
                yield CoreExtension::getAttribute($this->env, $this->source, $context["custom_field"], "custom_field_id", [], "any", false, false, false, 172);
                yield "\" class=\"invalid-feedback\"></div>
                </div>
              </div>
            ";
            }
            // line 176
            yield "
            ";
            // line 177
            if ((CoreExtension::getAttribute($this->env, $this->source, $context["custom_field"], "type", [], "any", false, false, false, 177) == "time")) {
                // line 178
                yield "              <div class=\"row mb-3";
                if (CoreExtension::getAttribute($this->env, $this->source, $context["custom_field"], "required", [], "any", false, false, false, 178)) {
                    yield " required";
                }
                yield "\">
                <label for=\"input-custom-field-";
                // line 179
                yield CoreExtension::getAttribute($this->env, $this->source, $context["custom_field"], "custom_field_id", [], "any", false, false, false, 179);
                yield "\" class=\"col-sm-2 col-form-label\">";
                yield CoreExtension::getAttribute($this->env, $this->source, $context["custom_field"], "name", [], "any", false, false, false, 179);
                yield "</label>
                <div class=\"col-sm-10\">
                  <input type=\"time\" name=\"custom_field[";
                // line 181
                yield CoreExtension::getAttribute($this->env, $this->source, $context["custom_field"], "custom_field_id", [], "any", false, false, false, 181);
                yield "]\" value=\"";
                if ((($_v14 = ($context["address_custom_field"] ?? null)) && is_array($_v14) || $_v14 instanceof ArrayAccess ? ($_v14[CoreExtension::getAttribute($this->env, $this->source, $context["custom_field"], "custom_field_id", [], "any", false, false, false, 181)] ?? null) : null)) {
                    yield (($_v15 = ($context["address_custom_field"] ?? null)) && is_array($_v15) || $_v15 instanceof ArrayAccess ? ($_v15[CoreExtension::getAttribute($this->env, $this->source, $context["custom_field"], "custom_field_id", [], "any", false, false, false, 181)] ?? null) : null);
                } else {
                    yield CoreExtension::getAttribute($this->env, $this->source, $context["custom_field"], "value", [], "any", false, false, false, 181);
                }
                yield "\" placeholder=\"";
                yield CoreExtension::getAttribute($this->env, $this->source, $context["custom_field"], "name", [], "any", false, false, false, 181);
                yield "\" id=\"input-custom-field-";
                yield CoreExtension::getAttribute($this->env, $this->source, $context["custom_field"], "custom_field_id", [], "any", false, false, false, 181);
                yield "\" class=\"form-control\"/>
                  <div id=\"error-custom-field-";
                // line 182
                yield CoreExtension::getAttribute($this->env, $this->source, $context["custom_field"], "custom_field_id", [], "any", false, false, false, 182);
                yield "\" class=\"invalid-feedback\"></div>
                </div>
              </div>
            ";
            }
            // line 186
            yield "
            ";
            // line 187
            if ((CoreExtension::getAttribute($this->env, $this->source, $context["custom_field"], "type", [], "any", false, false, false, 187) == "datetime")) {
                // line 188
                yield "              <div class=\"row mb-3";
                if (CoreExtension::getAttribute($this->env, $this->source, $context["custom_field"], "required", [], "any", false, false, false, 188)) {
                    yield " required";
                }
                yield "\">
                <label for=\"input-custom-field-";
                // line 189
                yield CoreExtension::getAttribute($this->env, $this->source, $context["custom_field"], "custom_field_id", [], "any", false, false, false, 189);
                yield "\" class=\"col-sm-2 col-form-label\">";
                yield CoreExtension::getAttribute($this->env, $this->source, $context["custom_field"], "name", [], "any", false, false, false, 189);
                yield "</label>
                <div class=\"col-sm-10\">
                  <input type=\"datetime-local\" name=\"custom_field[";
                // line 191
                yield CoreExtension::getAttribute($this->env, $this->source, $context["custom_field"], "custom_field_id", [], "any", false, false, false, 191);
                yield "]\" value=\"";
                if ((($_v16 = ($context["address_custom_field"] ?? null)) && is_array($_v16) || $_v16 instanceof ArrayAccess ? ($_v16[CoreExtension::getAttribute($this->env, $this->source, $context["custom_field"], "custom_field_id", [], "any", false, false, false, 191)] ?? null) : null)) {
                    yield (($_v17 = ($context["address_custom_field"] ?? null)) && is_array($_v17) || $_v17 instanceof ArrayAccess ? ($_v17[CoreExtension::getAttribute($this->env, $this->source, $context["custom_field"], "custom_field_id", [], "any", false, false, false, 191)] ?? null) : null);
                } else {
                    yield CoreExtension::getAttribute($this->env, $this->source, $context["custom_field"], "value", [], "any", false, false, false, 191);
                }
                yield "\" placeholder=\"";
                yield CoreExtension::getAttribute($this->env, $this->source, $context["custom_field"], "name", [], "any", false, false, false, 191);
                yield "\" id=\"input-custom-field-";
                yield CoreExtension::getAttribute($this->env, $this->source, $context["custom_field"], "custom_field_id", [], "any", false, false, false, 191);
                yield "\" class=\"form-control\"/>
                  <div id=\"error-custom-field-";
                // line 192
                yield CoreExtension::getAttribute($this->env, $this->source, $context["custom_field"], "custom_field_id", [], "any", false, false, false, 192);
                yield "\" class=\"invalid-feedback\"></div>
                </div>
              </div>
            ";
            }
            // line 196
            yield "
          ";
        }
        $_parent = $context['_parent'];
        unset($context['_seq'], $context['_key'], $context['custom_field'], $context['_parent']);
        $context = array_intersect_key($context, $_parent) + $_parent;
        // line 198
        yield "
          <div class=\"row mb-3\">
            <label class=\"col-sm-2 col-form-label\">";
        // line 200
        yield ($context["entry_default"] ?? null);
        yield "</label>
            <div class=\"col-sm-10\">
              <div class=\"form-check-inline\">
                <input type=\"radio\" name=\"default\" value=\"1\" id=\"input-default-yes\" class=\"form-check-input\"";
        // line 203
        if (($context["default"] ?? null)) {
            yield " checked";
        }
        yield "/>
                <label for=\"input-default-yes\" class=\"form-check-label\">";
        // line 204
        yield ($context["text_yes"] ?? null);
        yield "</label>
              </div>
              <div class=\"form-check-inline\">
                <input type=\"radio\" name=\"default\" value=\"0\" id=\"input-default-no\" class=\"form-check-input\"";
        // line 207
        if ( !($context["default"] ?? null)) {
            yield " checked";
        }
        yield "/>
                <label for=\"input-default-no\" class=\"form-check-label\">";
        // line 208
        yield ($context["text_no"] ?? null);
        yield "</label>
              </div>
            </div>
          </div>
        </fieldset>
        <div class=\"row\">
          <div class=\"col\">
            <a href=\"";
        // line 215
        yield ($context["back"] ?? null);
        yield "\" class=\"btn btn-light\">";
        yield ($context["button_back"] ?? null);
        yield "</a>
          </div>
          <div class=\"col text-end\">
            <button type=\"submit\" class=\"btn btn-primary\">";
        // line 218
        yield ($context["button_continue"] ?? null);
        yield "</button>
          </div>
        </div>
      </form>
      ";
        // line 222
        yield ($context["content_bottom"] ?? null);
        yield "</div>
    ";
        // line 223
        yield ($context["column_right"] ?? null);
        yield "</div>
</div>
<script type=\"text/javascript\"><!--
\$('#input-country').on('change', function() {
    var element = this;

    \$.ajax({
        url: 'index.php?route=localisation/country&country_id=' + this.value + '&language=";
        // line 230
        yield ($context["language"] ?? null);
        yield "',
        dataType: 'json',
        beforeSend: function() {
            \$(element).prop('disabled', true);
            \$('#input-zone').prop('disabled', true);
        },
        complete: function() {
            \$(element).prop('disabled', false);
            \$('#input-zone').prop('disabled', false);
        },
        success: function(json) {
            if (json['postcode_required'] == '1') {
                \$('#input-postcode').parent().parent().addClass('required');
            } else {
                \$('#input-postcode').parent().parent().removeClass('required');
            }

            html = '<option value=\"\">";
        // line 247
        yield $this->env->getRuntime('Twig\Runtime\EscaperRuntime')->escape(($context["text_select"] ?? null), "js");
        yield "</option>';

            if (json['zone'] && json['zone'] != '') {
                for (i = 0; i < json['zone'].length; i++) {
                    html += '<option value=\"' + json['zone'][i]['zone_id'] + '\"';

                    if (json['zone'][i]['zone_id'] == '";
        // line 253
        yield ($context["zone_id"] ?? null);
        yield "') {
                        html += ' selected';
                    }

                    html += '>' + json['zone'][i]['name'] + '</option>';
                }
            } else {
                html += '<option value=\"0\" selected>";
        // line 260
        yield $this->env->getRuntime('Twig\Runtime\EscaperRuntime')->escape(($context["text_none"] ?? null), "js");
        yield "</option>';
            }

            \$('#input-zone').html(html);
        },
        error: function(xhr, ajaxOptions, thrownError) {
            console.log(thrownError + \"\\r\\n\" + xhr.statusText + \"\\r\\n\" + xhr.responseText);
        }
    });
});
//--></script>
";
        // line 271
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
        return "catalog/view/template/account/address_form.twig";
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
        return array (  814 => 271,  800 => 260,  790 => 253,  781 => 247,  761 => 230,  751 => 223,  747 => 222,  740 => 218,  732 => 215,  722 => 208,  716 => 207,  710 => 204,  704 => 203,  698 => 200,  694 => 198,  687 => 196,  680 => 192,  666 => 191,  659 => 189,  652 => 188,  650 => 187,  647 => 186,  640 => 182,  626 => 181,  619 => 179,  612 => 178,  610 => 177,  607 => 176,  600 => 172,  586 => 171,  579 => 169,  572 => 168,  570 => 167,  567 => 166,  560 => 162,  549 => 160,  537 => 159,  531 => 156,  524 => 155,  522 => 154,  519 => 153,  512 => 149,  498 => 148,  491 => 146,  484 => 145,  482 => 144,  479 => 143,  472 => 139,  458 => 138,  451 => 136,  444 => 135,  442 => 134,  439 => 133,  432 => 129,  429 => 128,  408 => 125,  405 => 124,  401 => 123,  397 => 122,  392 => 120,  385 => 119,  383 => 118,  380 => 117,  373 => 113,  370 => 112,  349 => 109,  346 => 108,  342 => 107,  338 => 106,  333 => 104,  326 => 103,  324 => 102,  321 => 101,  314 => 97,  311 => 96,  296 => 94,  292 => 93,  288 => 92,  282 => 91,  275 => 89,  268 => 88,  266 => 87,  263 => 86,  259 => 85,  252 => 80,  237 => 78,  233 => 77,  229 => 76,  223 => 73,  216 => 68,  201 => 66,  197 => 65,  193 => 64,  187 => 61,  177 => 56,  172 => 54,  162 => 49,  157 => 47,  148 => 43,  143 => 41,  133 => 36,  128 => 34,  119 => 30,  114 => 28,  104 => 23,  99 => 21,  89 => 16,  84 => 14,  78 => 11,  74 => 10,  70 => 9,  66 => 8,  63 => 7,  52 => 5,  48 => 4,  42 => 1,);
    }

    public function getSourceContext(): Source
    {
        return new Source("{{ header }}
<div id=\"account-address\" class=\"container\">
  <ul class=\"breadcrumb\">
    {% for breadcrumb in breadcrumbs %}
      <li class=\"breadcrumb-item\"><a href=\"{{ breadcrumb.href }}\">{{ breadcrumb.text }}</a></li>
    {% endfor %}
  </ul>
  <div class=\"row\">{{ column_left }}
    <div id=\"content\" class=\"col\">{{ content_top }}
      <h1>{{ text_address }}</h1>
      <form id=\"form-address\" action=\"{{ save }}\" method=\"post\" data-oc-toggle=\"ajax\">
        <fieldset>
          <div class=\"row mb-3 required\">
            <label for=\"input-firstname\" class=\"col-sm-2 col-form-label\">{{ entry_firstname }}</label>
            <div class=\"col-sm-10\">
              <input type=\"text\" name=\"firstname\" value=\"{{ firstname }}\" placeholder=\"{{ entry_firstname }}\" id=\"input-firstname\" class=\"form-control\"/>
              <div id=\"error-firstname\" class=\"invalid-feedback\"></div>
            </div>
          </div>
          <div class=\"row mb-3 required\">
            <label for=\"input-lastname\" class=\"col-sm-2 col-form-label\">{{ entry_lastname }}</label>
            <div class=\"col-sm-10\">
              <input type=\"text\" name=\"lastname\" value=\"{{ lastname }}\" placeholder=\"{{ entry_lastname }}\" id=\"input-lastname\" class=\"form-control\"/>
              <div id=\"error-lastname\" class=\"invalid-feedback\"></div>
            </div>
          </div>
          <div class=\"row mb-3\">
            <label for=\"input-company\" class=\"col-sm-2 col-form-label\">{{ entry_company }}</label>
            <div class=\"col-sm-10\">
              <input type=\"text\" name=\"company\" value=\"{{ company }}\" placeholder=\"{{ entry_company }}\" id=\"input-company\" class=\"form-control\"/>
            </div>
          </div>
          <div class=\"row mb-3 required\">
            <label for=\"input-address-1\" class=\"col-sm-2 col-form-label\">{{ entry_address_1 }}</label>
            <div class=\"col-sm-10\">
              <input type=\"text\" name=\"address_1\" value=\"{{ address_1 }}\" placeholder=\"{{ entry_address_1 }}\" id=\"input-address-1\" class=\"form-control\"/>
              <div id=\"error-address-1\" class=\"invalid-feedback\"></div>
            </div>
          </div>
          <div class=\"row mb-3\">
            <label for=\"input-address-2\" class=\"col-sm-2 col-form-label\">{{ entry_address_2 }}</label>
            <div class=\"col-sm-10\">
              <input type=\"text\" name=\"address_2\" value=\"{{ address_2 }}\" placeholder=\"{{ entry_address_2 }}\" id=\"input-address-2\" class=\"form-control\"/>
            </div>
          </div>
          <div class=\"row mb-3 required\">
            <label for=\"input-city\" class=\"col-sm-2 col-form-label\">{{ entry_city }}</label>
            <div class=\"col-sm-10\">
              <input type=\"text\" name=\"city\" value=\"{{ city }}\" placeholder=\"{{ entry_city }}\" id=\"input-city\" class=\"form-control\"/>
              <div id=\"error-city\" class=\"invalid-feedback\"></div>
            </div>
          </div>
          <div class=\"row mb-3 required\">
            <label for=\"input-postcode\" class=\"col-sm-2 col-form-label\">{{ entry_postcode }}</label>
            <div class=\"col-sm-10\">
              <input type=\"text\" name=\"postcode\" value=\"{{ postcode }}\" placeholder=\"{{ entry_postcode }}\" id=\"input-postcode\" class=\"form-control\"/>
              <div id=\"error-postcode\" class=\"invalid-feedback\"></div>
            </div>
          </div>
          <div class=\"row mb-3 required\">
            <label for=\"input-country\" class=\"col-sm-2 col-form-label\">{{ entry_country }}</label>
            <div class=\"col-sm-10\">
              <select name=\"country_id\" id=\"input-country\" class=\"form-select\">
                <option value=\"0\">{{ text_select }}</option>
                {% for country in countries %}
                  <option value=\"{{ country.country_id }}\"{% if country.country_id == country_id %} selected{% endif %}>{{ country.name }}</option>
                {% endfor %}
              </select>
              <div id=\"error-country\" class=\"invalid-feedback\"></div>
            </div>
          </div>
          <div class=\"row mb-3 required\">
            <label for=\"input-zone\" class=\"col-sm-2 col-form-label\">{{ entry_zone }}</label>
            <div class=\"col-sm-10\">
              <select name=\"zone_id\" id=\"input-zone\" class=\"form-select\">
                <option value=\"\">{{ text_select }}</option>
                {% for zone in zones %}
                  <option value=\"{{ zone.zone_id }}\"{% if zone.zone_id == zone_id %} selected{% endif %}>{{ zone.name }}</option>
                {% endfor %}
              </select>
              <div id=\"error-zone\" class=\"invalid-feedback\"></div>
            </div>
          </div>

          {% for custom_field in custom_fields %}

            {% if custom_field.type == 'select' %}
              <div class=\"row mb-3{% if custom_field.required %} required{% endif %}\">
                <label for=\"input-custom-field-{{ custom_field.custom_field_id }}\" class=\"col-sm-2 col-form-label\">{{ custom_field.name }}</label>
                <div class=\"col-sm-10\">
                  <select name=\"custom_field[{{ custom_field.custom_field_id }}]\" id=\"input-custom-field-{{ custom_field.custom_field_id }}\" class=\"form-select\">
                    <option value=\"\">{{ text_select }}</option>
                    {% for custom_field_value in custom_field.custom_field_value %}
                      <option value=\"{{ custom_field_value.custom_field_value_id }}\"{% if address_custom_field[custom_field.custom_field_id] and custom_field_value.custom_field_value_id == address_custom_field[custom_field.custom_field_id] %} selected{% endif %}>{{ custom_field_value.name }}</option>
                    {% endfor %}
                  </select>
                  <div id=\"error-custom-field-{{ custom_field.custom_field_id }}\" class=\"invalid-feedback\"></div>
                </div>
              </div>
            {% endif %}

            {% if custom_field.type == 'radio' %}
              <div class=\"row mb-3{% if custom_field.required %} required{% endif %}\">
                <label class=\"col-sm-2 col-form-label\">{{ custom_field.name }}</label>
                <div class=\"col-sm-10\">
                  <div id=\"input-custom-field-{{ custom_field.custom_field_id }}\">
                    {% for custom_field_value in custom_field.custom_field_value %}
                      <div class=\"form-check\">
                        <input type=\"radio\" name=\"custom_field[{{ custom_field.custom_field_id }}]\" value=\"{{ custom_field_value.custom_field_value_id }}\" id=\"input-custom-value-{{ custom_field_value.custom_field_value_id }}\" class=\"form-check-input\"{% if address_custom_field[custom_field.custom_field_id] and custom_field_value.custom_field_value_id == address_custom_field[custom_field.custom_field_id] %} checked{% endif %}/> <label for=\"input-custom-value-{{ custom_field_value.custom_field_value_id }}\" class=\"form-check-label\">{{ custom_field_value.name }}</label>
                      </div>
                    {% endfor %}
                  </div>
                  <div id=\"error-custom-field-{{ custom_field.custom_field_id }}\" class=\"invalid-feedback\"></div>
                </div>
              </div>
            {% endif %}

            {% if custom_field.type == 'checkbox' %}
              <div class=\"row mb-3{% if custom_field.required %} required{% endif %}\">
                <label class=\"col-sm-2 col-form-label\">{{ custom_field.name }}</label>
                <div class=\"col-sm-10\">
                  <div id=\"input-custom-field-{{ custom_field.custom_field_id }}\">
                    {% for custom_field_value in custom_field.custom_field_value %}
                      <div class=\"form-check\">
                        <input type=\"checkbox\" name=\"custom_field[{{ custom_field.custom_field_id }}][]\" value=\"{{ custom_field_value.custom_field_value_id }}\" id=\"input-custom-value-{{ custom_field_value.custom_field_value_id }}\" class=\"form-check-input\"{% if address_custom_field[custom_field.custom_field_id] and custom_field_value.custom_field_value_id in address_custom_field[custom_field.custom_field_id] %} checked{% endif %}/> <label for=\"input-custom-value-{{ custom_field_value.custom_field_value_id }}\" class=\"form-check-label\">{{ custom_field_value.name }}</label>
                      </div>
                    {% endfor %}
                  </div>
                  <div id=\"error-custom-field-{{ custom_field.custom_field_id }}\" class=\"invalid-feedback\"></div>
                </div>
              </div>
            {% endif %}

            {% if custom_field.type == 'text' %}
              <div class=\"row mb-3{% if custom_field.required %} required{% endif %}\">
                <label for=\"input-custom-field-{{ custom_field.custom_field_id }}\" class=\"col-sm-2 col-form-label\">{{ custom_field.name }}</label>
                <div class=\"col-sm-10\">
                  <input type=\"text\" name=\"custom_field[{{ custom_field.custom_field_id }}]\" value=\"{% if address_custom_field[custom_field.custom_field_id] %}{{ address_custom_field[custom_field.custom_field_id] }}{% else %}{{ custom_field.value }}{% endif %}\" placeholder=\"{{ custom_field.name }}\" id=\"input-custom-field-{{ custom_field.custom_field_id }}\" class=\"form-control\"/>
                  <div id=\"error-custom-field-{{ custom_field.custom_field_id }}\" class=\"invalid-feedback\"></div>
                </div>
              </div>
            {% endif %}

            {% if custom_field.type == 'textarea' %}
              <div class=\"row mb-3{% if custom_field.required %} required{% endif %}\">
                <label for=\"input-custom-field-{{ custom_field.custom_field_id }}\" class=\"col-sm-2 col-form-label\">{{ custom_field.name }}</label>
                <div class=\"col-sm-10\">
                  <textarea name=\"custom_field[{{ custom_field.custom_field_id }}]\" rows=\"5\" placeholder=\"{{ custom_field.name }}\" id=\"input-custom-field-{{ custom_field.custom_field_id }}\" class=\"form-control\">{% if address_custom_field[custom_field.custom_field_id] %}{{ address_custom_field[custom_field.custom_field_id] }}{% else %}{{ custom_field.value }}{% endif %}</textarea>
                  <div id=\"error-custom-field-{{ custom_field.custom_field_id }}\" class=\"invalid-feedback\"></div>
                </div>
              </div>
            {% endif %}

            {% if custom_field.type == 'file' %}
              <div class=\"row mb-3{% if custom_field.required %} required{% endif %}\">
                <label class=\"col-sm-2 col-form-label\">{{ custom_field.name }}</label>
                <div class=\"col-sm-10\">
                  <div>
                    <button type=\"button\" data-oc-toggle=\"upload\" data-oc-url=\"{{ upload }}\" data-oc-size-max=\"{{ config_file_max_size }}\" data-oc-size-error=\"{{ error_upload_size }}\" data-oc-target=\"#input-custom-field-{{ custom_field.custom_field_id }}\" class=\"btn btn-light\"><i class=\"fa-solid fa-upload\"></i> {{ button_upload }}</button>
                    <input type=\"hidden\" name=\"custom_field[{{ custom_field.custom_field_id }}]\" value=\"{% if address_custom_field[custom_field.custom_field_id] %}{{ address_custom_field[custom_field.custom_field_id] }}{% endif %}\" id=\"input-custom-field-{{ custom_field.custom_field_id }}\"/>
                  </div>
                  <div id=\"error-custom-field-{{ custom_field.custom_field_id }}\" class=\"invalid-feedback\"></div>
                </div>
              </div>
            {% endif %}

            {% if custom_field.type == 'date' %}
              <div class=\"row mb-3{% if custom_field.required %} required{% endif %}\">
                <label for=\"input-custom-field-{{ custom_field.custom_field_id }}\" class=\"col-sm-2 col-form-label\">{{ custom_field.name }}</label>
                <div class=\"col-sm-10\">
                  <input type=\"date\" name=\"custom_field[{{ custom_field.custom_field_id }}]\" value=\"{% if address_custom_field[custom_field.custom_field_id] %}{{ address_custom_field[custom_field.custom_field_id] }}{% else %}{{ custom_field.value }}{% endif %}\" placeholder=\"{{ custom_field.name }}\" id=\"input-custom-field-{{ custom_field.custom_field_id }}\" class=\"form-control\"/>
                  <div id=\"error-custom-field-{{ custom_field.custom_field_id }}\" class=\"invalid-feedback\"></div>
                </div>
              </div>
            {% endif %}

            {% if custom_field.type == 'time' %}
              <div class=\"row mb-3{% if custom_field.required %} required{% endif %}\">
                <label for=\"input-custom-field-{{ custom_field.custom_field_id }}\" class=\"col-sm-2 col-form-label\">{{ custom_field.name }}</label>
                <div class=\"col-sm-10\">
                  <input type=\"time\" name=\"custom_field[{{ custom_field.custom_field_id }}]\" value=\"{% if address_custom_field[custom_field.custom_field_id] %}{{ address_custom_field[custom_field.custom_field_id] }}{% else %}{{ custom_field.value }}{% endif %}\" placeholder=\"{{ custom_field.name }}\" id=\"input-custom-field-{{ custom_field.custom_field_id }}\" class=\"form-control\"/>
                  <div id=\"error-custom-field-{{ custom_field.custom_field_id }}\" class=\"invalid-feedback\"></div>
                </div>
              </div>
            {% endif %}

            {% if custom_field.type == 'datetime' %}
              <div class=\"row mb-3{% if custom_field.required %} required{% endif %}\">
                <label for=\"input-custom-field-{{ custom_field.custom_field_id }}\" class=\"col-sm-2 col-form-label\">{{ custom_field.name }}</label>
                <div class=\"col-sm-10\">
                  <input type=\"datetime-local\" name=\"custom_field[{{ custom_field.custom_field_id }}]\" value=\"{% if address_custom_field[custom_field.custom_field_id] %}{{ address_custom_field[custom_field.custom_field_id] }}{% else %}{{ custom_field.value }}{% endif %}\" placeholder=\"{{ custom_field.name }}\" id=\"input-custom-field-{{ custom_field.custom_field_id }}\" class=\"form-control\"/>
                  <div id=\"error-custom-field-{{ custom_field.custom_field_id }}\" class=\"invalid-feedback\"></div>
                </div>
              </div>
            {% endif %}

          {% endfor %}

          <div class=\"row mb-3\">
            <label class=\"col-sm-2 col-form-label\">{{ entry_default }}</label>
            <div class=\"col-sm-10\">
              <div class=\"form-check-inline\">
                <input type=\"radio\" name=\"default\" value=\"1\" id=\"input-default-yes\" class=\"form-check-input\"{% if default %} checked{% endif %}/>
                <label for=\"input-default-yes\" class=\"form-check-label\">{{ text_yes }}</label>
              </div>
              <div class=\"form-check-inline\">
                <input type=\"radio\" name=\"default\" value=\"0\" id=\"input-default-no\" class=\"form-check-input\"{% if not default %} checked{% endif %}/>
                <label for=\"input-default-no\" class=\"form-check-label\">{{ text_no }}</label>
              </div>
            </div>
          </div>
        </fieldset>
        <div class=\"row\">
          <div class=\"col\">
            <a href=\"{{ back }}\" class=\"btn btn-light\">{{ button_back }}</a>
          </div>
          <div class=\"col text-end\">
            <button type=\"submit\" class=\"btn btn-primary\">{{ button_continue }}</button>
          </div>
        </div>
      </form>
      {{ content_bottom }}</div>
    {{ column_right }}</div>
</div>
<script type=\"text/javascript\"><!--
\$('#input-country').on('change', function() {
    var element = this;

    \$.ajax({
        url: 'index.php?route=localisation/country&country_id=' + this.value + '&language={{ language }}',
        dataType: 'json',
        beforeSend: function() {
            \$(element).prop('disabled', true);
            \$('#input-zone').prop('disabled', true);
        },
        complete: function() {
            \$(element).prop('disabled', false);
            \$('#input-zone').prop('disabled', false);
        },
        success: function(json) {
            if (json['postcode_required'] == '1') {
                \$('#input-postcode').parent().parent().addClass('required');
            } else {
                \$('#input-postcode').parent().parent().removeClass('required');
            }

            html = '<option value=\"\">{{ text_select|escape('js') }}</option>';

            if (json['zone'] && json['zone'] != '') {
                for (i = 0; i < json['zone'].length; i++) {
                    html += '<option value=\"' + json['zone'][i]['zone_id'] + '\"';

                    if (json['zone'][i]['zone_id'] == '{{ zone_id }}') {
                        html += ' selected';
                    }

                    html += '>' + json['zone'][i]['name'] + '</option>';
                }
            } else {
                html += '<option value=\"0\" selected>{{ text_none|escape('js') }}</option>';
            }

            \$('#input-zone').html(html);
        },
        error: function(xhr, ajaxOptions, thrownError) {
            console.log(thrownError + \"\\r\\n\" + xhr.statusText + \"\\r\\n\" + xhr.responseText);
        }
    });
});
//--></script>
{{ footer }}
", "catalog/view/template/account/address_form.twig", "/var/www/html/catalog/view/template/account/address_form.twig");
    }
}
