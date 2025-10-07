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

/* catalog/view/template/common/pagination.twig */
class __TwigTemplate_078595e3268b81a231bf06128783c742 extends Template
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
        yield "<nav aria-label=\"Page navigation\">
  <ul class=\"pagination justify-content-center shadow-sm\">
    ";
        // line 3
        if (($context["first"] ?? null)) {
            // line 4
            yield "      <li class=\"page-item\">
        <a href=\"";
            // line 5
            yield ($context["first"] ?? null);
            yield "\" class=\"page-link\" aria-label=\"First\">
          <i class=\"fa-solid fa-angles-left\"></i>
        </a>
      </li>
    ";
        }
        // line 10
        yield "    ";
        if (($context["prev"] ?? null)) {
            // line 11
            yield "      <li class=\"page-item\">
        <a href=\"";
            // line 12
            yield ($context["prev"] ?? null);
            yield "\" class=\"page-link\" aria-label=\"Previous\">
          <i class=\"fa-solid fa-angle-left\"></i>
        </a>
      </li>
    ";
        }
        // line 17
        yield "    ";
        $context['_parent'] = $context;
        $context['_seq'] = CoreExtension::ensureTraversable(($context["links"] ?? null));
        foreach ($context['_seq'] as $context["_key"] => $context["link"]) {
            // line 18
            yield "      ";
            if ((CoreExtension::getAttribute($this->env, $this->source, $context["link"], "page", [], "any", false, false, false, 18) == ($context["page"] ?? null))) {
                // line 19
                yield "        <li class=\"page-item active\" aria-current=\"page\">
          <span class=\"page-link\">";
                // line 20
                yield CoreExtension::getAttribute($this->env, $this->source, $context["link"], "page", [], "any", false, false, false, 20);
                yield "</span>
        </li>
      ";
            } else {
                // line 23
                yield "        <li class=\"page-item\">
          <a href=\"";
                // line 24
                yield CoreExtension::getAttribute($this->env, $this->source, $context["link"], "href", [], "any", false, false, false, 24);
                yield "\" class=\"page-link\">";
                yield CoreExtension::getAttribute($this->env, $this->source, $context["link"], "page", [], "any", false, false, false, 24);
                yield "</a>
        </li>
      ";
            }
            // line 27
            yield "    ";
        }
        $_parent = $context['_parent'];
        unset($context['_seq'], $context['_key'], $context['link'], $context['_parent']);
        $context = array_intersect_key($context, $_parent) + $_parent;
        // line 28
        yield "    ";
        if (($context["next"] ?? null)) {
            // line 29
            yield "      <li class=\"page-item\">
        <a href=\"";
            // line 30
            yield ($context["next"] ?? null);
            yield "\" class=\"page-link\" aria-label=\"Next\">
          <i class=\"fa-solid fa-angle-right\"></i>
        </a>
      </li>
    ";
        }
        // line 35
        yield "    ";
        if (($context["last"] ?? null)) {
            // line 36
            yield "      <li class=\"page-item\">
        <a href=\"";
            // line 37
            yield ($context["last"] ?? null);
            yield "\" class=\"page-link\" aria-label=\"Last\">
          <i class=\"fa-solid fa-angles-right\"></i>
        </a>
      </li>
    ";
        }
        // line 42
        yield "  </ul>
</nav>";
        yield from [];
    }

    /**
     * @codeCoverageIgnore
     */
    public function getTemplateName(): string
    {
        return "catalog/view/template/common/pagination.twig";
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
        return array (  135 => 42,  127 => 37,  124 => 36,  121 => 35,  113 => 30,  110 => 29,  107 => 28,  101 => 27,  93 => 24,  90 => 23,  84 => 20,  81 => 19,  78 => 18,  73 => 17,  65 => 12,  62 => 11,  59 => 10,  51 => 5,  48 => 4,  46 => 3,  42 => 1,);
    }

    public function getSourceContext(): Source
    {
        return new Source("<nav aria-label=\"Page navigation\">
  <ul class=\"pagination justify-content-center shadow-sm\">
    {% if first %}
      <li class=\"page-item\">
        <a href=\"{{ first }}\" class=\"page-link\" aria-label=\"First\">
          <i class=\"fa-solid fa-angles-left\"></i>
        </a>
      </li>
    {% endif %}
    {% if prev %}
      <li class=\"page-item\">
        <a href=\"{{ prev }}\" class=\"page-link\" aria-label=\"Previous\">
          <i class=\"fa-solid fa-angle-left\"></i>
        </a>
      </li>
    {% endif %}
    {% for link in links %}
      {% if link.page == page %}
        <li class=\"page-item active\" aria-current=\"page\">
          <span class=\"page-link\">{{ link.page }}</span>
        </li>
      {% else %}
        <li class=\"page-item\">
          <a href=\"{{ link.href }}\" class=\"page-link\">{{ link.page }}</a>
        </li>
      {% endif %}
    {% endfor %}
    {% if next %}
      <li class=\"page-item\">
        <a href=\"{{ next }}\" class=\"page-link\" aria-label=\"Next\">
          <i class=\"fa-solid fa-angle-right\"></i>
        </a>
      </li>
    {% endif %}
    {% if last %}
      <li class=\"page-item\">
        <a href=\"{{ last }}\" class=\"page-link\" aria-label=\"Last\">
          <i class=\"fa-solid fa-angles-right\"></i>
        </a>
      </li>
    {% endif %}
  </ul>
</nav>", "catalog/view/template/common/pagination.twig", "/var/www/html/catalog/view/template/common/pagination.twig");
    }
}
