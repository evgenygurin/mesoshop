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

/* catalog/view/template/product/review_list.twig */
class __TwigTemplate_a7dd4bd92f7f2730d918af80de9d8288 extends Template
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
        if (($context["reviews"] ?? null)) {
            // line 2
            yield "  <div class=\"vstack gap-3\">
    ";
            // line 3
            $context['_parent'] = $context;
            $context['_seq'] = CoreExtension::ensureTraversable(($context["reviews"] ?? null));
            foreach ($context['_seq'] as $context["_key"] => $context["review"]) {
                // line 4
                yield "      <div class=\"card border-0 shadow-sm\">
        <div class=\"card-body\">
          <div class=\"d-flex justify-content-between align-items-center mb-3\">
            <h6 class=\"mb-0 fw-bold\">";
                // line 7
                yield CoreExtension::getAttribute($this->env, $this->source, $context["review"], "author", [], "any", false, false, false, 7);
                yield "</h6>
            <small class=\"text-body-secondary\">";
                // line 8
                yield CoreExtension::getAttribute($this->env, $this->source, $context["review"], "date_added", [], "any", false, false, false, 8);
                yield "</small>
          </div>
          <p class=\"card-text mb-3\">";
                // line 10
                yield CoreExtension::getAttribute($this->env, $this->source, $context["review"], "text", [], "any", false, false, false, 10);
                yield "</p>
          <div class=\"text-warning\">
            ";
                // line 12
                $context['_parent'] = $context;
                $context['_seq'] = CoreExtension::ensureTraversable(range(1, 5));
                foreach ($context['_seq'] as $context["_key"] => $context["i"]) {
                    // line 13
                    yield "              ";
                    if ((CoreExtension::getAttribute($this->env, $this->source, $context["review"], "rating", [], "any", false, false, false, 13) < $context["i"])) {
                        // line 14
                        yield "                <i class=\"fa-regular fa-star\"></i>
              ";
                    } else {
                        // line 16
                        yield "                <i class=\"fa-solid fa-star\"></i>
              ";
                    }
                    // line 18
                    yield "            ";
                }
                $_parent = $context['_parent'];
                unset($context['_seq'], $context['_key'], $context['i'], $context['_parent']);
                $context = array_intersect_key($context, $_parent) + $_parent;
                // line 19
                yield "          </div>
        </div>
      </div>
    ";
            }
            $_parent = $context['_parent'];
            unset($context['_seq'], $context['_key'], $context['review'], $context['_parent']);
            $context = array_intersect_key($context, $_parent) + $_parent;
            // line 23
            yield "  </div>
  <div class=\"mt-4\">";
            // line 24
            yield ($context["pagination"] ?? null);
            yield "</div>
";
        } else {
            // line 26
            yield "  <div class=\"text-center py-5\">
    <i class=\"fa-solid fa-comment-slash fa-3x mb-3 text-body-secondary opacity-25\"></i>
    <p class=\"text-body-secondary\">";
            // line 28
            yield ($context["text_no_results"] ?? null);
            yield "</p>
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
        return "catalog/view/template/product/review_list.twig";
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
        return array (  112 => 28,  108 => 26,  103 => 24,  100 => 23,  91 => 19,  85 => 18,  81 => 16,  77 => 14,  74 => 13,  70 => 12,  65 => 10,  60 => 8,  56 => 7,  51 => 4,  47 => 3,  44 => 2,  42 => 1,);
    }

    public function getSourceContext(): Source
    {
        return new Source("{% if reviews %}
  <div class=\"vstack gap-3\">
    {% for review in reviews %}
      <div class=\"card border-0 shadow-sm\">
        <div class=\"card-body\">
          <div class=\"d-flex justify-content-between align-items-center mb-3\">
            <h6 class=\"mb-0 fw-bold\">{{ review.author }}</h6>
            <small class=\"text-body-secondary\">{{ review.date_added }}</small>
          </div>
          <p class=\"card-text mb-3\">{{ review.text }}</p>
          <div class=\"text-warning\">
            {% for i in 1..5 %}
              {% if review.rating < i %}
                <i class=\"fa-regular fa-star\"></i>
              {% else %}
                <i class=\"fa-solid fa-star\"></i>
              {% endif %}
            {% endfor %}
          </div>
        </div>
      </div>
    {% endfor %}
  </div>
  <div class=\"mt-4\">{{ pagination }}</div>
{% else %}
  <div class=\"text-center py-5\">
    <i class=\"fa-solid fa-comment-slash fa-3x mb-3 text-body-secondary opacity-25\"></i>
    <p class=\"text-body-secondary\">{{ text_no_results }}</p>
  </div>
{% endif %}
", "catalog/view/template/product/review_list.twig", "/var/www/html/catalog/view/template/product/review_list.twig");
    }
}
