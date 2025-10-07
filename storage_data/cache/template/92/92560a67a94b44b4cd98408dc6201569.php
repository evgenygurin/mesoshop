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

/* catalog/view/template/account/address_list.twig */
class __TwigTemplate_c4ed6e9f43e1eab85195dac56fa62f29 extends Template
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
        if (($context["addresses"] ?? null)) {
            // line 2
            yield "  <div class=\"table-responsive\">
    <table class=\"table table-bordered table-hover\">
      ";
            // line 4
            $context['_parent'] = $context;
            $context['_seq'] = CoreExtension::ensureTraversable(($context["addresses"] ?? null));
            foreach ($context['_seq'] as $context["_key"] => $context["address"]) {
                // line 5
                yield "        <tr>
          <td>";
                // line 6
                yield CoreExtension::getAttribute($this->env, $this->source, $context["address"], "address", [], "any", false, false, false, 6);
                yield "</td>
          <td>";
                // line 7
                if (CoreExtension::getAttribute($this->env, $this->source, $context["address"], "default", [], "any", false, false, false, 7)) {
                    yield "<strong>";
                    yield ($context["text_default"] ?? null);
                    yield "</strong>";
                }
                yield "</td>
          <td class=\"text-end\"><a href=\"";
                // line 8
                yield CoreExtension::getAttribute($this->env, $this->source, $context["address"], "edit", [], "any", false, false, false, 8);
                yield "\" data-bs-toggle=\"tooltip\" title=\"";
                yield ($context["button_edit"] ?? null);
                yield "\" class=\"btn btn-primary\"><i class=\"fa-regular fa-solid fa-pencil\"></i></a> <a href=\"";
                yield CoreExtension::getAttribute($this->env, $this->source, $context["address"], "delete", [], "any", false, false, false, 8);
                yield "\" data-bs-toggle=\"tooltip\" title=\"";
                yield ($context["button_delete"] ?? null);
                yield "\" class=\"btn btn-danger\"><i class=\"fa-regular fa-trash-can\"></i></a></td>
        </tr>
      ";
            }
            $_parent = $context['_parent'];
            unset($context['_seq'], $context['_key'], $context['address'], $context['_parent']);
            $context = array_intersect_key($context, $_parent) + $_parent;
            // line 11
            yield "    </table>
  </div>
";
        } else {
            // line 14
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
        return "catalog/view/template/account/address_list.twig";
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
        return array (  87 => 14,  82 => 11,  67 => 8,  59 => 7,  55 => 6,  52 => 5,  48 => 4,  44 => 2,  42 => 1,);
    }

    public function getSourceContext(): Source
    {
        return new Source("{% if addresses %}
  <div class=\"table-responsive\">
    <table class=\"table table-bordered table-hover\">
      {% for address in addresses %}
        <tr>
          <td>{{ address.address }}</td>
          <td>{% if address.default %}<strong>{{ text_default }}</strong>{% endif %}</td>
          <td class=\"text-end\"><a href=\"{{ address.edit }}\" data-bs-toggle=\"tooltip\" title=\"{{ button_edit }}\" class=\"btn btn-primary\"><i class=\"fa-regular fa-solid fa-pencil\"></i></a> <a href=\"{{ address.delete }}\" data-bs-toggle=\"tooltip\" title=\"{{ button_delete }}\" class=\"btn btn-danger\"><i class=\"fa-regular fa-trash-can\"></i></a></td>
        </tr>
      {% endfor %}
    </table>
  </div>
{% else %}
  <p>{{ text_no_results }}</p>
{% endif %}", "catalog/view/template/account/address_list.twig", "/var/www/html/catalog/view/template/account/address_list.twig");
    }
}
