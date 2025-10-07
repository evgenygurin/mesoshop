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

/* catalog/view/template/product/manufacturer_list.twig */
class __TwigTemplate_f32027fd7d983974d0b07d4d77aad9a4 extends Template
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
      <h1 class=\"mb-4\">";
        // line 17
        yield ($context["heading_title"] ?? null);
        yield "</h1>
      ";
        // line 18
        if (($context["categories"] ?? null)) {
            // line 19
            yield "        ";
            // line 20
            yield "        <div class=\"card border-0 shadow-sm mb-4\">
          <div class=\"card-body\">
            <strong class=\"me-2\">";
            // line 22
            yield ($context["text_index"] ?? null);
            yield "</strong>
            <div class=\"d-inline-flex flex-wrap gap-2\">
              ";
            // line 24
            $context['_parent'] = $context;
            $context['_seq'] = CoreExtension::ensureTraversable(($context["categories"] ?? null));
            foreach ($context['_seq'] as $context["_key"] => $context["category"]) {
                // line 25
                yield "                <a href=\"";
                yield CoreExtension::getAttribute($this->env, $this->source, $context["category"], "href", [], "any", false, false, false, 25);
                yield "#";
                yield CoreExtension::getAttribute($this->env, $this->source, $context["category"], "name", [], "any", false, false, false, 25);
                yield "\" class=\"badge bg-primary text-decoration-none\">
                  ";
                // line 26
                yield CoreExtension::getAttribute($this->env, $this->source, $context["category"], "name", [], "any", false, false, false, 26);
                yield "
                </a>
              ";
            }
            $_parent = $context['_parent'];
            unset($context['_seq'], $context['_key'], $context['category'], $context['_parent']);
            $context = array_intersect_key($context, $_parent) + $_parent;
            // line 29
            yield "            </div>
          </div>
        </div>

        ";
            // line 34
            yield "        ";
            $context['_parent'] = $context;
            $context['_seq'] = CoreExtension::ensureTraversable(($context["categories"] ?? null));
            foreach ($context['_seq'] as $context["_key"] => $context["category"]) {
                // line 35
                yield "          <div id=\"";
                yield CoreExtension::getAttribute($this->env, $this->source, $context["category"], "name", [], "any", false, false, false, 35);
                yield "\" class=\"mb-5\">
            <h3 class=\"border-bottom pb-2 mb-3\">";
                // line 36
                yield CoreExtension::getAttribute($this->env, $this->source, $context["category"], "name", [], "any", false, false, false, 36);
                yield "</h3>
            ";
                // line 37
                if (CoreExtension::getAttribute($this->env, $this->source, $context["category"], "manufacturer", [], "any", false, false, false, 37)) {
                    // line 38
                    yield "              <div class=\"row row-cols-2 row-cols-md-3 row-cols-lg-4 g-3\">
                ";
                    // line 39
                    $context['_parent'] = $context;
                    $context['_seq'] = CoreExtension::ensureTraversable(CoreExtension::getAttribute($this->env, $this->source, $context["category"], "manufacturer", [], "any", false, false, false, 39));
                    foreach ($context['_seq'] as $context["_key"] => $context["manufacturer"]) {
                        // line 40
                        yield "                  <div class=\"col\">
                    <a href=\"";
                        // line 41
                        yield CoreExtension::getAttribute($this->env, $this->source, $context["manufacturer"], "href", [], "any", false, false, false, 41);
                        yield "\" class=\"d-block p-2 rounded bg-light text-decoration-none hover-shadow\">
                      <i class=\"fa-solid fa-building me-2\"></i>";
                        // line 42
                        yield CoreExtension::getAttribute($this->env, $this->source, $context["manufacturer"], "name", [], "any", false, false, false, 42);
                        yield "
                    </a>
                  </div>
                ";
                    }
                    $_parent = $context['_parent'];
                    unset($context['_seq'], $context['_key'], $context['manufacturer'], $context['_parent']);
                    $context = array_intersect_key($context, $_parent) + $_parent;
                    // line 46
                    yield "              </div>
            ";
                }
                // line 48
                yield "          </div>
        ";
            }
            $_parent = $context['_parent'];
            unset($context['_seq'], $context['_key'], $context['category'], $context['_parent']);
            $context = array_intersect_key($context, $_parent) + $_parent;
            // line 50
            yield "      ";
        } else {
            // line 51
            yield "        <div class=\"text-center py-5\">
          <i class=\"fa-solid fa-industry fa-3x mb-3 text-body-secondary opacity-25\"></i>
          <p class=\"text-body-secondary mb-4\">";
            // line 53
            yield ($context["text_no_results"] ?? null);
            yield "</p>
          <a href=\"";
            // line 54
            yield ($context["continue"] ?? null);
            yield "\" class=\"btn btn-primary shadow-sm\">
            <i class=\"fa-solid fa-arrow-left me-2\"></i>";
            // line 55
            yield ($context["button_continue"] ?? null);
            yield "
          </a>
        </div>
      ";
        }
        // line 59
        yield "      ";
        yield ($context["content_bottom"] ?? null);
        yield "
    </div>";
        // line 60
        yield ($context["column_right"] ?? null);
        yield "
  </div>
