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

/* catalog/view/template/account/returns_list.twig */
class __TwigTemplate_38b63a44f7f584eef336ae7b440313fc extends Template
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
<div id=\"account-return\" class=\"container\">
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
        yield ($context["heading_title"] ?? null);
        yield "</h1>
      ";
        // line 11
        if (($context["returns"] ?? null)) {
            // line 12
            yield "        <div class=\"table-responsive\">
          <table class=\"table table-bordered table-hover\">
            <thead>
              <tr>
                <th class=\"text-end\">";
            // line 16
            yield ($context["column_return_id"] ?? null);
            yield "</th>
                <th>";
            // line 17
            yield ($context["column_status"] ?? null);
            yield "</th>
                <th>";
            // line 18
            yield ($context["column_date_added"] ?? null);
            yield "</th>
                <th class=\"text-end\">";
            // line 19
            yield ($context["column_order_id"] ?? null);
            yield "</th>
                <th></th>
              </tr>
            </thead>
            <tbody>
              ";
            // line 24
            $context['_parent'] = $context;
            $context['_seq'] = CoreExtension::ensureTraversable(($context["returns"] ?? null));
            foreach ($context['_seq'] as $context["_key"] => $context["return"]) {
                // line 25
                yield "                <tr>
                  <td class=\"text-end\">#";
                // line 26
                yield CoreExtension::getAttribute($this->env, $this->source, $context["return"], "return_id", [], "any", false, false, false, 26);
                yield "</td>
                  <td>";
                // line 27
                yield CoreExtension::getAttribute($this->env, $this->source, $context["return"], "status", [], "any", false, false, false, 27);
                yield "</td>
                  <td>";
                // line 28
                yield CoreExtension::getAttribute($this->env, $this->source, $context["return"], "date_added", [], "any", false, false, false, 28);
                yield "</td>
                  <td class=\"text-end\">";
                // line 29
                yield CoreExtension::getAttribute($this->env, $this->source, $context["return"], "order_id", [], "any", false, false, false, 29);
                yield "</td>
                  <td class=\"text-end\"><a href=\"";
                // line 30
                yield CoreExtension::getAttribute($this->env, $this->source, $context["return"], "href", [], "any", false, false, false, 30);
                yield "\" data-bs-toggle=\"tooltip\" title=\"";
                yield ($context["button_view"] ?? null);
                yield "\" class=\"btn btn-info\"><i class=\"fa-solid fa-eye\"></i></a></td>
                </tr>
              ";
            }
            $_parent = $context['_parent'];
            unset($context['_seq'], $context['_key'], $context['return'], $context['_parent']);
            $context = array_intersect_key($context, $_parent) + $_parent;
            // line 33
            yield "            </tbody>
          </table>
        </div>
        <div class=\"row mb-3\">
          <div class=\"col-sm-6 text-start\">";
            // line 37
            yield ($context["pagination"] ?? null);
            yield "</div>
          <div class=\"col-sm-6 text-end\">";
            // line 38
            yield ($context["results"] ?? null);
            yield "</div>
        </div>
      ";
        } else {
            // line 41
            yield "        <p>";
            yield ($context["text_no_results"] ?? null);
            yield "</p>
      ";
        }
        // line 43
        yield "      <div class=\"text-end\"><a href=\"";
        yield ($context["continue"] ?? null);
        yield "\" class=\"btn btn-primary\">";
        yield ($context["button_continue"] ?? null);
        yield "</a></div>
      ";
        // line 44
        yield ($context["content_bottom"] ?? null);
        yield "</div>
    ";
        // line 45
        yield ($context["column_right"] ?? null);
        yield "</div>
</div>
";
        // line 47
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
        return "catalog/view/template/account/returns_list.twig";
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
        return array (  178 => 47,  173 => 45,  169 => 44,  162 => 43,  156 => 41,  150 => 38,  146 => 37,  140 => 33,  129 => 30,  125 => 29,  121 => 28,  117 => 27,  113 => 26,  110 => 25,  106 => 24,  98 => 19,  94 => 18,  90 => 17,  86 => 16,  80 => 12,  78 => 11,  74 => 10,  70 => 9,  66 => 8,  63 => 7,  52 => 5,  48 => 4,  42 => 1,);
    }

    public function getSourceContext(): Source
    {
        return new Source("{{ header }}
<div id=\"account-return\" class=\"container\">
  <ul class=\"breadcrumb\">
    {% for breadcrumb in breadcrumbs %}
      <li class=\"breadcrumb-item\"><a href=\"{{ breadcrumb.href }}\">{{ breadcrumb.text }}</a></li>
    {% endfor %}
  </ul>
  <div class=\"row\">{{ column_left }}
    <div id=\"content\" class=\"col\">{{ content_top }}
      <h1>{{ heading_title }}</h1>
      {% if returns %}
        <div class=\"table-responsive\">
          <table class=\"table table-bordered table-hover\">
            <thead>
              <tr>
                <th class=\"text-end\">{{ column_return_id }}</th>
                <th>{{ column_status }}</th>
                <th>{{ column_date_added }}</th>
                <th class=\"text-end\">{{ column_order_id }}</th>
                <th></th>
              </tr>
            </thead>
            <tbody>
              {% for return in returns %}
                <tr>
                  <td class=\"text-end\">#{{ return.return_id }}</td>
                  <td>{{ return.status }}</td>
                  <td>{{ return.date_added }}</td>
                  <td class=\"text-end\">{{ return.order_id }}</td>
                  <td class=\"text-end\"><a href=\"{{ return.href }}\" data-bs-toggle=\"tooltip\" title=\"{{ button_view }}\" class=\"btn btn-info\"><i class=\"fa-solid fa-eye\"></i></a></td>
                </tr>
              {% endfor %}
            </tbody>
          </table>
        </div>
        <div class=\"row mb-3\">
          <div class=\"col-sm-6 text-start\">{{ pagination }}</div>
          <div class=\"col-sm-6 text-end\">{{ results }}</div>
        </div>
      {% else %}
        <p>{{ text_no_results }}</p>
      {% endif %}
      <div class=\"text-end\"><a href=\"{{ continue }}\" class=\"btn btn-primary\">{{ button_continue }}</a></div>
      {{ content_bottom }}</div>
    {{ column_right }}</div>
</div>
{{ footer }}
", "catalog/view/template/account/returns_list.twig", "/var/www/html/catalog/view/template/account/returns_list.twig");
    }
}
