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

/* catalog/view/template/information/contact.twig */
class __TwigTemplate_8c88f7f958e620d82c2b3307b2923590 extends Template
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
<div id=\"information-contact\" class=\"container\">
  <nav aria-label=\"breadcrumb\">
    <ol class=\"breadcrumb\">
      ";
        // line 5
        $context['_parent'] = $context;
        $context['_seq'] = CoreExtension::ensureTraversable(($context["breadcrumbs"] ?? null));
        foreach ($context['_seq'] as $context["_key"] => $context["breadcrumb"]) {
            // line 6
            yield "        <li class=\"breadcrumb-item\"><a href=\"";
            yield CoreExtension::getAttribute($this->env, $this->source, $context["breadcrumb"], "href", [], "any", false, false, false, 6);
            yield "\">";
            yield CoreExtension::getAttribute($this->env, $this->source, $context["breadcrumb"], "text", [], "any", false, false, false, 6);
            yield "</a></li>
      ";
        }
        $_parent = $context['_parent'];
        unset($context['_seq'], $context['_key'], $context['breadcrumb'], $context['_parent']);
        $context = array_intersect_key($context, $_parent) + $_parent;
        // line 8
        yield "    </ol>
  </nav>
  <div class=\"row\">";
        // line 10
        yield ($context["column_left"] ?? null);
        yield "
    <div id=\"content\" class=\"col\">";
        // line 11
        yield ($context["content_top"] ?? null);
        yield "
      <h1>";
        // line 12
        yield ($context["heading_title"] ?? null);
        yield "</h1>
      <h3>";
        // line 13
        yield ($context["text_location"] ?? null);
        yield "</h3>
      <div class=\"card mb-3\">
        <div class=\"card-body\">
          <div class=\"row\">
            ";
        // line 17
        if (($context["image"] ?? null)) {
            // line 18
            yield "              <div class=\"col-sm-3\"><img src=\"";
            yield ($context["image"] ?? null);
            yield "\" alt=\"";
            yield ($context["store"] ?? null);
            yield "\" title=\"";
            yield ($context["store"] ?? null);
            yield "\" class=\"img-thumbnail\"/></div>
            ";
        }
        // line 20
        yield "            <div class=\"col-sm-3\"><strong>";
        yield ($context["store"] ?? null);
        yield "</strong>
              <br/>
              <address>
                ";
        // line 23
        yield ($context["address"] ?? null);
        yield "
              </address>
              ";
        // line 25
        if (($context["geocode"] ?? null)) {
            // line 26
            yield "                <a href=\"https://maps.google.com/maps?q=";
            yield Twig\Extension\CoreExtension::urlencode(($context["geocode"] ?? null));
            yield "&hl=";
            yield ($context["geocode_hl"] ?? null);
            yield "&t=m&z=15\" target=\"_blank\" class=\"btn btn-info\"><i class=\"fa-solid fa-location-dot\"></i> ";
            yield ($context["button_map"] ?? null);
            yield "</a>
              ";
        }
        // line 28
        yield "            </div>
            ";
        // line 29
        if (($context["telephone"] ?? null)) {
            // line 30
            yield "              <div class=\"col-sm-3\"><strong>";
            yield ($context["text_telephone"] ?? null);
            yield "</strong>
                <br/>
                ";
            // line 32
            yield ($context["telephone"] ?? null);
            yield "
                <br/>
                <br/>
              </div>
            ";
        }
        // line 37
        yield "            <div class=\"col-sm-3\">
              ";
        // line 38
        if (($context["open"] ?? null)) {
            // line 39
            yield "                <strong>";
            yield ($context["text_open"] ?? null);
            yield "</strong>
                <br/>
                ";
            // line 41
            yield ($context["open"] ?? null);
            yield "
                <br/>
                <br/>
              ";
        }
        // line 45
        yield "              ";
        if (($context["comment"] ?? null)) {
            // line 46
            yield "                <strong>";
            yield ($context["text_comment"] ?? null);
            yield "</strong>
                <br/>
                ";
            // line 48
            yield ($context["comment"] ?? null);
            yield "
              ";
        }
        // line 50
        yield "            </div>
          </div>
        </div>
      </div>
      ";
        // line 54
        if (($context["locations"] ?? null)) {
            // line 55
            yield "        <h3>";
            yield ($context["text_store"] ?? null);
            yield "</h3>
        <div id=\"accordion\" class=\"accordion mb-3\">

          ";
            // line 58
            $context['_parent'] = $context;
            $context['_seq'] = CoreExtension::ensureTraversable(($context["locations"] ?? null));
            foreach ($context['_seq'] as $context["_key"] => $context["location"]) {
                // line 59
                yield "
            <div class=\"accordion-item\">
              <h2 class=\"accordion-header\">
                <button type=\"button\" class=\"accordion-button\" data-bs-toggle=\"collapse\" data-bs-target=\"#collapse-location-";
                // line 62
                yield CoreExtension::getAttribute($this->env, $this->source, $context["location"], "location_id", [], "any", false, false, false, 62);
                yield "\">";
                yield CoreExtension::getAttribute($this->env, $this->source, $context["location"], "name", [], "any", false, false, false, 62);
                yield "</button>
              </h2>

              <div id=\"collapse-location-";
                // line 65
                yield CoreExtension::getAttribute($this->env, $this->source, $context["location"], "location_id", [], "any", false, false, false, 65);
                yield "\" class=\"accordion-collapse collapse\" data-bs-parent=\"#accordion\">

                <div class=\"accordion-body\">
                  <div class=\"row\">
                    ";
                // line 69
                if (CoreExtension::getAttribute($this->env, $this->source, $context["location"], "image", [], "any", false, false, false, 69)) {
                    // line 70
                    yield "                      <div class=\"col-sm-3\"><img src=\"";
                    yield CoreExtension::getAttribute($this->env, $this->source, $context["location"], "image", [], "any", false, false, false, 70);
                    yield "\" alt=\"";
                    yield CoreExtension::getAttribute($this->env, $this->source, $context["location"], "name", [], "any", false, false, false, 70);
                    yield "\" title=\"";
                    yield CoreExtension::getAttribute($this->env, $this->source, $context["location"], "name", [], "any", false, false, false, 70);
                    yield "\" class=\"img-thumbnail\"/></div>
                    ";
                }
                // line 72
                yield "                    <div class=\"col-sm-3\"><strong>";
                yield CoreExtension::getAttribute($this->env, $this->source, $context["location"], "name", [], "any", false, false, false, 72);
                yield "</strong>
                      <br/>
                      <address>
                        ";
                // line 75
                yield CoreExtension::getAttribute($this->env, $this->source, $context["location"], "address", [], "any", false, false, false, 75);
                yield "
                      </address>
                      ";
                // line 77
                if (CoreExtension::getAttribute($this->env, $this->source, $context["location"], "geocode", [], "any", false, false, false, 77)) {
                    // line 78
                    yield "                        <a href=\"https://maps.google.com/maps?q=";
                    yield Twig\Extension\CoreExtension::urlencode(CoreExtension::getAttribute($this->env, $this->source, $context["location"], "geocode", [], "any", false, false, false, 78));
                    yield "&hl=";
                    yield ($context["geocode_hl"] ?? null);
                    yield "&t=m&z=15\" target=\"_blank\" class=\"btn btn-outline-secondary\"><i class=\"fa-solid fa-location-dot\"></i> ";
                    yield ($context["button_map"] ?? null);
                    yield "</a>
                      ";
                }
                // line 80
                yield "                    </div>
                    <div class=\"col-sm-3\"><strong>";
                // line 81
                yield ($context["text_telephone"] ?? null);
                yield "</strong>
                      <br/>
                      ";
                // line 83
                yield CoreExtension::getAttribute($this->env, $this->source, $context["location"], "telephone", [], "any", false, false, false, 83);
                yield "
                      <br/>
                      <br/>
                    </div>
                    <div class=\"col-sm-3\">
                      ";
                // line 88
                if (CoreExtension::getAttribute($this->env, $this->source, $context["location"], "open", [], "any", false, false, false, 88)) {
                    // line 89
                    yield "                        <strong>";
                    yield ($context["text_open"] ?? null);
                    yield "</strong>
                        <br/>
                        ";
                    // line 91
                    yield CoreExtension::getAttribute($this->env, $this->source, $context["location"], "open", [], "any", false, false, false, 91);
                    yield "
                        <br/>
                      ";
                }
                // line 94
                yield "                      ";
                if (CoreExtension::getAttribute($this->env, $this->source, $context["location"], "comment", [], "any", false, false, false, 94)) {
                    // line 95
                    yield "                        ";
                    yield CoreExtension::getAttribute($this->env, $this->source, $context["location"], "comment", [], "any", false, false, false, 95);
                    yield "
                      ";
                }
                // line 97
                yield "                    </div>
                  </div>
                </div>
              </div>
            </div>
          ";
            }
            $_parent = $context['_parent'];
            unset($context['_seq'], $context['_key'], $context['location'], $context['_parent']);
            $context = array_intersect_key($context, $_parent) + $_parent;
            // line 103
            yield "        </div>
      ";
        }
        // line 105
        yield "      <form id=\"form-contact\" action=\"";
        yield ($context["send"] ?? null);
        yield "\" method=\"post\">
        <fieldset>
          <legend>";
        // line 107
        yield ($context["text_contact"] ?? null);
        yield "</legend>
          <div class=\"mb-3 required\">
            <label for=\"input-name\" class=\"form-label\">";
        // line 109
        yield ($context["entry_name"] ?? null);
        yield "</label>
            <input type=\"text\" name=\"name\" value=\"";
        // line 110
        yield ($context["name"] ?? null);
        yield "\" id=\"input-name\" class=\"form-control\"/>
            <div id=\"error-name\" class=\"invalid-feedback\"></div>
          </div>
          <div class=\"mb-3 required\">
            <label for=\"input-email\" class=\"form-label\">";
        // line 114
        yield ($context["entry_email"] ?? null);
        yield "</label>
            <input type=\"text\" name=\"email\" value=\"";
        // line 115
        yield ($context["email"] ?? null);
        yield "\" id=\"input-email\" class=\"form-control\"/>
            <div id=\"error-email\" class=\"invalid-feedback\"></div>
          </div>
          <div class=\"mb-3 required\">
            <label for=\"input-enquiry\" class=\"form-label\">";
        // line 119
        yield ($context["entry_enquiry"] ?? null);
        yield "</label>
            <textarea name=\"enquiry\" rows=\"10\" id=\"input-enquiry\" class=\"form-control\"></textarea>
            <div id=\"error-enquiry\" class=\"invalid-feedback\"></div>
          </div>
          ";
        // line 123
        yield ($context["captcha"] ?? null);
        yield "
        </fieldset>
        <div class=\"text-end\">
          <button type=\"submit\" class=\"btn btn-primary\">";
        // line 126
        yield ($context["button_submit"] ?? null);
        yield "</button>
        </div>
      </form>
      ";
        // line 129
        yield ($context["content_bottom"] ?? null);
        yield "</div>
    ";
        // line 130
        yield ($context["column_right"] ?? null);
        yield "</div>
