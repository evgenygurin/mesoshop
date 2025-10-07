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

/* catalog/view/template/product/manufacturer_info.twig */
class __TwigTemplate_5172f213bdc9c0262f345ea713a833d0 extends Template
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
<div id=\"product-manufacturer\" class=\"container my-4\">
  ";
        // line 4
        yield "  <nav aria-label=\"breadcrumb\">
    <ol class=\"breadcrumb bg-light px-3 py-2 rounded shadow-sm\">
      ";
        // line 6
        $context['_parent'] = $context;
        $context['_seq'] = CoreExtension::ensureTraversable(($context["breadcrumbs"] ?? null));
        $context['loop'] = [
          'parent' => $context['_parent'],
          'index0' => 0,
          'index'  => 1,
          'first'  => true,
        ];
        if (is_array($context['_seq']) || (is_object($context['_seq']) && $context['_seq'] instanceof \Countable)) {
            $length = count($context['_seq']);
            $context['loop']['revindex0'] = $length - 1;
            $context['loop']['revindex'] = $length;
            $context['loop']['length'] = $length;
            $context['loop']['last'] = 1 === $length;
        }
        foreach ($context['_seq'] as $context["_key"] => $context["breadcrumb"]) {
            // line 7
            yield "        <li class=\"breadcrumb-item";
            if (CoreExtension::getAttribute($this->env, $this->source, $context["loop"], "last", [], "any", false, false, false, 7)) {
                yield " active";
            }
            yield "\">
          ";
            // line 8
            if ( !CoreExtension::getAttribute($this->env, $this->source, $context["loop"], "last", [], "any", false, false, false, 8)) {
                yield "<a href=\"";
                yield CoreExtension::getAttribute($this->env, $this->source, $context["breadcrumb"], "href", [], "any", false, false, false, 8);
                yield "\" class=\"text-decoration-none\">";
                yield CoreExtension::getAttribute($this->env, $this->source, $context["breadcrumb"], "text", [], "any", false, false, false, 8);
                yield "</a>
          ";
            } else {
                // line 9
                yield CoreExtension::getAttribute($this->env, $this->source, $context["breadcrumb"], "text", [], "any", false, false, false, 9);
            }
            // line 10
            yield "        </li>
      ";
            ++$context['loop']['index0'];
            ++$context['loop']['index'];
            $context['loop']['first'] = false;
            if (isset($context['loop']['revindex0'], $context['loop']['revindex'])) {
                --$context['loop']['revindex0'];
                --$context['loop']['revindex'];
                $context['loop']['last'] = 0 === $context['loop']['revindex0'];
            }
        }
        $_parent = $context['_parent'];
        unset($context['_seq'], $context['_key'], $context['breadcrumb'], $context['_parent'], $context['loop']);
        $context = array_intersect_key($context, $_parent) + $_parent;
        // line 12
        yield "    </ol>
  </nav>

  <div class=\"row\">";
        // line 15
        yield ($context["column_left"] ?? null);
        yield "
    <div id=\"content\" class=\"col\">";
        // line 16
        yield ($context["content_top"] ?? null);
        yield "
      <div class=\"d-flex align-items-center mb-4\">
        <h1 class=\"mb-0\">";
        // line 18
        yield ($context["heading_title"] ?? null);
        yield "</h1>
        <span class=\"badge bg-info ms-3\"><i class=\"fa-solid fa-building me-1\"></i>Manufacturer</span>
      </div>

      ";
        // line 22
        if (($context["products"] ?? null)) {
            // line 23
            yield "        ";
            // line 24
            yield "        <div class=\"card border-0 shadow-sm mb-4\">
          <div class=\"card-body\">
            <div class=\"row g-3 align-items-center\">
              <div class=\"col-lg-3 col-md-4\">
                <a href=\"";
            // line 28
            yield ($context["compare"] ?? null);
            yield "\" id=\"compare-total\" class=\"btn btn-outline-primary w-100\">
                  <i class=\"fa-solid fa-arrow-right-arrow-left\"></i>
                  <span class=\"d-none d-lg-inline ms-2\">";
            // line 30
            yield ($context["text_compare"] ?? null);
            yield "</span>
                </a>
              </div>
              <div class=\"col-auto d-none d-lg-block\">
                <div class=\"btn-group shadow-sm\">
                  <button type=\"button\" id=\"button-list\" class=\"btn btn-outline-secondary\" data-bs-toggle=\"tooltip\" title=\"";
            // line 35
            yield ($context["button_list"] ?? null);
            yield "\"><i class=\"fa-solid fa-table-list\"></i></button>
                  <button type=\"button\" id=\"button-grid\" class=\"btn btn-outline-secondary\" data-bs-toggle=\"tooltip\" title=\"";
            // line 36
            yield ($context["button_grid"] ?? null);
            yield "\"><i class=\"fa-solid fa-table-cells\"></i></button>
                </div>
              </div>
              <div class=\"col-lg-4 col-md-4 col-6\">
                <div class=\"input-group shadow-sm\">
                  <label for=\"input-sort\" class=\"input-group-text\"><i class=\"fa-solid fa-sort me-2 d-none d-lg-inline\"></i>";
            // line 41
            yield ($context["text_sort"] ?? null);
            yield "</label>
                  <select id=\"input-sort\" class=\"form-select\" onchange=\"location = this.value;\">
                    ";
            // line 43
            $context['_parent'] = $context;
            $context['_seq'] = CoreExtension::ensureTraversable($context["sorts"]);
            foreach ($context['_seq'] as $context["_key"] => $context["sorts"]) {
                // line 44
                yield "                      <option value=\"";
                yield CoreExtension::getAttribute($this->env, $this->source, $context["sorts"], "href", [], "any", false, false, false, 44);
                yield "\"";
                if ((CoreExtension::getAttribute($this->env, $this->source, $context["sorts"], "value", [], "any", false, false, false, 44) == Twig\Extension\CoreExtension::sprintf("%s-%s", ($context["sort"] ?? null), ($context["order"] ?? null)))) {
                    yield " selected";
                }
                yield ">";
                yield CoreExtension::getAttribute($this->env, $this->source, $context["sorts"], "text", [], "any", false, false, false, 44);
                yield "</option>
                    ";
            }
            $_parent = $context['_parent'];
            unset($context['_seq'], $context['_key'], $context['sorts'], $context['_parent']);
            $context = array_intersect_key($context, $_parent) + $_parent;
            // line 46
            yield "                  </select>
                </div>
              </div>
              <div class=\"col-lg-3 col-md-4 col-6\">
                <div class=\"input-group shadow-sm\">
                  <label for=\"input-limit\" class=\"input-group-text\"><i class=\"fa-solid fa-list-ol me-2 d-none d-lg-inline\"></i>";
            // line 51
            yield ($context["text_limit"] ?? null);
            yield "</label>
                  <select id=\"input-limit\" class=\"form-select\" onchange=\"location = this.value;\">
                    ";
            // line 53
            $context['_parent'] = $context;
            $context['_seq'] = CoreExtension::ensureTraversable($context["limits"]);
            foreach ($context['_seq'] as $context["_key"] => $context["limits"]) {
                // line 54
                yield "                      <option value=\"";
                yield CoreExtension::getAttribute($this->env, $this->source, $context["limits"], "href", [], "any", false, false, false, 54);
                yield "\"";
                if ((CoreExtension::getAttribute($this->env, $this->source, $context["limits"], "value", [], "any", false, false, false, 54) == ($context["limit"] ?? null))) {
                    yield " selected";
                }
                yield ">";
                yield CoreExtension::getAttribute($this->env, $this->source, $context["limits"], "text", [], "any", false, false, false, 54);
                yield "</option>
                    ";
            }
            $_parent = $context['_parent'];
            unset($context['_seq'], $context['_key'], $context['limits'], $context['_parent']);
            $context = array_intersect_key($context, $_parent) + $_parent;
            // line 56
            yield "                  </select>
                </div>
              </div>
            </div>
          </div>
        </div>

        ";
            // line 64
            yield "        <div id=\"product-list\" class=\"row row-cols-1 row-cols-sm-2 row-cols-md-2 row-cols-lg-4 g-4 mb-4\">
          ";
            // line 65
            $context['_parent'] = $context;
            $context['_seq'] = CoreExtension::ensureTraversable(($context["products"] ?? null));
            foreach ($context['_seq'] as $context["_key"] => $context["product"]) {
                // line 66
                yield "            <div class=\"col\">";
                yield $context["product"];
                yield "</div>
          ";
            }
            $_parent = $context['_parent'];
            unset($context['_seq'], $context['_key'], $context['product'], $context['_parent']);
            $context = array_intersect_key($context, $_parent) + $_parent;
            // line 68
            yield "        </div>

        ";
            // line 71
            yield "        <div class=\"row\">
          <div class=\"col-sm-6 text-start\">";
            // line 72
            yield ($context["pagination"] ?? null);
            yield "</div>
          <div class=\"col-sm-6 text-end text-body-secondary\">";
            // line 73
            yield ($context["results"] ?? null);
            yield "</div>
        </div>
      ";
        } else {
            // line 76
            yield "        <div class=\"text-center py-5\">
          <i class=\"fa-solid fa-box-open fa-3x mb-3 text-body-secondary opacity-25\"></i>
          <p class=\"text-body-secondary mb-4\">";
            // line 78
            yield ($context["text_no_results"] ?? null);
            yield "</p>
          <a href=\"";
            // line 79
            yield ($context["continue"] ?? null);
            yield "\" class=\"btn btn-primary shadow-sm\">
            <i class=\"fa-solid fa-arrow-left me-2\"></i>";
            // line 80
            yield ($context["button_continue"] ?? null);
            yield "
          </a>
        </div>
      ";
        }
        // line 84
        yield "      ";
        yield ($context["content_bottom"] ?? null);
        yield "
    </div>";
        // line 85
        yield ($context["column_right"] ?? null);
        yield "
  </div>
