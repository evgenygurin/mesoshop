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

/* catalog/view/template/product/search.twig */
class __TwigTemplate_c88ead6f6e71b9da38eb15a418dd3f2d extends Template
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
<div id=\"product-search\" class=\"container my-4\">
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
      <h1 class=\"mb-4\">";
        // line 17
        yield ($context["heading_title"] ?? null);
        yield "</h1>
      
      ";
        // line 20
        yield "      <div class=\"card border-0 shadow-sm mb-4\">
        <div class=\"card-body\">
          <h5 class=\"card-title mb-3\">";
        // line 22
        yield ($context["entry_search"] ?? null);
        yield "</h5>
          <div class=\"row g-3\">
            <div class=\"col-md-6\">
              <input type=\"text\" name=\"search\" value=\"";
        // line 25
        yield ($context["search"] ?? null);
        yield "\" placeholder=\"";
        yield ($context["text_keyword"] ?? null);
        yield "\" id=\"input-search\" class=\"form-control form-control-lg shadow-sm\"/>
              <div class=\"form-check mt-2\">
                <input type=\"checkbox\" name=\"description\" value=\"1\" id=\"input-description\" class=\"form-check-input\"";
        // line 27
        if (($context["description"] ?? null)) {
            yield " checked";
        }
        yield "/>
                <label for=\"input-description\" class=\"form-check-label\">";
        // line 28
        yield ($context["entry_description"] ?? null);
        yield "</label>
              </div>
            </div>
            <div class=\"col-md-6\">
              <select name=\"category_id\" id=\"input-category\" class=\"form-select form-select-lg shadow-sm\">
                <option value=\"0\">";
        // line 33
        yield ($context["text_category"] ?? null);
        yield "</option>
                ";
        // line 34
        $context['_parent'] = $context;
        $context['_seq'] = CoreExtension::ensureTraversable(($context["categories"] ?? null));
        foreach ($context['_seq'] as $context["_key"] => $context["category_1"]) {
            // line 35
            yield "                  <option value=\"";
            yield CoreExtension::getAttribute($this->env, $this->source, $context["category_1"], "category_id", [], "any", false, false, false, 35);
            yield "\"";
            if ((CoreExtension::getAttribute($this->env, $this->source, $context["category_1"], "category_id", [], "any", false, false, false, 35) == ($context["category_id"] ?? null))) {
                yield " selected";
            }
            yield ">";
            yield CoreExtension::getAttribute($this->env, $this->source, $context["category_1"], "name", [], "any", false, false, false, 35);
            yield "</option>
                  ";
            // line 36
            $context['_parent'] = $context;
            $context['_seq'] = CoreExtension::ensureTraversable(CoreExtension::getAttribute($this->env, $this->source, $context["category_1"], "children", [], "any", false, false, false, 36));
            foreach ($context['_seq'] as $context["_key"] => $context["category_2"]) {
                // line 37
                yield "                    <option value=\"";
                yield CoreExtension::getAttribute($this->env, $this->source, $context["category_2"], "category_id", [], "any", false, false, false, 37);
                yield "\"";
                if ((CoreExtension::getAttribute($this->env, $this->source, $context["category_2"], "category_id", [], "any", false, false, false, 37) == ($context["category_id"] ?? null))) {
                    yield " selected";
                }
                yield ">&nbsp;&nbsp;&nbsp;&nbsp;";
                yield CoreExtension::getAttribute($this->env, $this->source, $context["category_2"], "name", [], "any", false, false, false, 37);
                yield "</option>
                    ";
                // line 38
                $context['_parent'] = $context;
                $context['_seq'] = CoreExtension::ensureTraversable(CoreExtension::getAttribute($this->env, $this->source, $context["category_2"], "children", [], "any", false, false, false, 38));
                foreach ($context['_seq'] as $context["_key"] => $context["category_3"]) {
                    // line 39
                    yield "                      <option value=\"";
                    yield CoreExtension::getAttribute($this->env, $this->source, $context["category_3"], "category_id", [], "any", false, false, false, 39);
                    yield "\"";
                    if ((CoreExtension::getAttribute($this->env, $this->source, $context["category_3"], "category_id", [], "any", false, false, false, 39) == ($context["category_id"] ?? null))) {
                        yield " selected";
                    }
                    yield ">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;";
                    yield CoreExtension::getAttribute($this->env, $this->source, $context["category_3"], "name", [], "any", false, false, false, 39);
                    yield "</option>
                    ";
                }
                $_parent = $context['_parent'];
                unset($context['_seq'], $context['_key'], $context['category_3'], $context['_parent']);
                $context = array_intersect_key($context, $_parent) + $_parent;
                // line 41
                yield "                  ";
            }
            $_parent = $context['_parent'];
            unset($context['_seq'], $context['_key'], $context['category_2'], $context['_parent']);
            $context = array_intersect_key($context, $_parent) + $_parent;
            // line 42
            yield "                ";
        }
        $_parent = $context['_parent'];
        unset($context['_seq'], $context['_key'], $context['category_1'], $context['_parent']);
        $context = array_intersect_key($context, $_parent) + $_parent;
        // line 43
        yield "              </select>
              <div class=\"form-check mt-2\">
                <input type=\"checkbox\" name=\"sub_category\" value=\"1\" id=\"input-sub-category\" class=\"form-check-input\"";
        // line 45
        if (($context["sub_category"] ?? null)) {
            yield " checked";
        }
        yield "/>
                <label for=\"input-sub-category\" class=\"form-check-label\">";
        // line 46
        yield ($context["text_sub_category"] ?? null);
        yield "</label>
              </div>
            </div>
          </div>
          <div class=\"text-end mt-3\">
            <button type=\"button\" id=\"button-search\" class=\"btn btn-primary btn-lg shadow-sm\">
              <i class=\"fa-solid fa-magnifying-glass me-2\"></i>";
        // line 52
        yield ($context["button_search"] ?? null);
        yield "
            </button>
          </div>
        </div>
      </div>

      <h2 class=\"mb-4\">";
        // line 58
        yield ($context["text_search"] ?? null);
        yield "</h2>
      ";
        // line 59
        if (($context["products"] ?? null)) {
            // line 60
            yield "        ";
            // line 61
            yield "        <div class=\"card border-0 shadow-sm mb-4\">
          <div class=\"card-body\">
            <div class=\"row g-3 align-items-center\">
              <div class=\"col-lg-3 col-md-4\">
                <a href=\"";
            // line 65
            yield ($context["compare"] ?? null);
            yield "\" id=\"compare-total\" class=\"btn btn-outline-primary w-100\">
                  <i class=\"fa-solid fa-arrow-right-arrow-left\"></i>
                  <span class=\"d-none d-lg-inline ms-2\">";
            // line 67
            yield ($context["text_compare"] ?? null);
            yield "</span>
                </a>
              </div>
              <div class=\"col-auto d-none d-lg-block\">
                <div class=\"btn-group shadow-sm\">
                  <button type=\"button\" id=\"button-list\" class=\"btn btn-outline-secondary\" data-bs-toggle=\"tooltip\" title=\"";
            // line 72
            yield ($context["button_list"] ?? null);
            yield "\"><i class=\"fa-solid fa-table-list\"></i></button>
                  <button type=\"button\" id=\"button-grid\" class=\"btn btn-outline-secondary\" data-bs-toggle=\"tooltip\" title=\"";
            // line 73
            yield ($context["button_grid"] ?? null);
            yield "\"><i class=\"fa-solid fa-table-cells\"></i></button>
                </div>
              </div>
              <div class=\"col-lg-4 col-md-4 col-6\">
                <div class=\"input-group shadow-sm\">
                  <label for=\"input-sort\" class=\"input-group-text\"><i class=\"fa-solid fa-sort me-2 d-none d-lg-inline\"></i>";
            // line 78
            yield ($context["text_sort"] ?? null);
            yield "</label>
                  <select id=\"input-sort\" class=\"form-select\">
                    ";
            // line 80
            $context['_parent'] = $context;
            $context['_seq'] = CoreExtension::ensureTraversable($context["sorts"]);
            foreach ($context['_seq'] as $context["_key"] => $context["sorts"]) {
                // line 81
                yield "                      <option value=\"";
                yield CoreExtension::getAttribute($this->env, $this->source, $context["sorts"], "href", [], "any", false, false, false, 81);
                yield "\"";
                if ((CoreExtension::getAttribute($this->env, $this->source, $context["sorts"], "value", [], "any", false, false, false, 81) == Twig\Extension\CoreExtension::sprintf("%s-%s", ($context["sort"] ?? null), ($context["order"] ?? null)))) {
                    yield " selected";
                }
                yield ">";
                yield CoreExtension::getAttribute($this->env, $this->source, $context["sorts"], "text", [], "any", false, false, false, 81);
                yield "</option>
                    ";
            }
            $_parent = $context['_parent'];
            unset($context['_seq'], $context['_key'], $context['sorts'], $context['_parent']);
            $context = array_intersect_key($context, $_parent) + $_parent;
            // line 83
            yield "                  </select>
                </div>
              </div>
              <div class=\"col-lg-3 col-md-4 col-6\">
                <div class=\"input-group shadow-sm\">
                  <label for=\"input-limit\" class=\"input-group-text\"><i class=\"fa-solid fa-list-ol me-2 d-none d-lg-inline\"></i>";
            // line 88
            yield ($context["text_limit"] ?? null);
            yield "</label>
                  <select id=\"input-limit\" class=\"form-select\">
                    ";
            // line 90
            $context['_parent'] = $context;
            $context['_seq'] = CoreExtension::ensureTraversable($context["limits"]);
            foreach ($context['_seq'] as $context["_key"] => $context["limits"]) {
                // line 91
                yield "                      <option value=\"";
                yield CoreExtension::getAttribute($this->env, $this->source, $context["limits"], "href", [], "any", false, false, false, 91);
                yield "\"";
                if ((CoreExtension::getAttribute($this->env, $this->source, $context["limits"], "value", [], "any", false, false, false, 91) == ($context["limit"] ?? null))) {
                    yield " selected";
                }
                yield ">";
                yield CoreExtension::getAttribute($this->env, $this->source, $context["limits"], "text", [], "any", false, false, false, 91);
                yield "</option>
                    ";
            }
            $_parent = $context['_parent'];
            unset($context['_seq'], $context['_key'], $context['limits'], $context['_parent']);
            $context = array_intersect_key($context, $_parent) + $_parent;
            // line 93
            yield "                  </select>
                </div>
              </div>
            </div>
          </div>
        </div>

        ";
            // line 101
            yield "        <div id=\"product-list\" class=\"row row-cols-1 row-cols-sm-2 row-cols-md-2 row-cols-lg-4 g-4 mb-4\">
          ";
            // line 102
            $context['_parent'] = $context;
            $context['_seq'] = CoreExtension::ensureTraversable(($context["products"] ?? null));
            foreach ($context['_seq'] as $context["_key"] => $context["product"]) {
                // line 103
                yield "            <div class=\"col\">";
                yield $context["product"];
                yield "</div>
          ";
            }
            $_parent = $context['_parent'];
            unset($context['_seq'], $context['_key'], $context['product'], $context['_parent']);
            $context = array_intersect_key($context, $_parent) + $_parent;
            // line 105
            yield "        </div>

        ";
            // line 108
            yield "        <div class=\"row\">
          <div class=\"col-sm-6 text-start\">";
            // line 109
            yield ($context["pagination"] ?? null);
            yield "</div>
          <div class=\"col-sm-6 text-end text-body-secondary\">";
            // line 110
            yield ($context["results"] ?? null);
            yield "</div>
        </div>
      ";
        } else {
            // line 113
            yield "        <div class=\"text-center py-5\">
          <i class=\"fa-solid fa-magnifying-glass fa-3x mb-3 text-body-secondary opacity-25\"></i>
          <p class=\"text-body-secondary\">";
            // line 115
            yield ($context["text_no_results"] ?? null);
            yield "</p>
        </div>
      ";
        }
        // line 118
        yield "      ";
        yield ($context["content_bottom"] ?? null);
        yield "
    </div>";
        // line 119
        yield ($context["column_right"] ?? null);
        yield "
  </div>