</div>
<script type=\"text/javascript\"><!--
document.getElementById('form-contact').addEventListener('submit', function(e) {
    e.preventDefault();

    const form = this;
    const formData = new FormData(form);
    const button = form.querySelector('button[type=\"submit\"]');

    button.disabled = true;
    button.innerHTML = '<i class=\"fa-solid fa-spinner fa-spin\"></i>';

    fetch(form.action, {
        method: 'POST',
        body: new URLSearchParams(formData)
    })
    .then(response => response.json())
    .then(json => {
        form.querySelectorAll('.is-invalid').forEach(el => el.classList.remove('is-invalid'));
        form.querySelectorAll('.invalid-feedback').forEach(el => el.classList.remove('d-block'));

        if (json.redirect) {
            location = json.redirect;
        }

        if (json.error) {
            for (const key in json.error) {
                const element = form.querySelector(`#input-\${key}`);
                if (element) {
                    element.classList.add('is-invalid');
                    const errorElement = form.querySelector(`#error-\${key}`);
                    if (errorElement) {
                        errorElement.innerHTML = json.error[key];
                        errorElement.classList.add('d-block');
                    }
                }
            }
        }
    })
    .catch(error => console.error('Error:', error))
    .finally(() => {
        button.disabled = false;
        button.innerHTML = '";
        // line 173
        yield ($context["button_submit"] ?? null);
        yield "';
    });
});
--></script>
";
        // line 177
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
        return "catalog/view/template/information/contact.twig";
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
        return array (  412 => 177,  405 => 173,  359 => 130,  355 => 129,  349 => 126,  343 => 123,  336 => 119,  329 => 115,  325 => 114,  318 => 110,  314 => 109,  309 => 107,  303 => 105,  299 => 103,  288 => 97,  282 => 95,  279 => 94,  273 => 91,  267 => 89,  265 => 88,  257 => 83,  252 => 81,  249 => 80,  239 => 78,  237 => 77,  232 => 75,  225 => 72,  215 => 70,  213 => 69,  206 => 65,  198 => 62,  193 => 59,  189 => 58,  182 => 55,  180 => 54,  174 => 50,  169 => 48,  163 => 46,  160 => 45,  153 => 41,  147 => 39,  145 => 38,  142 => 37,  134 => 32,  128 => 30,  126 => 29,  123 => 28,  113 => 26,  111 => 25,  106 => 23,  99 => 20,  89 => 18,  87 => 17,  80 => 13,  76 => 12,  72 => 11,  68 => 10,  64 => 8,  53 => 6,  49 => 5,  42 => 1,);
    }

    public function getSourceContext(): Source
    {
        return new Source("{{ header }}
<div id=\"information-contact\" class=\"container\">
  <nav aria-label=\"breadcrumb\">
    <ol class=\"breadcrumb\">
      {% for breadcrumb in breadcrumbs %}
        <li class=\"breadcrumb-item\"><a href=\"{{ breadcrumb.href }}\">{{ breadcrumb.text }}</a></li>
      {% endfor %}
    </ol>
  </nav>
  <div class=\"row\">{{ column_left }}
    <div id=\"content\" class=\"col\">{{ content_top }}
      <h1>{{ heading_title }}</h1>
      <h3>{{ text_location }}</h3>
      <div class=\"card mb-3\">
        <div class=\"card-body\">
          <div class=\"row\">
            {% if image %}
              <div class=\"col-sm-3\"><img src=\"{{ image }}\" alt=\"{{ store }}\" title=\"{{ store }}\" class=\"img-thumbnail\"/></div>
            {% endif %}
            <div class=\"col-sm-3\"><strong>{{ store }}</strong>
              <br/>
              <address>
                {{ address }}
              </address>
              {% if geocode %}
                <a href=\"https://maps.google.com/maps?q={{ geocode|url_encode }}&hl={{ geocode_hl }}&t=m&z=15\" target=\"_blank\" class=\"btn btn-info\"><i class=\"fa-solid fa-location-dot\"></i> {{ button_map }}</a>
              {% endif %}
            </div>
            {% if telephone %}
              <div class=\"col-sm-3\"><strong>{{ text_telephone }}</strong>
                <br/>
                {{ telephone }}
                <br/>
                <br/>
              </div>
            {% endif %}
            <div class=\"col-sm-3\">
              {% if open %}
                <strong>{{ text_open }}</strong>
                <br/>
                {{ open }}
                <br/>
                <br/>
              {% endif %}
              {% if comment %}
                <strong>{{ text_comment }}</strong>
                <br/>
                {{ comment }}
              {% endif %}
            </div>
          </div>
        </div>
      </div>
      {% if locations %}
        <h3>{{ text_store }}</h3>
        <div id=\"accordion\" class=\"accordion mb-3\">

          {% for location in locations %}

            <div class=\"accordion-item\">
              <h2 class=\"accordion-header\">
                <button type=\"button\" class=\"accordion-button\" data-bs-toggle=\"collapse\" data-bs-target=\"#collapse-location-{{ location.location_id }}\">{{ location.name }}</button>
              </h2>

              <div id=\"collapse-location-{{ location.location_id }}\" class=\"accordion-collapse collapse\" data-bs-parent=\"#accordion\">

                <div class=\"accordion-body\">
                  <div class=\"row\">
                    {% if location.image %}
                      <div class=\"col-sm-3\"><img src=\"{{ location.image }}\" alt=\"{{ location.name }}\" title=\"{{ location.name }}\" class=\"img-thumbnail\"/></div>
                    {% endif %}
                    <div class=\"col-sm-3\"><strong>{{ location.name }}</strong>
                      <br/>
                      <address>
                        {{ location.address }}
                      </address>
                      {% if location.geocode %}
                        <a href=\"https://maps.google.com/maps?q={{ location.geocode|url_encode }}&hl={{ geocode_hl }}&t=m&z=15\" target=\"_blank\" class=\"btn btn-outline-secondary\"><i class=\"fa-solid fa-location-dot\"></i> {{ button_map }}</a>
                      {% endif %}
                    </div>
                    <div class=\"col-sm-3\"><strong>{{ text_telephone }}</strong>
                      <br/>
                      {{ location.telephone }}
                      <br/>
                      <br/>
                    </div>
                    <div class=\"col-sm-3\">
                      {% if location.open %}
                        <strong>{{ text_open }}</strong>
                        <br/>
                        {{ location.open }}
                        <br/>
                      {% endif %}
                      {% if location.comment %}
                        {{ location.comment }}
                      {% endif %}
                    </div>
                  </div>
                </div>
              </div>
            </div>
          {% endfor %}
        </div>
      {% endif %}
      <form id=\"form-contact\" action=\"{{ send }}\" method=\"post\">
        <fieldset>
          <legend>{{ text_contact }}</legend>
          <div class=\"mb-3 required\">
            <label for=\"input-name\" class=\"form-label\">{{ entry_name }}</label>
            <input type=\"text\" name=\"name\" value=\"{{ name }}\" id=\"input-name\" class=\"form-control\"/>
            <div id=\"error-name\" class=\"invalid-feedback\"></div>
          </div>
          <div class=\"mb-3 required\">
            <label for=\"input-email\" class=\"form-label\">{{ entry_email }}</label>
            <input type=\"text\" name=\"email\" value=\"{{ email }}\" id=\"input-email\" class=\"form-control\"/>
            <div id=\"error-email\" class=\"invalid-feedback\"></div>
          </div>
          <div class=\"mb-3 required\">
            <label for=\"input-enquiry\" class=\"form-label\">{{ entry_enquiry }}</label>
            <textarea name=\"enquiry\" rows=\"10\" id=\"input-enquiry\" class=\"form-control\"></textarea>
            <div id=\"error-enquiry\" class=\"invalid-feedback\"></div>
          </div>
          {{ captcha }}
        </fieldset>
        <div class=\"text-end\">
          <button type=\"submit\" class=\"btn btn-primary\">{{ button_submit }}</button>
        </div>
      </form>
      {{ content_bottom }}</div>
    {{ column_right }}</div>
</div>
<script type=\"text/javascript\"><!--
document.getElementById('form-contact').addEventListener('submit', function(e) {
    e.preventDefault();

    const form = this;
    const formData = new FormData(form);
    const button = form.querySelector('button[type=\"submit\"]');

    button.disabled = true;
    button.innerHTML = '<i class=\"fa-solid fa-spinner fa-spin\"></i>';

    fetch(form.action, {
        method: 'POST',
        body: new URLSearchParams(formData)
    })
    .then(response => response.json())
    .then(json => {
        form.querySelectorAll('.is-invalid').forEach(el => el.classList.remove('is-invalid'));
        form.querySelectorAll('.invalid-feedback').forEach(el => el.classList.remove('d-block'));

        if (json.redirect) {
            location = json.redirect;
        }

        if (json.error) {
            for (const key in json.error) {
                const element = form.querySelector(`#input-\${key}`);
                if (element) {
                    element.classList.add('is-invalid');
                    const errorElement = form.querySelector(`#error-\${key}`);
                    if (errorElement) {
                        errorElement.innerHTML = json.error[key];
                        errorElement.classList.add('d-block');
                    }
                }
            }
        }
    })
    .catch(error => console.error('Error:', error))
    .finally(() => {
        button.disabled = false;
        button.innerHTML = '{{ button_submit }}';
    });
});
--></script>
{{ footer }}
", "catalog/view/template/information/contact.twig", "/var/www/html/catalog/view/template/information/contact.twig");
    }
}
