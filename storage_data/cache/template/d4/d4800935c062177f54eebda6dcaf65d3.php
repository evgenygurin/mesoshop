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

/* catalog/view/template/account/subscription_list.twig */
class __TwigTemplate_f14729016df873078e2e1c55cf388801 extends Template
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
<div id=\"account-subscription\" class=\"container\">
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
  <div class=\"row\">
    ";
        // line 9
        yield ($context["column_left"] ?? null);
        yield "
    <div id=\"content\" class=\"col\">
      ";
        // line 11
        yield ($context["content_top"] ?? null);
        yield "
      <h1>";
        // line 12
        yield ($context["heading_title"] ?? null);
        yield "</h1>
      ";
        // line 13
        if (($context["subscriptions"] ?? null)) {
            // line 14
            yield "        <div class=\"table-responsive\">
          <table class=\"table table-bordered table-hover\">
            <thead>
              <tr>
                <th class=\"text-end\">";
            // line 18
            yield ($context["column_subscription_id"] ?? null);
            yield "</th>
                <th class=\"text-end\">";
            // line 19
            yield ($context["column_product_total"] ?? null);
            yield "</th>
                <th>";
            // line 20
            yield ($context["column_description"] ?? null);
            yield "</th>
                <th>";
            // line 21
            yield ($context["column_status"] ?? null);
            yield "</th>
                <th>";
            // line 22
            yield ($context["column_date_added"] ?? null);
            yield "</th>
                <th class=\"text-end\"></th>
              </tr>
            </thead>
            <tbody>
              ";
            // line 27
            $context['_parent'] = $context;
            $context['_seq'] = CoreExtension::ensureTraversable(($context["subscriptions"] ?? null));
            foreach ($context['_seq'] as $context["_key"] => $context["subscription"]) {
                // line 28
                yield "                <tr>
                  <td class=\"text-end\">#";
                // line 29
                yield CoreExtension::getAttribute($this->env, $this->source, $context["subscription"], "subscription_id", [], "any", false, false, false, 29);
                yield "</td>
                  <td class=\"text-end\">";
                // line 30
                yield CoreExtension::getAttribute($this->env, $this->source, $context["subscription"], "product_total", [], "any", false, false, false, 30);
                yield "</td>
                  <td>";
                // line 31
                yield CoreExtension::getAttribute($this->env, $this->source, $context["subscription"], "description", [], "any", false, false, false, 31);
                yield "</td>
                  <td>";
                // line 32
                yield CoreExtension::getAttribute($this->env, $this->source, $context["subscription"], "status", [], "any", false, false, false, 32);
                yield "</td>
                  <td>";
                // line 33
                yield CoreExtension::getAttribute($this->env, $this->source, $context["subscription"], "date_added", [], "any", false, false, false, 33);
                yield "</td>
                  <td class=\"text-end\"><a href=\"";
                // line 34
                yield CoreExtension::getAttribute($this->env, $this->source, $context["subscription"], "view", [], "any", false, false, false, 34);
                yield "\" data-bs-toggle=\"tooltip\" title=\"";
                yield ($context["button_view"] ?? null);
                yield "\" class=\"btn btn-info\"><i class=\"fa-solid fa-eye\"></i></a></td>
                </tr>
              ";
            }
            $_parent = $context['_parent'];
            unset($context['_seq'], $context['_key'], $context['subscription'], $context['_parent']);
            $context = array_intersect_key($context, $_parent) + $_parent;
            // line 37
            yield "            </tbody>
          </table>
        </div>
        <div class=\"row mb-3\">
          <div class=\"col-sm-6 text-start\">";
            // line 41
            yield ($context["pagination"] ?? null);
            yield "</div>
          <div class=\"col-sm-6 text-end\">";
            // line 42
            yield ($context["results"] ?? null);
            yield "</div>
        </div>
      ";
        } else {
            // line 45
            yield "        <p>";
            yield ($context["text_no_subscription"] ?? null);
            yield "</p>
      ";
        }
        // line 47
        yield "      <div class=\"text-end\"><a href=\"";
        yield ($context["continue"] ?? null);
        yield "\" class=\"btn btn-primary\">";
        yield ($context["button_continue"] ?? null);
        yield "</a></div>
      ";
        // line 48
        yield ($context["content_bottom"] ?? null);
        yield "
    </div>
    ";
        // line 50
        yield ($context["column_right"] ?? null);
        yield "
  </div>
</div>
";
        // line 53
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
        return "catalog/view/template/account/subscription_list.twig";
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
        return array (  190 => 53,  184 => 50,  179 => 48,  172 => 47,  166 => 45,  160 => 42,  156 => 41,  150 => 37,  139 => 34,  135 => 33,  131 => 32,  127 => 31,  123 => 30,  119 => 29,  116 => 28,  112 => 27,  104 => 22,  100 => 21,  96 => 20,  92 => 19,  88 => 18,  82 => 14,  80 => 13,  76 => 12,  72 => 11,  67 => 9,  63 => 7,  52 => 5,  48 => 4,  42 => 1,);
    }

    public function getSourceContext(): Source
    {
        return new Source("{{ header }}
<div id=\"account-subscription\" class=\"container\">
  <ul class=\"breadcrumb\">
    {% for breadcrumb in breadcrumbs %}
      <li class=\"breadcrumb-item\"><a href=\"{{ breadcrumb.href }}\">{{ breadcrumb.text }}</a></li>
    {% endfor %}
  </ul>
  <div class=\"row\">
    {{ column_left }}
    <div id=\"content\" class=\"col\">
      {{ content_top }}
      <h1>{{ heading_title }}</h1>
      {% if subscriptions %}
        <div class=\"table-responsive\">
          <table class=\"table table-bordered table-hover\">
            <thead>
              <tr>
                <th class=\"text-end\">{{ column_subscription_id }}</th>
                <th class=\"text-end\">{{ column_product_total }}</th>
                <th>{{ column_description }}</th>
                <th>{{ column_status }}</th>
                <th>{{ column_date_added }}</th>
                <th class=\"text-end\"></th>
              </tr>
            </thead>
            <tbody>
              {% for subscription in subscriptions %}
                <tr>
                  <td class=\"text-end\">#{{ subscription.subscription_id }}</td>
                  <td class=\"text-end\">{{ subscription.product_total }}</td>
                  <td>{{ subscription.description }}</td>
                  <td>{{ subscription.status }}</td>
                  <td>{{ subscription.date_added }}</td>
                  <td class=\"text-end\"><a href=\"{{ subscription.view }}\" data-bs-toggle=\"tooltip\" title=\"{{ button_view }}\" class=\"btn btn-info\"><i class=\"fa-solid fa-eye\"></i></a></td>
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
        <p>{{ text_no_subscription }}</p>
      {% endif %}
      <div class=\"text-end\"><a href=\"{{ continue }}\" class=\"btn btn-primary\">{{ button_continue }}</a></div>
      {{ content_bottom }}
    </div>
    {{ column_right }}
  </div>
</div>
{{ footer }}
", "catalog/view/template/account/subscription_list.twig", "/var/www/html/catalog/view/template/account/subscription_list.twig");
    }
}
