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

/* catalog/view/template/common/home.twig */
class __TwigTemplate_93046965f63da7ec11a12159c05d7f34 extends Template
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
<div id=\"common-home\" class=\"container my-4 my-lg-5\">
  <div class=\"row g-4\">
    ";
        // line 4
        if (($context["column_left"] ?? null)) {
            // line 5
            yield "    <div class=\"col-12 col-lg-3\">
      <div class=\"sticky-top-100\">
        ";
            // line 7
            yield ($context["column_left"] ?? null);
            yield "
      </div>
    </div>
    ";
        }
        // line 11
        yield "    
    <div id=\"content\" class=\"col-12";
        // line 12
        if ((($context["column_left"] ?? null) && ($context["column_right"] ?? null))) {
            yield " col-lg-6";
        } elseif ((($context["column_left"] ?? null) || ($context["column_right"] ?? null))) {
            yield " col-lg-9";
        }
        yield " main-content\">
      <div class=\"fade-in\">
        ";
        // line 14
        yield ($context["content_top"] ?? null);
        yield "
        ";
        // line 15
        yield ($context["content_bottom"] ?? null);
        yield "
      </div>
    </div>
    
    ";
        // line 19
        if (($context["column_right"] ?? null)) {
            // line 20
            yield "    <div class=\"col-12 col-lg-3\">
      <div class=\"sticky-top-100\">
        ";
            // line 22
            yield ($context["column_right"] ?? null);
            yield "
      </div>
    </div>
    ";
        }
        // line 26
        yield "  </div>
</div>
";
        // line 28
        yield ($context["footer"] ?? null);
        yield from [];
    }

    /**
     * @codeCoverageIgnore
     */
    public function getTemplateName(): string
    {
        return "catalog/view/template/common/home.twig";
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
        return array (  101 => 28,  97 => 26,  90 => 22,  86 => 20,  84 => 19,  77 => 15,  73 => 14,  64 => 12,  61 => 11,  54 => 7,  50 => 5,  48 => 4,  42 => 1,);
    }

    public function getSourceContext(): Source
    {
        return new Source("{{ header }}
<div id=\"common-home\" class=\"container my-4 my-lg-5\">
  <div class=\"row g-4\">
    {% if column_left %}
    <div class=\"col-12 col-lg-3\">
      <div class=\"sticky-top-100\">
        {{ column_left }}
      </div>
    </div>
    {% endif %}
    
    <div id=\"content\" class=\"col-12{% if column_left and column_right %} col-lg-6{% elseif column_left or column_right %} col-lg-9{% endif %} main-content\">
      <div class=\"fade-in\">
        {{ content_top }}
        {{ content_bottom }}
      </div>
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
{{ footer }}", "catalog/view/template/common/home.twig", "/var/www/html/catalog/view/template/common/home.twig");
    }
}
