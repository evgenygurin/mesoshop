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

/* catalog/view/template/product/category.twig */
class __TwigTemplate_5dcba6c2037b66a04ebb02b80c1eb27c extends Template
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
<div id=\"product-category\" class=\"container my-4 my-lg-5\">
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
                // line 9
                yield "            <a href=\"";
                yield CoreExtension::getAttribute($this->env, $this->source, $context["breadcrumb"], "href", [], "any", false, false, false, 9);
                yield "\" class=\"text-decoration-none\">";
                yield CoreExtension::getAttribute($this->env, $this->source, $context["breadcrumb"], "text", [], "any", false, false, false, 9);
                yield "</a>
          ";
            } else {
                // line 11
                yield "            ";
                yield CoreExtension::getAttribute($this->env, $this->source, $context["breadcrumb"], "text", [], "any", false, false, false, 11);
                yield "
          ";
            }
            // line 13
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
        // line 15
        yield "    </ol>
  </nav>

  <div class=\"row g-4\">
    ";
        // line 19
        if (($context["column_left"] ?? null)) {
            // line 20
            yield "    <div class=\"col-12 col-lg-3\">
      <div class=\"sticky-top-100\">
        ";
            // line 22
            yield ($context["column_left"] ?? null);
            yield "
      </div>
    </div>
    ";
        }
        // line 26
        yield "    <div id=\"content\" class=\"col-12";
        if (($context["column_left"] ?? null)) {
            yield " col-lg-9";
        }
        yield "\">
      ";
        // line 27
        yield ($context["content_top"] ?? null);
        yield "

      ";
        // line 30
        yield "      <div class=\"mb-4\">
        <h1 class=\"mb-3\">";
        // line 31
        yield ($context["heading_title"] ?? null);
        yield "</h1>
        ";
        // line 32
        if ((($context["image"] ?? null) || ($context["description"] ?? null))) {
            // line 33
            yield "          <div class=\"card border-0 shadow-sm bg-light\">
            <div class=\"card-body\">
              <div class=\"row g-4\">
                ";
            // line 36
            if (($context["image"] ?? null)) {
                // line 37
                yield "                  <div class=\"col-md-3 text-center\">
                    <img src=\"";
                // line 38
                yield ($context["image"] ?? null);
                yield "\" alt=\"";
                yield ($context["heading_title"] ?? null);
                yield "\" title=\"";
                yield ($context["heading_title"] ?? null);
                yield "\" class=\"img-fluid rounded shadow-sm\"/>
                  </div>
                ";
            }
            // line 41
            yield "                ";
            if (($context["description"] ?? null)) {
                // line 42
                yield "                  <div class=\"col-md-9\">
                    ";
                // line 43
                yield ($context["description"] ?? null);
                yield "
                  </div>
                ";
            }
            // line 46
            yield "              </div>
            </div>
          </div>
        ";
        }
        // line 50
        yield "      </div>

      ";
        // line 53
        yield "      ";
        if (($context["categories"] ?? null)) {
            // line 54
            yield "        <div class=\"mb-4\">
          <h5 class=\"mb-3\">";
            // line 55
            yield ($context["text_refine"] ?? null);
            yield "</h5>
          ";
            // line 56
            if ((Twig\Extension\CoreExtension::length($this->env->getCharset(), ($context["categories"] ?? null)) <= 5)) {
                // line 57
                yield "            <ul class=\"list-unstyled\">
              ";
                // line 58
                $context['_parent'] = $context;
                $context['_seq'] = CoreExtension::ensureTraversable(($context["categories"] ?? null));
                foreach ($context['_seq'] as $context["_key"] => $context["category"]) {
                    // line 59
                    yield "                <li class=\"mb-2\">
                  <a href=\"";
                    // line 60
                    yield CoreExtension::getAttribute($this->env, $this->source, $context["category"], "href", [], "any", false, false, false, 60);
                    yield "\" class=\"text-decoration-none\">
                    <i class=\"fa-solid fa-chevron-right fa-xs me-2\"></i>";
                    // line 61
                    yield CoreExtension::getAttribute($this->env, $this->source, $context["category"], "name", [], "any", false, false, false, 61);
                    yield "
                  </a>
                </li>
              ";
                }
                $_parent = $context['_parent'];
                unset($context['_seq'], $context['_key'], $context['category'], $context['_parent']);
                $context = array_intersect_key($context, $_parent) + $_parent;
                // line 65
                yield "            </ul>
          ";
            } else {
                // line 67
                yield "            <div class=\"row row-cols-2 row-cols-sm-2 row-cols-md-3 row-cols-lg-4 row-cols-xl-5 g-3 g-lg-4\">
              ";
                // line 68
                $context["total"] = Twig\Extension\CoreExtension::length($this->env->getCharset(), ($context["categories"] ?? null));
                // line 69
                yield "              ";
                if ((($context["total"] ?? null) > 20)) {
                    // line 70
                    yield "                ";
                    $context["batch"] = Twig\Extension\CoreExtension::round((($context["total"] ?? null) / 5), 0, "ceil");
                    // line 71
                    yield "              ";
                } else {
                    // line 72
                    yield "                ";
                    $context["batch"] = 5;
                    // line 73
                    yield "              ";
                }
                // line 74
                yield "              ";
                $context['_parent'] = $context;
                $context['_seq'] = CoreExtension::ensureTraversable(Twig\Extension\CoreExtension::batch(($context["categories"] ?? null), ($context["batch"] ?? null)));
                foreach ($context['_seq'] as $context["_key"] => $context["category_batch"]) {
                    // line 75
                    yield "                <div class=\"col\">
                  <ul class=\"list-unstyled\">
                    ";
                    // line 77
                    $context['_parent'] = $context;
                    $context['_seq'] = CoreExtension::ensureTraversable($context["category_batch"]);
                    foreach ($context['_seq'] as $context["_key"] => $context["category"]) {
                        // line 78
                        yield "                      <li class=\"mb-2\">
                        <a href=\"";
                        // line 79
                        yield CoreExtension::getAttribute($this->env, $this->source, $context["category"], "href", [], "any", false, false, false, 79);
                        yield "\" class=\"text-decoration-none d-flex align-items-center\">
                          <i class=\"fa-solid fa-chevron-right fa-xs me-2 text-muted\"></i>
                          <span class=\"text-truncate\">";
                        // line 81
                        yield CoreExtension::getAttribute($this->env, $this->source, $context["category"], "name", [], "any", false, false, false, 81);
                        yield "</span>
                        </a>
                      </li>
                    ";
                    }
                    $_parent = $context['_parent'];
                    unset($context['_seq'], $context['_key'], $context['category'], $context['_parent']);
                    $context = array_intersect_key($context, $_parent) + $_parent;
                    // line 85
                    yield "                  </ul>
                </div>
              ";
                }
                $_parent = $context['_parent'];
                unset($context['_seq'], $context['_key'], $context['category_batch'], $context['_parent']);
                $context = array_intersect_key($context, $_parent) + $_parent;
                // line 88
                yield "            </div>
          ";
            }
            // line 90
            yield "        </div>
      ";
        }
        // line 92
        yield "
      ";
        // line 94
        yield "      ";
        if (($context["products"] ?? null)) {
            // line 95
            yield "        ";
            // line 96
            yield "        <div class=\"card border-0 shadow-sm mb-4\">
          <div class=\"card-body\">
            <div class=\"row g-3 align-items-center\">
              <div class=\"col-lg-3 col-md-4\">
                <a href=\"";
            // line 100
            yield ($context["compare"] ?? null);
            yield "\" id=\"compare-total\" class=\"btn btn-outline-primary w-100\">
                  <i class=\"fa-solid fa-arrow-right-arrow-left\"></i>
                  <span class=\"d-none d-lg-inline ms-2\">";
            // line 102
            yield ($context["text_compare"] ?? null);
            yield "</span>
                </a>
              </div>
              <div class=\"col-auto d-none d-lg-block\">
                <div class=\"btn-group shadow-sm\" role=\"group\">
                  <button type=\"button\" id=\"button-list\" class=\"btn btn-outline-secondary\" data-bs-toggle=\"tooltip\" title=\"";
            // line 107
            yield ($context["button_list"] ?? null);
            yield "\">
                    <i class=\"fa-solid fa-table-list\"></i>
                  </button>
                  <button type=\"button\" id=\"button-grid\" class=\"btn btn-outline-secondary\" data-bs-toggle=\"tooltip\" title=\"";
            // line 110
            yield ($context["button_grid"] ?? null);
            yield "\">
                    <i class=\"fa-solid fa-table-cells\"></i>
                  </button>
                </div>
              </div>
              <div class=\"col-lg-4 col-md-4 col-6\">
                <div class=\"input-group shadow-sm\">
                  <label for=\"input-sort\" class=\"input-group-text\">
                    <i class=\"fa-solid fa-sort me-2 d-none d-lg-inline\"></i>";
            // line 118
            yield ($context["text_sort"] ?? null);
            yield "
                  </label>
                  <select id=\"input-sort\" class=\"form-select\" onchange=\"location = this.value;\">
                    ";
            // line 121
            $context['_parent'] = $context;
            $context['_seq'] = CoreExtension::ensureTraversable($context["sorts"]);
            foreach ($context['_seq'] as $context["_key"] => $context["sorts"]) {
                // line 122
                yield "                      <option value=\"";
                yield CoreExtension::getAttribute($this->env, $this->source, $context["sorts"], "href", [], "any", false, false, false, 122);
                yield "\"";
                if ((CoreExtension::getAttribute($this->env, $this->source, $context["sorts"], "value", [], "any", false, false, false, 122) == Twig\Extension\CoreExtension::sprintf("%s-%s", ($context["sort"] ?? null), ($context["order"] ?? null)))) {
                    yield " selected";
                }
                yield ">
                        ";
                // line 123
                yield CoreExtension::getAttribute($this->env, $this->source, $context["sorts"], "text", [], "any", false, false, false, 123);
                yield "
                      </option>
                    ";
            }
            $_parent = $context['_parent'];
            unset($context['_seq'], $context['_key'], $context['sorts'], $context['_parent']);
            $context = array_intersect_key($context, $_parent) + $_parent;
            // line 126
            yield "                  </select>
                </div>
              </div>
              <div class=\"col-lg-3 col-md-4 col-6\">
                <div class=\"input-group shadow-sm\">
                  <label for=\"input-limit\" class=\"input-group-text\">
                    <i class=\"fa-solid fa-list-ol me-2 d-none d-lg-inline\"></i>";
            // line 132
            yield ($context["text_limit"] ?? null);
            yield "
                  </label>
                  <select id=\"input-limit\" class=\"form-select\" onchange=\"location = this.value;\">
                    ";
            // line 135
            $context['_parent'] = $context;
            $context['_seq'] = CoreExtension::ensureTraversable($context["limits"]);
            foreach ($context['_seq'] as $context["_key"] => $context["limits"]) {
                // line 136
                yield "                      <option value=\"";
                yield CoreExtension::getAttribute($this->env, $this->source, $context["limits"], "href", [], "any", false, false, false, 136);
                yield "\"";
                if ((CoreExtension::getAttribute($this->env, $this->source, $context["limits"], "value", [], "any", false, false, false, 136) == ($context["limit"] ?? null))) {
                    yield " selected";
                }
                yield ">
                        ";
                // line 137
                yield CoreExtension::getAttribute($this->env, $this->source, $context["limits"], "text", [], "any", false, false, false, 137);
                yield "
                      </option>
                    ";
            }
            $_parent = $context['_parent'];
            unset($context['_seq'], $context['_key'], $context['limits'], $context['_parent']);
            $context = array_intersect_key($context, $_parent) + $_parent;
            // line 140
            yield "                  </select>
                </div>
              </div>
            </div>
          </div>
        </div>

        ";
            // line 148
            yield "        <div id=\"product-list\" class=\"row row-cols-2 row-cols-sm-2 row-cols-md-3 row-cols-lg-4 row-cols-xl-5 g-3 g-lg-4 mb-4\">
          ";
            // line 149
            $context['_parent'] = $context;
            $context['_seq'] = CoreExtension::ensureTraversable(($context["products"] ?? null));
            foreach ($context['_seq'] as $context["_key"] => $context["product"]) {
                // line 150
                yield "            <div class=\"col fade-in\">
              <div class=\"h-100\">";
                // line 151
                yield $context["product"];
                yield "</div>
            </div>
          ";
            }
            $_parent = $context['_parent'];
            unset($context['_seq'], $context['_key'], $context['product'], $context['_parent']);
            $context = array_intersect_key($context, $_parent) + $_parent;
            // line 154
            yield "        </div>

        ";
            // line 157
            yield "        <div class=\"row\">
          <div class=\"col-sm-6 text-start\">";
            // line 158
            yield ($context["pagination"] ?? null);
            yield "</div>
          <div class=\"col-sm-6 text-end text-body-secondary\">";
            // line 159
            yield ($context["results"] ?? null);
            yield "</div>
        </div>
      ";
        }
        // line 162
        yield "
      ";
        // line 164
        yield "      ";
        if (( !($context["categories"] ?? null) &&  !($context["products"] ?? null))) {
            // line 165
            yield "        <div class=\"text-center py-5\">
          <i class=\"fa-solid fa-box-open fa-3x mb-3 text-body-secondary opacity-25\"></i>
          <p class=\"text-body-secondary mb-4\">";
            // line 167
            yield ($context["text_no_results"] ?? null);
            yield "</p>
          <a href=\"";
            // line 168
            yield ($context["continue"] ?? null);
            yield "\" class=\"btn btn-primary shadow-sm\">
            <i class=\"fa-solid fa-arrow-left me-2\"></i>";
            // line 169
            yield ($context["button_continue"] ?? null);
            yield "
          </a>
        </div>
      ";
        }
        // line 173
        yield "      ";
        yield ($context["content_bottom"] ?? null);
        yield "
    </div>
    ";
        // line 175
        if (($context["column_right"] ?? null)) {
            // line 176
            yield "    <div class=\"col-12 col-lg-3\">
      <div class=\"sticky-top-100\">
        ";
            // line 178
            yield ($context["column_right"] ?? null);
            yield "
      </div>
    </div>
    ";
        }
        // line 182
        yield "  </div>
