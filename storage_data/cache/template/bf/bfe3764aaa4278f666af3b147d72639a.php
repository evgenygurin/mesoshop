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

/* catalog/view/template/common/header.twig */
class __TwigTemplate_9f25e727174f90a606ad8cf08dcc3613 extends Template
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
        yield "<!DOCTYPE html>
<html dir=\"";
        // line 2
        yield ($context["direction"] ?? null);
        yield "\" lang=\"";
        yield ($context["lang"] ?? null);
        yield "\">
<head>
  <meta charset=\"UTF-8\"/>
  <meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">
  <title>";
        // line 6
        yield ($context["title"] ?? null);
        yield "</title>
  <base href=\"";
        // line 7
        yield ($context["base"] ?? null);
        yield "\"/>
  ";
        // line 8
        if (($context["description"] ?? null)) {
            // line 9
            yield "    <meta name=\"description\" content=\"";
            yield ($context["description"] ?? null);
            yield "\"/>
  ";
        }
        // line 11
        yield "  ";
        if (($context["keywords"] ?? null)) {
            // line 12
            yield "    <meta name=\"keywords\" content=\"";
            yield ($context["keywords"] ?? null);
            yield "\"/>
  ";
        }
        // line 14
        yield "
  <!-- Astro Ecommerce Styles -->
  <link href=\"catalog/view/stylesheet/astro-ecommerce.css\" type=\"text/css\" rel=\"stylesheet\"/>
  <link href=\"https://fonts.googleapis.com/css2?family=Open+Sans:wght@300;400;600;700&display=swap\" rel=\"stylesheet\">
  <link rel=\"stylesheet\" href=\"https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css\">

  <script src=\"";
        // line 20
        yield ($context["jquery"] ?? null);
        yield "\" type=\"text/javascript\"></script>
  <script src=\"catalog/view/javascript/common.js\" type=\"text/javascript\"></script>

  ";
        // line 23
        if (($context["icon"] ?? null)) {
            // line 24
            yield "    <link rel=\"icon\" href=\"";
            yield ($context["icon"] ?? null);
            yield "\" type=\"image/png\">
  ";
        }
        // line 26
        yield "  ";
        $context['_parent'] = $context;
        $context['_seq'] = CoreExtension::ensureTraversable(($context["styles"] ?? null));
        foreach ($context['_seq'] as $context["_key"] => $context["style"]) {
            // line 27
            yield "    <link href=\"";
            yield CoreExtension::getAttribute($this->env, $this->source, $context["style"], "href", [], "any", false, false, false, 27);
            yield "\" type=\"text/css\" rel=\"";
            yield CoreExtension::getAttribute($this->env, $this->source, $context["style"], "rel", [], "any", false, false, false, 27);
            yield "\" media=\"";
            yield CoreExtension::getAttribute($this->env, $this->source, $context["style"], "media", [], "any", false, false, false, 27);
            yield "\"/>
  ";
        }
        $_parent = $context['_parent'];
        unset($context['_seq'], $context['_key'], $context['style'], $context['_parent']);
        $context = array_intersect_key($context, $_parent) + $_parent;
        // line 29
        yield "  ";
        $context['_parent'] = $context;
        $context['_seq'] = CoreExtension::ensureTraversable(($context["scripts"] ?? null));
        foreach ($context['_seq'] as $context["_key"] => $context["script"]) {
            // line 30
            yield "    <script src=\"";
            yield CoreExtension::getAttribute($this->env, $this->source, $context["script"], "href", [], "any", false, false, false, 30);
            yield "\" type=\"text/javascript\"></script>
  ";
        }
        $_parent = $context['_parent'];
        unset($context['_seq'], $context['_key'], $context['script'], $context['_parent']);
        $context = array_intersect_key($context, $_parent) + $_parent;
        // line 32
        yield "  ";
        $context['_parent'] = $context;
        $context['_seq'] = CoreExtension::ensureTraversable(($context["links"] ?? null));
        foreach ($context['_seq'] as $context["_key"] => $context["link"]) {
            // line 33
            yield "    <link href=\"";
            yield CoreExtension::getAttribute($this->env, $this->source, $context["link"], "href", [], "any", false, false, false, 33);
            yield "\" rel=\"";
            yield CoreExtension::getAttribute($this->env, $this->source, $context["link"], "rel", [], "any", false, false, false, 33);
            yield "\"/>
  ";
        }
        $_parent = $context['_parent'];
        unset($context['_seq'], $context['_key'], $context['link'], $context['_parent']);
        $context = array_intersect_key($context, $_parent) + $_parent;
        // line 35
        yield "  ";
        $context['_parent'] = $context;
        $context['_seq'] = CoreExtension::ensureTraversable(($context["analytics"] ?? null));
        foreach ($context['_seq'] as $context["_key"] => $context["analytic"]) {
            // line 36
            yield "    ";
            yield $context["analytic"];
            yield "
  ";
        }
        $_parent = $context['_parent'];
        unset($context['_seq'], $context['_key'], $context['analytic'], $context['_parent']);
        $context = array_intersect_key($context, $_parent) + $_parent;
        // line 38
        yield "</head>
