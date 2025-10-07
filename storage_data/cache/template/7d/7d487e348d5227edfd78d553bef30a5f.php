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

/* catalog/view/template/account/wishlist_list.twig */
class __TwigTemplate_8bf6ab359d987b7b7977b6b2241d7d87 extends Template
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
            yield "  <div class=\"table-responsive\">
    <table class=\"table table-bordered table-hover\">
      <thead>
        <tr>
          <th class=\"text-center\">";
            // line 6
            yield ($context["column_image"] ?? null);
            yield "</th>
          <th>";
            // line 7
            yield ($context["column_name"] ?? null);
            yield "</th>
          <th>";
            // line 8
            yield ($context["column_model"] ?? null);
            yield "</th>
          <th class=\"text-end\">";
            // line 9
            yield ($context["column_stock"] ?? null);
            yield "</th>
          <th class=\"text-end\">";
            // line 10
            yield ($context["column_price"] ?? null);
            yield "</th>
          <th class=\"text-end\">";
            // line 11
            yield ($context["column_action"] ?? null);
            yield "</th>
        </tr>
      </thead>
      <tbody>
        ";
            // line 15
            $context["product_row"] = 0;
            // line 16
            yield "        ";
            $context['_parent'] = $context;
            $context['_seq'] = CoreExtension::ensureTraversable(($context["products"] ?? null));
            foreach ($context['_seq'] as $context["_key"] => $context["product"]) {
                // line 17
                yield "          <tr>
            <td class=\"text-center\">";
                // line 18
                if (CoreExtension::getAttribute($this->env, $this->source, $context["product"], "thumb", [], "any", false, false, false, 18)) {
                    yield "<a href=\"";
                    yield CoreExtension::getAttribute($this->env, $this->source, $context["product"], "href", [], "any", false, false, false, 18);
                    yield "\"><img src=\"";
                    yield CoreExtension::getAttribute($this->env, $this->source, $context["product"], "thumb", [], "any", false, false, false, 18);
                    yield "\" alt=\"";
                    yield CoreExtension::getAttribute($this->env, $this->source, $context["product"], "name", [], "any", false, false, false, 18);
                    yield "\" title=\"";
                    yield CoreExtension::getAttribute($this->env, $this->source, $context["product"], "name", [], "any", false, false, false, 18);
                    yield "\"/></a>";
                }
                yield "</td>
            <td><a href=\"";
                // line 19
                yield CoreExtension::getAttribute($this->env, $this->source, $context["product"], "href", [], "any", false, false, false, 19);
                yield "\">";
                yield CoreExtension::getAttribute($this->env, $this->source, $context["product"], "name", [], "any", false, false, false, 19);
                yield "</a>
              <form id=\"form-product-";
                // line 20
                yield ($context["product_row"] ?? null);
                yield "\" action=\"";
                yield ($context["cart_add"] ?? null);
                yield "\" method=\"post\" data-oc-toggle=\"ajax\" data-oc-load=\"";
                yield ($context["cart"] ?? null);
                yield "\" data-oc-target=\"#cart\">
                <input type=\"hidden\" name=\"product_id\" value=\"";
                // line 21
                yield CoreExtension::getAttribute($this->env, $this->source, $context["product"], "product_id", [], "any", false, false, false, 21);
                yield "\"/>
                <input type=\"hidden\" name=\"quantity\" value=\"";
                // line 22
                yield CoreExtension::getAttribute($this->env, $this->source, $context["product"], "minimum", [], "any", false, false, false, 22);
                yield "\"/>
              </form>
            </td>
            <td>";
                // line 25
                yield CoreExtension::getAttribute($this->env, $this->source, $context["product"], "model", [], "any", false, false, false, 25);
                yield "</td>
            <td class=\"text-end\">";
                // line 26
                yield CoreExtension::getAttribute($this->env, $this->source, $context["product"], "stock", [], "any", false, false, false, 26);
                yield "</td>
            <td class=\"text-end text-nowrap\">
              ";
                // line 28
                if (CoreExtension::getAttribute($this->env, $this->source, $context["product"], "price", [], "any", false, false, false, 28)) {
                    // line 29
                    yield "                <div class=\"price\">
                  ";
                    // line 30
                    if ( !CoreExtension::getAttribute($this->env, $this->source, $context["product"], "special", [], "any", false, false, false, 30)) {
                        // line 31
                        yield "                    ";
                        yield CoreExtension::getAttribute($this->env, $this->source, $context["product"], "price", [], "any", false, false, false, 31);
                        yield "
                  ";
                    } else {
                        // line 33
                        yield "                    <b>";
                        yield CoreExtension::getAttribute($this->env, $this->source, $context["product"], "special", [], "any", false, false, false, 33);
                        yield "</b> <s>";
                        yield CoreExtension::getAttribute($this->env, $this->source, $context["product"], "price", [], "any", false, false, false, 33);
                        yield "</s>
                  ";
                    }
                    // line 35
                    yield "                </div>
              ";
                }
                // line 36
                yield "</td>
            <td class=\"text-end text-nowrap\" style=\"width: 1px;\">
              <div class=\"d-grid\">
                <button type=\"submit\" form=\"form-product-";
                // line 39
                yield ($context["product_row"] ?? null);
                yield "\" class=\"btn btn-primary mb-1\">";
                yield ($context["button_cart"] ?? null);
                yield "</button>
                <a href=\"";
                // line 40
                yield CoreExtension::getAttribute($this->env, $this->source, $context["product"], "remove", [], "any", false, false, false, 40);
                yield "\" class=\"btn btn-danger\">";
                yield ($context["button_remove"] ?? null);
                yield "</a>
              </div>
            </td>
          </tr>
          ";
                // line 44
                $context["product_row"] = (($context["product_row"] ?? null) + 1);
                // line 45
                yield "        ";
            }
            $_parent = $context['_parent'];
            unset($context['_seq'], $context['_key'], $context['product'], $context['_parent']);
            $context = array_intersect_key($context, $_parent) + $_parent;
            // line 46
            yield "      </tbody>
    </table>
  </div>