</div>
";
        // line 184
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
        return "catalog/view/template/product/category.twig";
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
        return array (  496 => 184,  492 => 182,  485 => 178,  481 => 176,  479 => 175,  473 => 173,  466 => 169,  462 => 168,  458 => 167,  454 => 165,  451 => 164,  448 => 162,  442 => 159,  438 => 158,  435 => 157,  431 => 154,  422 => 151,  419 => 150,  415 => 149,  412 => 148,  403 => 140,  394 => 137,  385 => 136,  381 => 135,  375 => 132,  367 => 126,  358 => 123,  349 => 122,  345 => 121,  339 => 118,  328 => 110,  322 => 107,  314 => 102,  309 => 100,  303 => 96,  301 => 95,  298 => 94,  295 => 92,  291 => 90,  287 => 88,  279 => 85,  269 => 81,  264 => 79,  261 => 78,  257 => 77,  253 => 75,  248 => 74,  245 => 73,  242 => 72,  239 => 71,  236 => 70,  233 => 69,  231 => 68,  228 => 67,  224 => 65,  214 => 61,  210 => 60,  207 => 59,  203 => 58,  200 => 57,  198 => 56,  194 => 55,  191 => 54,  188 => 53,  184 => 50,  178 => 46,  172 => 43,  169 => 42,  166 => 41,  156 => 38,  153 => 37,  151 => 36,  146 => 33,  144 => 32,  140 => 31,  137 => 30,  132 => 27,  125 => 26,  118 => 22,  114 => 20,  112 => 19,  106 => 15,  91 => 13,  85 => 11,  77 => 9,  75 => 8,  68 => 7,  51 => 6,  47 => 4,  42 => 1,);
    }

    public function getSourceContext(): Source
    {
        return new Source("{{ header }}
<div id=\"product-category\" class=\"container my-4 my-lg-5\">
  {# Breadcrumb Navigation #}
  <nav aria-label=\"breadcrumb\">
    <ol class=\"breadcrumb bg-light px-3 py-2 rounded shadow-sm\">
      {% for breadcrumb in breadcrumbs %}
        <li class=\"breadcrumb-item{% if loop.last %} active{% endif %}\">
          {% if not loop.last %}
            <a href=\"{{ breadcrumb.href }}\" class=\"text-decoration-none\">{{ breadcrumb.text }}</a>
          {% else %}
            {{ breadcrumb.text }}
          {% endif %}
        </li>
      {% endfor %}
    </ol>
  </nav>

  <div class=\"row g-4\">
    {% if column_left %}
    <div class=\"col-12 col-lg-3\">
      <div class=\"sticky-top-100\">
        {{ column_left }}
      </div>
    </div>
    {% endif %}
    <div id=\"content\" class=\"col-12{% if column_left %} col-lg-9{% endif %}\">
      {{ content_top }}

      {# Category Header #}
      <div class=\"mb-4\">
        <h1 class=\"mb-3\">{{ heading_title }}</h1>
        {% if image or description %}
          <div class=\"card border-0 shadow-sm bg-light\">
            <div class=\"card-body\">
              <div class=\"row g-4\">
                {% if image %}
                  <div class=\"col-md-3 text-center\">
                    <img src=\"{{ image }}\" alt=\"{{ heading_title }}\" title=\"{{ heading_title }}\" class=\"img-fluid rounded shadow-sm\"/>
                  </div>
                {% endif %}
                {% if description %}
                  <div class=\"col-md-9\">
                    {{ description }}
                  </div>
                {% endif %}
              </div>
            </div>
          </div>
        {% endif %}
      </div>

      {# Subcategories #}
      {% if categories %}
        <div class=\"mb-4\">
          <h5 class=\"mb-3\">{{ text_refine }}</h5>
          {% if categories|length <= 5 %}
            <ul class=\"list-unstyled\">
              {% for category in categories %}
                <li class=\"mb-2\">
                  <a href=\"{{ category.href }}\" class=\"text-decoration-none\">
                    <i class=\"fa-solid fa-chevron-right fa-xs me-2\"></i>{{ category.name }}
                  </a>
                </li>
              {% endfor %}
            </ul>
          {% else %}
            <div class=\"row row-cols-2 row-cols-sm-2 row-cols-md-3 row-cols-lg-4 row-cols-xl-5 g-3 g-lg-4\">
              {% set total = categories|length %}
              {% if total > 20 %}
                {% set batch = (total / 5)|round(0, 'ceil') %}
              {% else %}
                {% set batch = 5 %}
              {% endif %}
              {% for category_batch in categories|batch(batch) %}
                <div class=\"col\">
                  <ul class=\"list-unstyled\">
                    {% for category in category_batch %}
                      <li class=\"mb-2\">
                        <a href=\"{{ category.href }}\" class=\"text-decoration-none d-flex align-items-center\">
                          <i class=\"fa-solid fa-chevron-right fa-xs me-2 text-muted\"></i>
                          <span class=\"text-truncate\">{{ category.name }}</span>
                        </a>
                      </li>
                    {% endfor %}
                  </ul>
                </div>
              {% endfor %}
            </div>
          {% endif %}
        </div>
      {% endif %}

      {# Products Section #}
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
                <div class=\"btn-group shadow-sm\" role=\"group\">
                  <button type=\"button\" id=\"button-list\" class=\"btn btn-outline-secondary\" data-bs-toggle=\"tooltip\" title=\"{{ button_list }}\">
                    <i class=\"fa-solid fa-table-list\"></i>
                  </button>
                  <button type=\"button\" id=\"button-grid\" class=\"btn btn-outline-secondary\" data-bs-toggle=\"tooltip\" title=\"{{ button_grid }}\">
                    <i class=\"fa-solid fa-table-cells\"></i>
                  </button>
                </div>
              </div>
              <div class=\"col-lg-4 col-md-4 col-6\">
                <div class=\"input-group shadow-sm\">
                  <label for=\"input-sort\" class=\"input-group-text\">
                    <i class=\"fa-solid fa-sort me-2 d-none d-lg-inline\"></i>{{ text_sort }}
                  </label>
                  <select id=\"input-sort\" class=\"form-select\" onchange=\"location = this.value;\">
                    {% for sorts in sorts %}
                      <option value=\"{{ sorts.href }}\"{% if sorts.value == '%s-%s'|format(sort, order) %} selected{% endif %}>
                        {{ sorts.text }}
                      </option>
                    {% endfor %}
                  </select>
                </div>
              </div>
              <div class=\"col-lg-3 col-md-4 col-6\">
                <div class=\"input-group shadow-sm\">
                  <label for=\"input-limit\" class=\"input-group-text\">
                    <i class=\"fa-solid fa-list-ol me-2 d-none d-lg-inline\"></i>{{ text_limit }}
                  </label>
                  <select id=\"input-limit\" class=\"form-select\" onchange=\"location = this.value;\">
                    {% for limits in limits %}
                      <option value=\"{{ limits.href }}\"{% if limits.value == limit %} selected{% endif %}>
                        {{ limits.text }}
                      </option>
                    {% endfor %}
                  </select>
                </div>
              </div>
            </div>
          </div>
        </div>

        {# Product Grid with Modern Bootstrap Patterns #}
        <div id=\"product-list\" class=\"row row-cols-2 row-cols-sm-2 row-cols-md-3 row-cols-lg-4 row-cols-xl-5 g-3 g-lg-4 mb-4\">
          {% for product in products %}
            <div class=\"col fade-in\">
              <div class=\"h-100\">{{ product }}</div>
            </div>
          {% endfor %}
        </div>

        {# Pagination #}
        <div class=\"row\">
          <div class=\"col-sm-6 text-start\">{{ pagination }}</div>
          <div class=\"col-sm-6 text-end text-body-secondary\">{{ results }}</div>
        </div>
      {% endif %}

      {# Empty State #}
      {% if not categories and not products %}
        <div class=\"text-center py-5\">
          <i class=\"fa-solid fa-box-open fa-3x mb-3 text-body-secondary opacity-25\"></i>
          <p class=\"text-body-secondary mb-4\">{{ text_no_results }}</p>
          <a href=\"{{ continue }}\" class=\"btn btn-primary shadow-sm\">
            <i class=\"fa-solid fa-arrow-left me-2\"></i>{{ button_continue }}
          </a>
        </div>
      {% endif %}
      {{ content_bottom }}
    </div>
    {% if column_right %}
    <div class=\"col-12 col-lg-3\">
      <div class=\"sticky-top-100\">
        {{ column_right }}
      </div>
    </div>
    {% endif %}
  </div>
</div>
{{ footer }}
", "catalog/view/template/product/category.twig", "/var/www/html/catalog/view/template/product/category.twig");
    }
}