</div>
<script>

<script>
document.getElementById('input-sort').addEventListener('change', function() {
  location = this.value;
});

document.getElementById('input-limit').addEventListener('change', function() {
  location = this.value;
});
document.getElementById('button-search').addEventListener('click', function() {
    let url = 'index.php?route=product/search&language=";
        // line 133
        yield ($context["language"] ?? null);
        yield "';
    const search = document.getElementById('input-search').value;
    if (search) url += '&search=' + encodeURIComponent(search);
    const category_id = document.getElementById('input-category').value;
    if (category_id > 0) url += '&category_id=' + encodeURIComponent(category_id);
    if (document.getElementById('input-sub-category').checked) url += '&sub_category=1';
    if (document.getElementById('input-description').checked) url += '&description=1';
    location = url;
});

document.getElementById('input-search').addEventListener('keydown', function(e) {
    if (e.keyCode == 13) document.getElementById('button-search').click();
});

document.getElementById('input-category').addEventListener('change', function() {
    document.getElementById('input-sub-category').disabled = this.value == '0';
});

document.getElementById('input-category').dispatchEvent(new Event('change'));
</script>
";
        // line 153
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
        return "catalog/view/template/product/search.twig";
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
        return array (  435 => 153,  412 => 133,  395 => 119,  390 => 118,  384 => 115,  380 => 113,  374 => 110,  370 => 109,  367 => 108,  363 => 105,  354 => 103,  350 => 102,  347 => 101,  338 => 93,  323 => 91,  319 => 90,  314 => 88,  307 => 83,  292 => 81,  288 => 80,  283 => 78,  275 => 73,  271 => 72,  263 => 67,  258 => 65,  252 => 61,  250 => 60,  248 => 59,  244 => 58,  235 => 52,  226 => 46,  220 => 45,  216 => 43,  210 => 42,  204 => 41,  189 => 39,  185 => 38,  174 => 37,  170 => 36,  159 => 35,  155 => 34,  151 => 33,  143 => 28,  137 => 27,  130 => 25,  124 => 22,  120 => 20,  115 => 17,  111 => 16,  107 => 15,  102 => 12,  87 => 10,  84 => 9,  75 => 8,  68 => 7,  51 => 6,  47 => 4,  42 => 1,);
    }

    public function getSourceContext(): Source
    {
        return new Source("{{ header }}
<div id=\"product-search\" class=\"container my-4\">
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
      <h1 class=\"mb-4\">{{ heading_title }}</h1>
      
      {# Search Form #}
      <div class=\"card border-0 shadow-sm mb-4\">
        <div class=\"card-body\">
          <h5 class=\"card-title mb-3\">{{ entry_search }}</h5>
          <div class=\"row g-3\">
            <div class=\"col-md-6\">
              <input type=\"text\" name=\"search\" value=\"{{ search }}\" placeholder=\"{{ text_keyword }}\" id=\"input-search\" class=\"form-control form-control-lg shadow-sm\"/>
              <div class=\"form-check mt-2\">
                <input type=\"checkbox\" name=\"description\" value=\"1\" id=\"input-description\" class=\"form-check-input\"{% if description %} checked{% endif %}/>
                <label for=\"input-description\" class=\"form-check-label\">{{ entry_description }}</label>
              </div>
            </div>
            <div class=\"col-md-6\">
              <select name=\"category_id\" id=\"input-category\" class=\"form-select form-select-lg shadow-sm\">
                <option value=\"0\">{{ text_category }}</option>
                {% for category_1 in categories %}
                  <option value=\"{{ category_1.category_id }}\"{% if category_1.category_id == category_id %} selected{% endif %}>{{ category_1.name }}</option>
                  {% for category_2 in category_1.children %}
                    <option value=\"{{ category_2.category_id }}\"{% if category_2.category_id == category_id %} selected{% endif %}>&nbsp;&nbsp;&nbsp;&nbsp;{{ category_2.name }}</option>
                    {% for category_3 in category_2.children %}
                      <option value=\"{{ category_3.category_id }}\"{% if category_3.category_id == category_id %} selected{% endif %}>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{{ category_3.name }}</option>
                    {% endfor %}
                  {% endfor %}
                {% endfor %}
              </select>
              <div class=\"form-check mt-2\">
                <input type=\"checkbox\" name=\"sub_category\" value=\"1\" id=\"input-sub-category\" class=\"form-check-input\"{% if sub_category %} checked{% endif %}/>
                <label for=\"input-sub-category\" class=\"form-check-label\">{{ text_sub_category }}</label>
              </div>
            </div>
          </div>
          <div class=\"text-end mt-3\">
            <button type=\"button\" id=\"button-search\" class=\"btn btn-primary btn-lg shadow-sm\">
              <i class=\"fa-solid fa-magnifying-glass me-2\"></i>{{ button_search }}
            </button>
          </div>
        </div>
      </div>

      <h2 class=\"mb-4\">{{ text_search }}</h2>
      {% if products %}
        {# Toolbar - Same as category.twig #}
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
                  <select id=\"input-sort\" class=\"form-select\">
                    {% for sorts in sorts %}
                      <option value=\"{{ sorts.href }}\"{% if sorts.value == '%s-%s'|format(sort, order) %} selected{% endif %}>{{ sorts.text }}</option>
                    {% endfor %}
                  </select>
                </div>
              </div>
              <div class=\"col-lg-3 col-md-4 col-6\">
                <div class=\"input-group shadow-sm\">
                  <label for=\"input-limit\" class=\"input-group-text\"><i class=\"fa-solid fa-list-ol me-2 d-none d-lg-inline\"></i>{{ text_limit }}</label>
                  <select id=\"input-limit\" class=\"form-select\">
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
          <i class=\"fa-solid fa-magnifying-glass fa-3x mb-3 text-body-secondary opacity-25\"></i>
          <p class=\"text-body-secondary\">{{ text_no_results }}</p>
        </div>
      {% endif %}
      {{ content_bottom }}
    </div>{{ column_right }}
  </div>
</div>
<script>

<script>
document.getElementById('input-sort').addEventListener('change', function() {
  location = this.value;
});

document.getElementById('input-limit').addEventListener('change', function() {
  location = this.value;
});
document.getElementById('button-search').addEventListener('click', function() {
    let url = 'index.php?route=product/search&language={{ language }}';
    const search = document.getElementById('input-search').value;
    if (search) url += '&search=' + encodeURIComponent(search);
    const category_id = document.getElementById('input-category').value;
    if (category_id > 0) url += '&category_id=' + encodeURIComponent(category_id);
    if (document.getElementById('input-sub-category').checked) url += '&sub_category=1';
    if (document.getElementById('input-description').checked) url += '&description=1';
    location = url;
});

document.getElementById('input-search').addEventListener('keydown', function(e) {
    if (e.keyCode == 13) document.getElementById('button-search').click();
});

document.getElementById('input-category').addEventListener('change', function() {
    document.getElementById('input-sub-category').disabled = this.value == '0';
});

document.getElementById('input-category').dispatchEvent(new Event('change'));
</script>
{{ footer }}
", "catalog/view/template/product/search.twig", "/var/www/html/catalog/view/template/product/search.twig");
    }
}