</div>
";
        // line 63
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
        return "catalog/view/template/product/manufacturer_list.twig";
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
        return array (  242 => 63,  236 => 60,  231 => 59,  224 => 55,  220 => 54,  216 => 53,  212 => 51,  209 => 50,  202 => 48,  198 => 46,  188 => 42,  184 => 41,  181 => 40,  177 => 39,  174 => 38,  172 => 37,  168 => 36,  163 => 35,  158 => 34,  152 => 29,  143 => 26,  136 => 25,  132 => 24,  127 => 22,  123 => 20,  121 => 19,  119 => 18,  115 => 17,  111 => 16,  107 => 15,  102 => 12,  87 => 10,  84 => 9,  75 => 8,  68 => 7,  51 => 6,  47 => 4,  42 => 1,);
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
      <h1 class=\"mb-4\">{{ heading_title }}</h1>
      {% if categories %}
        {# Index Navigation #}
        <div class=\"card border-0 shadow-sm mb-4\">
          <div class=\"card-body\">
            <strong class=\"me-2\">{{ text_index }}</strong>
            <div class=\"d-inline-flex flex-wrap gap-2\">
              {% for category in categories %}
                <a href=\"{{ category.href }}#{{ category.name }}\" class=\"badge bg-primary text-decoration-none\">
                  {{ category.name }}
                </a>
              {% endfor %}
            </div>
          </div>
        </div>

        {# Manufacturer Lists #}
        {% for category in categories %}
          <div id=\"{{ category.name }}\" class=\"mb-5\">
            <h3 class=\"border-bottom pb-2 mb-3\">{{ category.name }}</h3>
            {% if category.manufacturer %}
              <div class=\"row row-cols-2 row-cols-md-3 row-cols-lg-4 g-3\">
                {% for manufacturer in category.manufacturer %}
                  <div class=\"col\">
                    <a href=\"{{ manufacturer.href }}\" class=\"d-block p-2 rounded bg-light text-decoration-none hover-shadow\">
                      <i class=\"fa-solid fa-building me-2\"></i>{{ manufacturer.name }}
                    </a>
                  </div>
                {% endfor %}
              </div>
            {% endif %}
          </div>
        {% endfor %}
      {% else %}
        <div class=\"text-center py-5\">
          <i class=\"fa-solid fa-industry fa-3x mb-3 text-body-secondary opacity-25\"></i>
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
", "catalog/view/template/product/manufacturer_list.twig", "/var/www/html/catalog/view/template/product/manufacturer_list.twig");
    }
}
