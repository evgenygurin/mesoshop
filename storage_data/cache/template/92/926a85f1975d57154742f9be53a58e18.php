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

/* catalog/view/template/common/success.twig */
class __TwigTemplate_7ee964b3f1a69f0730de33533c346fd2 extends Template
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
<div id=\"common-success\" class=\"container my-4\">
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
      ";
        // line 18
        yield "      <div class=\"card border-0 shadow-sm\">
        <div class=\"card-body text-center py-5\">
          <div class=\"mb-4\">
            <i class=\"fa-solid fa-circle-check fa-4x text-success\"></i>
          </div>
          <h1 class=\"mb-3\">";
        // line 23
        yield ($context["heading_title"] ?? null);
        yield "</h1>
          <div class=\"mb-4\">";
        // line 24
        yield ($context["text_message"] ?? null);
        yield "</div>
          <a href=\"";
        // line 25
        yield ($context["continue"] ?? null);
        yield "\" class=\"btn btn-primary btn-lg shadow-sm\">
            <i class=\"fa-solid fa-arrow-right me-2\"></i>";
        // line 26
        yield ($context["button_continue"] ?? null);
        yield "
          </a>
        </div>
      </div>
      ";
        // line 30
        yield ($context["content_bottom"] ?? null);
        yield "
    </div>";
        // line 31
        yield ($context["column_right"] ?? null);
        yield "
  </div>
</div>
";
        // line 34
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
        return "catalog/view/template/common/success.twig";
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
        return array (  151 => 34,  145 => 31,  141 => 30,  134 => 26,  130 => 25,  126 => 24,  122 => 23,  115 => 18,  111 => 16,  107 => 15,  102 => 12,  87 => 10,  84 => 9,  75 => 8,  68 => 7,  51 => 6,  47 => 4,  42 => 1,);
    }

    public function getSourceContext(): Source
    {
        return new Source("{{ header }}
<div id=\"common-success\" class=\"container my-4\">
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
      {# Success Card #}
      <div class=\"card border-0 shadow-sm\">
        <div class=\"card-body text-center py-5\">
          <div class=\"mb-4\">
            <i class=\"fa-solid fa-circle-check fa-4x text-success\"></i>
          </div>
          <h1 class=\"mb-3\">{{ heading_title }}</h1>
          <div class=\"mb-4\">{{ text_message }}</div>
          <a href=\"{{ continue }}\" class=\"btn btn-primary btn-lg shadow-sm\">
            <i class=\"fa-solid fa-arrow-right me-2\"></i>{{ button_continue }}
          </a>
        </div>
      </div>
      {{ content_bottom }}
    </div>{{ column_right }}
  </div>
</div>
{{ footer }}
", "catalog/view/template/common/success.twig", "/var/www/html/catalog/view/template/common/success.twig");
    }
}