<body>
  <div id=\"container\" class=\"d-flex flex-column min-vh-100\">
    <div id=\"alert\" class=\"position-fixed top-0 start-50 translate-middle-x mt-3\" style=\"z-index: 9999;\"></div>

    <!-- Astro Ecommerce Navbar with Blur Effect -->
    <nav class=\"navbar navbar-expand-lg\">
      <div class=\"container\">
        <div class=\"d-flex align-items-center w-100\">
          <!-- Logo/Brand -->
          <div class=\"me-auto\">
            ";
        // line 49
        if (($context["logo"] ?? null)) {
            // line 50
            yield "              <a href=\"";
            yield ($context["home"] ?? null);
            yield "\" class=\"navbar-brand\">
                <img src=\"";
            // line 51
            yield ($context["logo"] ?? null);
            yield "\" title=\"";
            yield ($context["name"] ?? null);
            yield "\" alt=\"";
            yield ($context["name"] ?? null);
            yield "\" class=\"img-fluid\" style=\"max-height: 40px;\"/>
              </a>
            ";
        } else {
            // line 54
            yield "              <a href=\"";
            yield ($context["home"] ?? null);
            yield "\" class=\"navbar-brand font-weight-bolder\">";
            yield ($context["name"] ?? null);
            yield "</a>
            ";
        }
        // line 56
        yield "          </div>

          <!-- Mobile Toggle -->
          <button class=\"navbar-toggler shadow-none\" type=\"button\" data-bs-toggle=\"collapse\" data-bs-target=\"#navigation\" aria-controls=\"navigation\" aria-expanded=\"false\" aria-label=\"Toggle navigation\">
            <span class=\"navbar-toggler-icon\">
              <span class=\"navbar-toggler-bar bar1\"></span>
              <span class=\"navbar-toggler-bar bar2\"></span>
              <span class=\"navbar-toggler-bar bar3\"></span>
            </span>
          </button>

          <!-- Navbar Links -->
          <div class=\"collapse navbar-collapse\" id=\"navigation\">
            <ul class=\"navbar-nav ms-auto align-items-center\">
              <li class=\"nav-item me-2\">
                ";
        // line 71
        yield ($context["currency"] ?? null);
        yield "
              </li>
              <li class=\"nav-item me-2\">
                ";
        // line 74
        yield ($context["language"] ?? null);
        yield "
              </li>
              <li class=\"nav-item me-2\">
                <a href=\"";
        // line 77
        yield ($context["contact"] ?? null);
        yield "\" class=\"nav-link\">
                  <i class=\"bi bi-telephone\"></i>
                  <span class=\"d-none d-lg-inline ms-1\">";
        // line 79
        yield ($context["telephone"] ?? null);
        yield "</span>
                </a>
              </li>
              <li class=\"nav-item dropdown me-2\">
                <a href=\"#\" class=\"nav-link dropdown-toggle\" data-bs-toggle=\"dropdown\" aria-expanded=\"false\">
                  <i class=\"bi bi-person\"></i>
                  <span class=\"d-none d-lg-inline ms-1\">";
        // line 85
        yield ($context["text_account"] ?? null);
        yield "</span>
                </a>
                <ul class=\"dropdown-menu dropdown-menu-end\">
                  ";
        // line 88
        if ( !($context["logged"] ?? null)) {
            // line 89
            yield "                    <li><a href=\"";
            yield ($context["register"] ?? null);
            yield "\" class=\"dropdown-item\"><i class=\"bi bi-person-plus me-2\"></i>";
            yield ($context["text_register"] ?? null);
            yield "</a></li>
                    <li><a href=\"";
            // line 90
            yield ($context["login"] ?? null);
            yield "\" class=\"dropdown-item\"><i class=\"bi bi-box-arrow-in-right me-2\"></i>";
            yield ($context["text_login"] ?? null);
            yield "</a></li>
                  ";
        } else {
            // line 92
            yield "                    <li><a href=\"";
            yield ($context["account"] ?? null);
            yield "\" class=\"dropdown-item\"><i class=\"bi bi-person me-2\"></i>";
            yield ($context["text_account"] ?? null);
            yield "</a></li>
                    <li><a href=\"";
            // line 93
            yield ($context["order"] ?? null);
            yield "\" class=\"dropdown-item\"><i class=\"bi bi-receipt me-2\"></i>";
            yield ($context["text_order"] ?? null);
            yield "</a></li>
                    <li><a href=\"";
            // line 94
            yield ($context["transaction"] ?? null);
            yield "\" class=\"dropdown-item\"><i class=\"bi bi-credit-card me-2\"></i>";
            yield ($context["text_transaction"] ?? null);
            yield "</a></li>
                    <li><a href=\"";
            // line 95
            yield ($context["download"] ?? null);
            yield "\" class=\"dropdown-item\"><i class=\"bi bi-download me-2\"></i>";
            yield ($context["text_download"] ?? null);
            yield "</a></li>
                    <li><hr class=\"dropdown-divider\"></li>
                    <li><a href=\"";
            // line 97
            yield ($context["logout"] ?? null);
            yield "\" class=\"dropdown-item\"><i class=\"bi bi-box-arrow-right me-2\"></i>";
            yield ($context["text_logout"] ?? null);
            yield "</a></li>
                  ";
        }
        // line 99
        yield "                </ul>
              </li>
              <li class=\"nav-item me-2\">
                <a href=\"";
        // line 102
        yield ($context["wishlist"] ?? null);
        yield "\" id=\"wishlist-total\" class=\"nav-link\" title=\"";
        yield ($context["text_wishlist"] ?? null);
        yield "\">
                  <i class=\"bi bi-heart\"></i>
                  <span class=\"d-none d-lg-inline ms-1\">";
        // line 104
        yield ($context["text_wishlist"] ?? null);
        yield "</span>
                </a>
              </li>
              <li class=\"nav-item me-2\">
                <a href=\"";
        // line 108
        yield ($context["shopping_cart"] ?? null);
        yield "\" class=\"nav-link\" title=\"";
        yield ($context["text_shopping_cart"] ?? null);
        yield "\">
                  <i class=\"bi bi-cart3\"></i>
                  <span class=\"d-none d-lg-inline ms-1\">";
        // line 110
        yield ($context["text_shopping_cart"] ?? null);
        yield "</span>
                </a>
              </li>
              <li class=\"nav-item\">
                <a href=\"";
        // line 114
        yield ($context["checkout"] ?? null);
        yield "\" class=\"nav-link\" title=\"";
        yield ($context["text_checkout"] ?? null);
        yield "\">
                  <i class=\"bi bi-check2-circle\"></i>
                  <span class=\"d-none d-lg-inline ms-1\">";
        // line 116
        yield ($context["text_checkout"] ?? null);
        yield "</span>
                </a>
              </li>
            </ul>
          </div>
        </div>
      </div>
    </nav>

    <!-- Search Bar (Inside Container) -->
    <div class=\"container mt-3\">
      <div class=\"row\">
        <div class=\"col-lg-8 mx-auto\">
          ";
        // line 129
        yield ($context["search"] ?? null);
        yield "
        </div>
      </div>
    </div>

    <!-- Navigation Menu -->
    <main class=\"flex-grow-1\">
      <div class=\"container mt-4\">
        ";
        // line 137
        yield ($context["menu"] ?? null);
        yield "
      </div>
