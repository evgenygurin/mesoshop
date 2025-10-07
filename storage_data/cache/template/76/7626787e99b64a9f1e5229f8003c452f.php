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

/* catalog/view/template/product/related.twig */
class __TwigTemplate_67dca25854c89f3fc4863ec293281f8f extends Template
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
        if (($context["products"] ?? null)) {
            // line 2
            yield "  <div class=\"mt-5\">
    <div class=\"d-flex align-items-center mb-4\">
      <h3 class=\"mb-0\">";
            // line 4
            yield ($context["text_related"] ?? null);
            yield "</h3>
      <span class=\"badge bg-info ms-3\">";
            // line 5
            yield Twig\Extension\CoreExtension::length($this->env->getCharset(), ($context["products"] ?? null));
            yield " items</span>
    </div>
    <div class=\"row row-cols-1 row-cols-sm-2 row-cols-md-3 row-cols-xl-4 g-4\">
      ";
            // line 8
            $context['_parent'] = $context;
            $context['_seq'] = CoreExtension::ensureTraversable(($context["products"] ?? null));
            foreach ($context['_seq'] as $context["_key"] => $context["product"]) {
                // line 9
                yield "        <div class=\"col\">";
                yield $context["product"];
                yield "</div>
      ";
            }
            $_parent = $context['_parent'];
            unset($context['_seq'], $context['_key'], $context['product'], $context['_parent']);
            $context = array_intersect_key($context, $_parent) + $_parent;
            // line 11
            yield "    </div>
  </div>
";
        }
        yield from [];
    }

    /**
     * @codeCoverageIgnore
     */
    public function getTemplateName(): string
    {
        return "catalog/view/template/product/related.twig";
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
        return array (  71 => 11,  62 => 9,  58 => 8,  52 => 5,  48 => 4,  44 => 2,  42 => 1,);
    }

    public function getSourceContext(): Source
    {
        return new Source("{% if products %}
  <div class=\"mt-5\">
    <div class=\"d-flex align-items-center mb-4\">
      <h3 class=\"mb-0\">{{ text_related }}</h3>
      <span class=\"badge bg-info ms-3\">{{ products|length }} items</span>
    </div>
    <div class=\"row row-cols-1 row-cols-sm-2 row-cols-md-3 row-cols-xl-4 g-4\">
      {% for product in products %}
        <div class=\"col\">{{ product }}</div>
      {% endfor %}
    </div>
  </div>
{% endif %}", "catalog/view/template/product/related.twig", "/var/www/html/catalog/view/template/product/related.twig");
    }
}