";
        } else {
            // line 50
            yield "  <p>";
            yield ($context["text_no_results"] ?? null);
            yield "</p>
";
        }
        yield from [];
    }

    /**
     * @codeCoverageIgnore
     */
    public function getTemplateName(): string
    {
        return "catalog/view/template/account/wishlist_list.twig";
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
        return array (  193 => 50,  187 => 46,  181 => 45,  179 => 44,  170 => 40,  164 => 39,  159 => 36,  155 => 35,  147 => 33,  141 => 31,  139 => 30,  136 => 29,  134 => 28,  129 => 26,  125 => 25,  119 => 22,  115 => 21,  107 => 20,  101 => 19,  87 => 18,  84 => 17,  79 => 16,  77 => 15,  70 => 11,  66 => 10,  62 => 9,  58 => 8,  54 => 7,  50 => 6,  44 => 2,  42 => 1,);
    }

    public function getSourceContext(): Source
    {
        return new Source("{% if products %}
  <div class=\"table-responsive\">
    <table class=\"table table-bordered table-hover\">
      <thead>
        <tr>
          <th class=\"text-center\">{{ column_image }}</th>
          <th>{{ column_name }}</th>
          <th>{{ column_model }}</th>
          <th class=\"text-end\">{{ column_stock }}</th>
          <th class=\"text-end\">{{ column_price }}</th>
          <th class=\"text-end\">{{ column_action }}</th>
        </tr>
      </thead>
      <tbody>
        {% set product_row = 0 %}
        {% for product in products %}
          <tr>
            <td class=\"text-center\">{% if product.thumb %}<a href=\"{{ product.href }}\"><img src=\"{{ product.thumb }}\" alt=\"{{ product.name }}\" title=\"{{ product.name }}\"/></a>{% endif %}</td>
            <td><a href=\"{{ product.href }}\">{{ product.name }}</a>
              <form id=\"form-product-{{ product_row }}\" action=\"{{ cart_add }}\" method=\"post\" data-oc-toggle=\"ajax\" data-oc-load=\"{{ cart }}\" data-oc-target=\"#cart\">
                <input type=\"hidden\" name=\"product_id\" value=\"{{ product.product_id }}\"/>
                <input type=\"hidden\" name=\"quantity\" value=\"{{ product.minimum }}\"/>
              </form>
            </td>
            <td>{{ product.model }}</td>
            <td class=\"text-end\">{{ product.stock }}</td>
            <td class=\"text-end text-nowrap\">
              {% if product.price %}
                <div class=\"price\">
                  {% if not product.special %}
                    {{ product.price }}
                  {% else %}
                    <b>{{ product.special }}</b> <s>{{ product.price }}</s>
                  {% endif %}
                </div>
              {% endif %}</td>
            <td class=\"text-end text-nowrap\" style=\"width: 1px;\">
              <div class=\"d-grid\">
                <button type=\"submit\" form=\"form-product-{{ product_row }}\" class=\"btn btn-primary mb-1\">{{ button_cart }}</button>
                <a href=\"{{ product.remove }}\" class=\"btn btn-danger\">{{ button_remove }}</a>
              </div>
            </td>
          </tr>
          {% set product_row = product_row + 1 %}
        {% endfor %}
      </tbody>
    </table>
  </div>
{% else %}
  <p>{{ text_no_results }}</p>
{% endif %}
", "catalog/view/template/account/wishlist_list.twig", "/var/www/html/catalog/view/template/account/wishlist_list.twig");
    }
}
