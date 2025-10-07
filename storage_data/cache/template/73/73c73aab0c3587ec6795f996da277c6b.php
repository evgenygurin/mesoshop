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

/* catalog/view/template/common/footer.twig */
class __TwigTemplate_95637909120eeab54dae67076963cf66 extends Template
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
        yield "    </div> <!-- Close container from menu -->
    </main>

    <!-- Astro Ecommerce Footer -->
    <footer class=\"footer pt-3\">
      <div class=\"container\">
        <div class=\"row align-items-center justify-content-lg-between\">
          <div class=\"col-lg-6 mb-lg-0 mb-4\">
            <div class=\"copyright text-center text-sm text-muted text-lg-start\">
              ";
        // line 10
        yield ($context["powered"] ?? null);
        yield " | Designed with <i class=\"bi bi-heart-fill text-danger\"></i> using Astro Ecommerce
            </div>
          </div>
          <div class=\"col-lg-6\">
            <ul class=\"nav nav-footer justify-content-center justify-content-lg-end\">
              ";
        // line 15
        if (($context["informations"] ?? null)) {
            // line 16
            yield "                ";
            $context['_parent'] = $context;
            $context['_seq'] = CoreExtension::ensureTraversable(($context["informations"] ?? null));
            foreach ($context['_seq'] as $context["_key"] => $context["information"]) {
                // line 17
                yield "                  <li class=\"nav-item\">
                    <a href=\"";
                // line 18
                yield CoreExtension::getAttribute($this->env, $this->source, $context["information"], "href", [], "any", false, false, false, 18);
                yield "\" class=\"nav-link text-sm text-muted\">
                      ";
                // line 19
                yield CoreExtension::getAttribute($this->env, $this->source, $context["information"], "title", [], "any", false, false, false, 19);
                yield "
                    </a>
                  </li>
                ";
            }
            $_parent = $context['_parent'];
            unset($context['_seq'], $context['_key'], $context['information'], $context['_parent']);
            $context = array_intersect_key($context, $_parent) + $_parent;
            // line 23
            yield "              ";
        }
        // line 24
        yield "              <li class=\"nav-item\">
                <a href=\"";
        // line 25
        yield ($context["contact"] ?? null);
        yield "\" class=\"nav-link text-sm text-muted\">
                  ";
        // line 26
        yield ($context["text_contact"] ?? null);
        yield "
                </a>
              </li>
              <li class=\"nav-item\">
                <a href=\"";
        // line 30
        yield ($context["sitemap"] ?? null);
        yield "\" class=\"nav-link text-sm pe-0 text-muted\">
                  ";
        // line 31
        yield ($context["text_sitemap"] ?? null);
        yield "
                </a>
              </li>
            </ul>
          </div>
        </div>
      </div>
    </footer>
  </div> <!-- #container -->

  ";
        // line 41
        yield ($context["cookie"] ?? null);
        yield "

  <!-- Bootstrap 5.3 JavaScript -->
  <script src=\"https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js\" integrity=\"sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz\" crossorigin=\"anonymous\"></script>

  <!-- Astro Ecommerce JavaScript -->
  <script src=\"catalog/view/javascript/js/astro-ecommerce.js\" type=\"text/javascript\"></script>

  ";
        // line 49
        $context['_parent'] = $context;
        $context['_seq'] = CoreExtension::ensureTraversable(($context["scripts"] ?? null));
        foreach ($context['_seq'] as $context["_key"] => $context["script"]) {
            // line 50
            yield "    <script src=\"";
            yield CoreExtension::getAttribute($this->env, $this->source, $context["script"], "href", [], "any", false, false, false, 50);
            yield "\" type=\"text/javascript\"></script>
  ";
        }
        $_parent = $context['_parent'];
        unset($context['_seq'], $context['_key'], $context['script'], $context['_parent']);
        $context = array_intersect_key($context, $_parent) + $_parent;
        // line 52
        yield "
  <script src=\"./catalog/view/javascript/framework/webcomponent.js\" type=\"module\"></script>
</body>
</html>
";
        yield from [];
    }

    /**
     * @codeCoverageIgnore
     */
    public function getTemplateName(): string
    {
        return "catalog/view/template/common/footer.twig";
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
        return array (  143 => 52,  134 => 50,  130 => 49,  119 => 41,  106 => 31,  102 => 30,  95 => 26,  91 => 25,  88 => 24,  85 => 23,  75 => 19,  71 => 18,  68 => 17,  63 => 16,  61 => 15,  53 => 10,  42 => 1,);
    }

    public function getSourceContext(): Source
    {
        return new Source("    </div> <!-- Close container from menu -->
    </main>

    <!-- Astro Ecommerce Footer -->
    <footer class=\"footer pt-3\">
      <div class=\"container\">
        <div class=\"row align-items-center justify-content-lg-between\">
          <div class=\"col-lg-6 mb-lg-0 mb-4\">
            <div class=\"copyright text-center text-sm text-muted text-lg-start\">
              {{ powered }} | Designed with <i class=\"bi bi-heart-fill text-danger\"></i> using Astro Ecommerce
            </div>
          </div>
          <div class=\"col-lg-6\">
            <ul class=\"nav nav-footer justify-content-center justify-content-lg-end\">
              {% if informations %}
                {% for information in informations %}
                  <li class=\"nav-item\">
                    <a href=\"{{ information.href }}\" class=\"nav-link text-sm text-muted\">
                      {{ information.title }}
                    </a>
                  </li>
                {% endfor %}
              {% endif %}
              <li class=\"nav-item\">
                <a href=\"{{ contact }}\" class=\"nav-link text-sm text-muted\">
                  {{ text_contact }}
                </a>
              </li>
              <li class=\"nav-item\">
                <a href=\"{{ sitemap }}\" class=\"nav-link text-sm pe-0 text-muted\">
                  {{ text_sitemap }}
                </a>
              </li>
            </ul>
          </div>
        </div>
      </div>
    </footer>
  </div> <!-- #container -->

  {{ cookie }}

  <!-- Bootstrap 5.3 JavaScript -->
  <script src=\"https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js\" integrity=\"sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz\" crossorigin=\"anonymous\"></script>

  <!-- Astro Ecommerce JavaScript -->
  <script src=\"catalog/view/javascript/js/astro-ecommerce.js\" type=\"text/javascript\"></script>

  {% for script in scripts %}
    <script src=\"{{ script.href }}\" type=\"text/javascript\"></script>
  {% endfor %}

  <script src=\"./catalog/view/javascript/framework/webcomponent.js\" type=\"module\"></script>
</body>
</html>
", "catalog/view/template/common/footer.twig", "/var/www/html/catalog/view/template/common/footer.twig");
    }
}