</div>
";
        // line 88
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
        return "catalog/view/template/product/manufacturer_info.twig";
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
        return array (  285 => 88,  279 => 85,  274 => 84,  267 => 80,  263 => 79,  259 => 78,  255 => 76,  249 => 73,  245 => 72,  242 => 71,  238 => 68,  229 => 66,  225 => 65,  222 => 64,  213 => 56,  198 => 54,  194 => 53,  189 => 51,  182 => 46,  167 => 44,  163 => 43,  158 => 41,  150 => 36,  146 => 35,  138 => 30,  133 => 28,  127 => 24,  125 => 23,  123 => 22,  116 => 18,  111 => 16,  107 => 15,  102 => 12,  87 => 10,  84 => 9,  75 => 8,  68 => 7,  51 => 6,  47 => 4,  42 => 1,);
    }

    public function getSourceContext(): Source
    {
        return new Source("{{ header }}
<div id=\"product-manufacturer\" class=\"container my-4\">
  {# Breadcrumb #}
  <nav aria-label=\"breadcrumb\">
    <ol class=\"breadcrumb bg-light px-3 py-2 rounded shadow-sm\">
      {% for breadcrumb in breadcrumbs %}
        <li class=\"breadcrumb-item{% if loop.last %} active{% endif %}\">
          {% if not loop.last %}<a href=\"{{ breadcrumb.href }}\" class=\"text-decoration-none\">{{ breadcrumb.text }}</a>
          {% else %}{{ breadcrumb.text }}{% endif %}
        </li>
      {% endfor %}
    </ol>
  </nav>

  <div class=\"row\">{{ column_left }}
    <div id=\"content\" class=\"col\">{{ content_top }}
      <div class=\"d-flex align-items-center mb-4\">
        <h1 class=\"mb-0\">{{ heading_title }}</h1>
        <span class=\"badge bg-info ms-3\"><i class=\"fa-solid fa-building me-1\"></i>Manufacturer</span>
      </div>

      {% if products %}
        {# Toolbar #}
        <div class=\"card border-0 shadow-sm mb-4\">
          <div class=\"card-body\">
            <div class=\"row g-3 align-items-center\">
              <div class=\"col-lg-3 col-md-4\">
                <a href=\"{{ compare }}\" id=\"compare-total\" class=\"btn btn-outline-primary w-100\">
                  <i class=\"fa-solid fa-arrow-right-arrow-left\"></i>
                  <span class=\"d-none d-lg-inline ms-2\">{{ text_compare }}</span>
                </a>
              </div>
              <div class=\"col-auto d-none d-lg-block\">
                <div class=\"btn-group shadow-sm\">
                  <button type=\"button\" id=\"button-list\" class=\"btn btn-outline-secondary\" data-bs-toggle=\"tooltip\" title=\"{{ button_list }}\"><i class=\"fa-solid fa-table-list\"></i></button>
                  <button type=\"button\" id=\"button-grid\" class=\"btn btn-outline-secondary\" data-bs-toggle=\"tooltip\" title=\"{{ button_grid }}\"><i class=\"fa-solid fa-table-cells\"></i></button>
                </div>
              </div>
              <div class=\"col-lg-4 col-md-4 col-6\">
                <div class=\"input-group shadow-sm\">
                  <label for=\"input-sort\" class=\"input-group-text\"><i class=\"fa-solid fa-sort me-2 d-none d-lg-inline\"></i>{{ text_sort }}</label>
                  <select id=\"input-sort\" class=\"form-select\" onchange=\"location = this.value;\">
                    {% for sorts in sorts %}
                      <option value=\"{{ sorts.href }}\"{% if sorts.value == '%s-%s'|format(sort, order) %} selected{% endif %}>{{ sorts.text }}</option>
                    {% endfor %}
                  </select>
                </div>
              </div>
              <div class=\"col-lg-3 col-md-4 col-6\">
                <div class=\"input-group shadow-sm\">
                  <label for=\"input-limit\" class=\"input-group-text\"><i class=\"fa-solid fa-list-ol me-2 d-none d-lg-inline\"></i>{{ text_limit }}</label>
                  <select id=\"input-limit\" class=\"form-select\" onchange=\"location = this.value;\">
                    {% for limits in limits %}
                      <option value=\"{{ limits.href }}\"{% if limits.value == limit %} selected{% endif %}>{{ limits.text }}</option>
                    {% endfor %}
                  </select>
                </div>
              </div>
            </div>
          </div>
        </div>

        {# Product Grid #}
        <div id=\"product-list\" class=\"row row-cols-1 row-cols-sm-2 row-cols-md-2 row-cols-lg-4 g-4 mb-4\">
          {% for product in products %}
            <div class=\"col\">{{ product }}</div>
          {% endfor %}
        </div>

        {# Pagination #}
        <div class=\"row\">
          <div class=\"col-sm-6 text-start\">{{ pagination }}</div>
          <div class=\"col-sm-6 text-end text-body-secondary\">{{ results }}</div>
        </div>
      {% else %}
        <div class=\"text-center py-5\">
          <i class=\"fa-solid fa-box-open fa-3x mb-3 text-body-secondary opacity-25\"></i>
          <p class=\"text-body-secondary mb-4\">{{ text_no_results }}</p>
          <a href=\"{{ continue }}\" class=\"btn btn-primary shadow-sm\">
            <i class=\"fa-solid fa-arrow-left me-2\"></i>{{ button_continue }}
          </a>
        </div>
      {% endif %}
      {{ content_bottom }}
    </div>{{ column_right }}
  </div>
</div>
{{ footer }}
", "catalog/view/template/product/manufacturer_info.twig", "/var/www/html/catalog/view/template/product/manufacturer_info.twig");
    }
}
