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

/* catalog/view/template/product/thumb.twig */
class __TwigTemplate_1a4c61b12dcccf84b957f17da0326a23 extends Template
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
        // line 3
        yield "<div class=\"card card-product border mb-5 shadow-xs border-radius-lg\">
  <a href=\"";
        // line 4
        yield ($context["href"] ?? null);
        yield "\">
    <div class=\"height-350\">
      <img class=\"w-100 h-100 p-4 rounded-top\" src=\"";
        // line 6
        yield ($context["thumb"] ?? null);
        yield "\" alt=\"";
        yield ($context["name"] ?? null);
        yield "\" />
    </div>
    <div class=\"card-body text-start\">
      <h4 class=\"font-weight-bold\">";
        // line 9
        yield ($context["name"] ?? null);
        yield "</h4>

      ";
        // line 11
        if (($context["description"] ?? null)) {
            // line 12
            yield "        <p class=\"text-body text-sm\">";
            yield Twig\Extension\CoreExtension::slice($this->env->getCharset(), Twig\Extension\CoreExtension::striptags(($context["description"] ?? null)), 0, 100);
            if ((Twig\Extension\CoreExtension::length($this->env->getCharset(), ($context["description"] ?? null)) > 100)) {
                yield "...";
            }
            yield "</p>
      ";
        }
        // line 14
        yield "
      ";
        // line 15
        if (($context["rating"] ?? null)) {
            // line 16
            yield "        ";
            yield from $this->loadTemplate("product/components/product_rating.twig", "catalog/view/template/product/thumb.twig", 16)->unwrap()->yield(CoreExtension::merge($context, ["rating" => ($context["rating"] ?? null), "reviews" => ($context["reviews"] ?? null)]));
            // line 17
            yield "      ";
        }
        // line 18
        yield "
      ";
        // line 19
        if (($context["price"] ?? null)) {
            // line 20
            yield "        <h4 class=\"mb-0 text-lg mt-1 mb-3\">
          ";
            // line 21
            if ( !($context["special"] ?? null)) {
                // line 22
                yield "            ";
                yield ($context["price"] ?? null);
                yield "
          ";
            } else {
                // line 24
                yield "            <span class=\"price-old text-muted text-decoration-line-through me-2\">";
                yield ($context["price"] ?? null);
                yield "</span>
            <span class=\"price-new text-danger\">";
                // line 25
                yield ($context["special"] ?? null);
                yield "</span>
          ";
            }
            // line 27
            yield "        </h4>
      ";
        }
        // line 29
        yield "
      ";
        // line 30
        if (($context["tax"] ?? null)) {
            // line 31
            yield "        <span class=\"price-tax text-muted text-sm\">";
            yield ($context["text_tax"] ?? null);
            yield " ";
            yield ($context["tax"] ?? null);
            yield "</span>
      ";
        }
        // line 33
        yield "
      <div class=\"mt-3\">
        <button type=\"button\" class=\"btn btn-primary btn-sm\" onclick=\"cart.add('";
        // line 35
        yield ($context["product_id"] ?? null);
        yield "')\">
          <i class=\"bi bi-cart-plus\"></i> ";
        // line 36
        yield ($context["button_cart"] ?? null);
        yield "
        </button>
        <button type=\"button\" class=\"btn btn-light btn-sm\" onclick=\"wishlist.add('";
        // line 38
        yield ($context["product_id"] ?? null);
        yield "')\">
          <i class=\"bi bi-heart\"></i>
        </button>
        <button type=\"button\" class=\"btn btn-light btn-sm\" onclick=\"compare.add('";
        // line 41
        yield ($context["product_id"] ?? null);
        yield "')\">
          <i class=\"bi bi-arrow-left-right\"></i>
        </button>
      </div>
    </div>
  </a>
</div>
";
        yield from [];
    }

    /**
     * @codeCoverageIgnore
     */
    public function getTemplateName(): string
    {
        return "catalog/view/template/product/thumb.twig";
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
        return array (  147 => 41,  141 => 38,  136 => 36,  132 => 35,  128 => 33,  120 => 31,  118 => 30,  115 => 29,  111 => 27,  106 => 25,  101 => 24,  95 => 22,  93 => 21,  90 => 20,  88 => 19,  85 => 18,  82 => 17,  79 => 16,  77 => 15,  74 => 14,  65 => 12,  63 => 11,  58 => 9,  50 => 6,  45 => 4,  42 => 3,);
    }

    public function getSourceContext(): Source
    {
        return new Source("{# Product Thumb Astro - обновленная версия с Astro Ecommerce стилями #}
{# Использует компонент card_product.twig #}
<div class=\"card card-product border mb-5 shadow-xs border-radius-lg\">
  <a href=\"{{ href }}\">
    <div class=\"height-350\">
      <img class=\"w-100 h-100 p-4 rounded-top\" src=\"{{ thumb }}\" alt=\"{{ name }}\" />
    </div>
    <div class=\"card-body text-start\">
      <h4 class=\"font-weight-bold\">{{ name }}</h4>

      {% if description %}
        <p class=\"text-body text-sm\">{{ description|striptags|slice(0, 100) }}{% if description|length > 100 %}...{% endif %}</p>
      {% endif %}

      {% if rating %}
        {% include 'product/components/product_rating.twig' with {'rating': rating, 'reviews': reviews} %}
      {% endif %}

      {% if price %}
        <h4 class=\"mb-0 text-lg mt-1 mb-3\">
          {% if not special %}
            {{ price }}
          {% else %}
            <span class=\"price-old text-muted text-decoration-line-through me-2\">{{ price }}</span>
            <span class=\"price-new text-danger\">{{ special }}</span>
          {% endif %}
        </h4>
      {% endif %}

      {% if tax %}
        <span class=\"price-tax text-muted text-sm\">{{ text_tax }} {{ tax }}</span>
      {% endif %}

      <div class=\"mt-3\">
        <button type=\"button\" class=\"btn btn-primary btn-sm\" onclick=\"cart.add('{{ product_id }}')\">
          <i class=\"bi bi-cart-plus\"></i> {{ button_cart }}
        </button>
        <button type=\"button\" class=\"btn btn-light btn-sm\" onclick=\"wishlist.add('{{ product_id }}')\">
          <i class=\"bi bi-heart\"></i>
        </button>
        <button type=\"button\" class=\"btn btn-light btn-sm\" onclick=\"compare.add('{{ product_id }}')\">
          <i class=\"bi bi-arrow-left-right\"></i>
        </button>
      </div>
    </div>
  </a>
</div>
", "catalog/view/template/product/thumb.twig", "/var/www/html/catalog/view/template/product/thumb.twig");
    }
}