";
        yield from [];
    }

    /**
     * @codeCoverageIgnore
     */
    public function getTemplateName(): string
    {
        return "catalog/view/template/common/header.twig";
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
        return array (  366 => 137,  355 => 129,  339 => 116,  332 => 114,  325 => 110,  318 => 108,  311 => 104,  304 => 102,  299 => 99,  292 => 97,  285 => 95,  279 => 94,  273 => 93,  266 => 92,  259 => 90,  252 => 89,  250 => 88,  244 => 85,  235 => 79,  230 => 77,  224 => 74,  218 => 71,  201 => 56,  193 => 54,  183 => 51,  178 => 50,  176 => 49,  163 => 38,  154 => 36,  149 => 35,  138 => 33,  133 => 32,  124 => 30,  119 => 29,  106 => 27,  101 => 26,  95 => 24,  93 => 23,  87 => 20,  79 => 14,  73 => 12,  70 => 11,  64 => 9,  62 => 8,  58 => 7,  54 => 6,  45 => 2,  42 => 1,);
    }

    public function getSourceContext(): Source
    {
        return new Source("<!DOCTYPE html>
<html dir=\"{{ direction }}\" lang=\"{{ lang }}\">
<head>
  <meta charset=\"UTF-8\"/>
  <meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">
  <title>{{ title }}</title>
  <base href=\"{{ base }}\"/>
  {% if description %}
    <meta name=\"description\" content=\"{{ description }}\"/>
  {% endif %}
  {% if keywords %}
    <meta name=\"keywords\" content=\"{{ keywords }}\"/>
  {% endif %}

  <!-- Astro Ecommerce Styles -->
  <link href=\"catalog/view/stylesheet/astro-ecommerce.css\" type=\"text/css\" rel=\"stylesheet\"/>
  <link href=\"https://fonts.googleapis.com/css2?family=Open+Sans:wght@300;400;600;700&display=swap\" rel=\"stylesheet\">
  <link rel=\"stylesheet\" href=\"https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css\">

  <script src=\"{{ jquery }}\" type=\"text/javascript\"></script>
  <script src=\"catalog/view/javascript/common.js\" type=\"text/javascript\"></script>

  {% if icon %}
    <link rel=\"icon\" href=\"{{ icon }}\" type=\"image/png\">
  {% endif %}
  {% for style in styles %}
    <link href=\"{{ style.href }}\" type=\"text/css\" rel=\"{{ style.rel }}\" media=\"{{ style.media }}\"/>
  {% endfor %}
  {% for script in scripts %}
    <script src=\"{{ script.href }}\" type=\"text/javascript\"></script>
  {% endfor %}
  {% for link in links %}
    <link href=\"{{ link.href }}\" rel=\"{{ link.rel }}\"/>
  {% endfor %}
  {% for analytic in analytics %}
    {{ analytic }}
  {% endfor %}
</head>
<body>
  <div id=\"container\" class=\"d-flex flex-column min-vh-100\">
    <div id=\"alert\" class=\"position-fixed top-0 start-50 translate-middle-x mt-3\" style=\"z-index: 9999;\"></div>

    <!-- Astro Ecommerce Navbar with Blur Effect -->
    <nav class=\"navbar navbar-expand-lg\">
      <div class=\"container\">
        <div class=\"d-flex align-items-center w-100\">
          <!-- Logo/Brand -->
          <div class=\"me-auto\">
            {% if logo %}
              <a href=\"{{ home }}\" class=\"navbar-brand\">
                <img src=\"{{ logo }}\" title=\"{{ name }}\" alt=\"{{ name }}\" class=\"img-fluid\" style=\"max-height: 40px;\"/>
              </a>
            {% else %}
              <a href=\"{{ home }}\" class=\"navbar-brand font-weight-bolder\">{{ name }}</a>
            {% endif %}
          </div>

          <!-- Mobile Toggle -->
          <button class=\"navbar-toggler shadow-none\" type=\"button\" data-bs-toggle=\"collapse\" data-bs-target=\"#navigation\" aria-controls=\"navigation\" aria-expanded=\"false\" aria-label=\"Toggle navigation\">
            <span class=\"navbar-toggler-icon\">
              <span class=\"navbar-toggler-bar bar1\"></span>
              <span class=\"navbar-toggler-bar bar2\"></span>
              <span class=\"navbar-toggler-bar bar3\"></span>
            </span>
          </button>

          <!-- Navbar Links -->
          <div class=\"collapse navbar-collapse\" id=\"navigation\">
            <ul class=\"navbar-nav ms-auto align-items-center\">
              <li class=\"nav-item me-2\">
                {{ currency }}
              </li>
              <li class=\"nav-item me-2\">
                {{ language }}
              </li>
              <li class=\"nav-item me-2\">
                <a href=\"{{ contact }}\" class=\"nav-link\">
                  <i class=\"bi bi-telephone\"></i>
                  <span class=\"d-none d-lg-inline ms-1\">{{ telephone }}</span>
                </a>
              </li>
              <li class=\"nav-item dropdown me-2\">
                <a href=\"#\" class=\"nav-link dropdown-toggle\" data-bs-toggle=\"dropdown\" aria-expanded=\"false\">
                  <i class=\"bi bi-person\"></i>
                  <span class=\"d-none d-lg-inline ms-1\">{{ text_account }}</span>
                </a>
                <ul class=\"dropdown-menu dropdown-menu-end\">
                  {% if not logged %}
                    <li><a href=\"{{ register }}\" class=\"dropdown-item\"><i class=\"bi bi-person-plus me-2\"></i>{{ text_register }}</a></li>
                    <li><a href=\"{{ login }}\" class=\"dropdown-item\"><i class=\"bi bi-box-arrow-in-right me-2\"></i>{{ text_login }}</a></li>
                  {% else %}
                    <li><a href=\"{{ account }}\" class=\"dropdown-item\"><i class=\"bi bi-person me-2\"></i>{{ text_account }}</a></li>
                    <li><a href=\"{{ order }}\" class=\"dropdown-item\"><i class=\"bi bi-receipt me-2\"></i>{{ text_order }}</a></li>
                    <li><a href=\"{{ transaction }}\" class=\"dropdown-item\"><i class=\"bi bi-credit-card me-2\"></i>{{ text_transaction }}</a></li>
                    <li><a href=\"{{ download }}\" class=\"dropdown-item\"><i class=\"bi bi-download me-2\"></i>{{ text_download }}</a></li>
                    <li><hr class=\"dropdown-divider\"></li>
                    <li><a href=\"{{ logout }}\" class=\"dropdown-item\"><i class=\"bi bi-box-arrow-right me-2\"></i>{{ text_logout }}</a></li>
                  {% endif %}
                </ul>
              </li>
              <li class=\"nav-item me-2\">
                <a href=\"{{ wishlist }}\" id=\"wishlist-total\" class=\"nav-link\" title=\"{{ text_wishlist }}\">
                  <i class=\"bi bi-heart\"></i>
                  <span class=\"d-none d-lg-inline ms-1\">{{ text_wishlist }}</span>
                </a>
              </li>
              <li class=\"nav-item me-2\">
                <a href=\"{{ shopping_cart }}\" class=\"nav-link\" title=\"{{ text_shopping_cart }}\">
                  <i class=\"bi bi-cart3\"></i>
                  <span class=\"d-none d-lg-inline ms-1\">{{ text_shopping_cart }}</span>
                </a>
              </li>
              <li class=\"nav-item\">
                <a href=\"{{ checkout }}\" class=\"nav-link\" title=\"{{ text_checkout }}\">
                  <i class=\"bi bi-check2-circle\"></i>
                  <span class=\"d-none d-lg-inline ms-1\">{{ text_checkout }}</span>
                </a>
              </li>
            </ul>
          </div>
        </div>
      </div>
    </nav>

    <!-- Search Bar (Inside Container) -->
    <div class=\"container mt-3\">
      <div class=\"row\">
        <div class=\"col-lg-8 mx-auto\">
          {{ search }}
        </div>
      </div>
    </div>

    <!-- Navigation Menu -->
    <main class=\"flex-grow-1\">
      <div class=\"container mt-4\">
        {{ menu }}
      </div>
", "catalog/view/template/common/header.twig", "/var/www/html/catalog/view/template/common/header.twig");
    }
}
