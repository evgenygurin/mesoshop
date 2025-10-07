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

/* catalog/view/template/checkout/cart.twig */
class __TwigTemplate_a7911256d2e137b9d35d3453b7098c48 extends Template
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
<div id=\"checkout-cart\" class=\"container\">
  <nav aria-label=\"breadcrumb\">
    <ol class=\"breadcrumb\">
      ";
        // line 5
        $context['_parent'] = $context;
        $context['_seq'] = CoreExtension::ensureTraversable(($context["breadcrumbs"] ?? null));
        foreach ($context['_seq'] as $context["_key"] => $context["breadcrumb"]) {
            // line 6
            yield "        <li class=\"breadcrumb-item\"><a href=\"";
            yield CoreExtension::getAttribute($this->env, $this->source, $context["breadcrumb"], "href", [], "any", false, false, false, 6);
            yield "\">";
            yield CoreExtension::getAttribute($this->env, $this->source, $context["breadcrumb"], "text", [], "any", false, false, false, 6);
            yield "</a></li>
      ";
        }
        $_parent = $context['_parent'];
        unset($context['_seq'], $context['_key'], $context['breadcrumb'], $context['_parent']);
        $context = array_intersect_key($context, $_parent) + $_parent;
        // line 8
        yield "    </ol>
  </nav>
  <div class=\"row\">
    ";
        // line 11
        yield ($context["column_left"] ?? null);
        yield "
    <div id=\"content\" class=\"col\">
      ";
        // line 13
        yield ($context["content_top"] ?? null);
        yield "
      <div id=\"shopping-cart\">";
        // line 14
        yield ($context["list"] ?? null);
        yield "</div>
      ";
        // line 15
        yield ($context["content_bottom"] ?? null);
        yield "
    </div>
    ";
        // line 17
        yield ($context["column_right"] ?? null);
        yield "
  </div>
</div>
<script type=\"text/javascript\"><!--


document.getElementById('shopping-cart').addEventListener('submit', function(e) {
    if (e.target.matches('#output-cart form')) {
        e.preventDefault();

        const form = e.target;
        const formData = new FormData(form);
        const button = e.submitter;

        button.disabled = true;
        button.innerHTML = '<i class=\"fa-solid fa-spinner fa-spin\"></i>';

        fetch(button.formAction, {
            method: 'POST',
            body: new URLSearchParams(formData)
        })
        .then(response => response.json())
        .then(json => {
            console.log(json);

            if (json.redirect) {
                location = json.redirect;
            }

            if (json.error) {
                const alertContainer = document.getElementById('alert');
                alertContainer.insertAdjacentHTML('afterbegin', '<div class=\"alert alert-danger alert-dismissible\"><i class=\"fa-solid fa-circle-exclamation\"></i> ' + json.error + ' <button type=\"button\" class=\"btn-close\" data-bs-dismiss=\"alert\"></button></div>');
            }

            if (json.success) {
                const alertContainer = document.getElementById('alert');
                alertContainer.insertAdjacentHTML('afterbegin', '<div class=\"alert alert-success alert-dismissible\"><i class=\"fa-solid fa-circle-exclamation\"></i> ' + json.success + ' <button type=\"button\" class=\"btn-close\" data-bs-dismiss=\"alert\"></button></div>');

                fetch('index.php?route=checkout/cart.list&language=";
        // line 55
        yield ($context["language"] ?? null);
        yield "')
                    .then(response => response.text())
                    .then(html => {
                        document.getElementById('shopping-cart').innerHTML = html;
                        fetch('index.php?route=common/cart.info&language=";
        // line 59
        yield ($context["language"] ?? null);
        yield "')
                            .then(response => response.text())
                            .then(html => {
                                document.getElementById('cart').innerHTML = html;
                            });
                    });
            }
        })
        .catch(error => console.error('Error:', error))
        .finally(() => {
            button.disabled = false;
            button.innerHTML = button.dataset.originalText;
        });
    }
});



document.getElementById('shopping-cart').addEventListener('click', function(e) {
    if (e.target.matches('.btn-danger')) {
        e.preventDefault();

        const button = e.target;

        button.disabled = true;
        button.innerHTML = '<i class=\"fa-solid fa-spinner fa-spin\"></i>';

        fetch(button.href)
            .then(response => response.json())
            .then(json => {
                console.log(json);

                if (json.redirect) {
                    location = json.redirect;
                }

                if (json.error) {
                    const alertContainer = document.getElementById('alert');
                    alertContainer.insertAdjacentHTML('afterbegin', '<div class=\"alert alert-danger alert-dismissible\"><i class=\"fa-solid fa-circle-exclamation\"></i> ' + json.error + ' <button type=\"button\" class=\"btn-close\" data-bs-dismiss=\"alert\"></button></div>');
                }

                if (json.success) {
                    const alertContainer = document.getElementById('alert');
                    alertContainer.insertAdjacentHTML('afterbegin', '<div class=\"alert alert-success alert-dismissible\"><i class=\"fa-solid fa-circle-exclamation\"></i> ' + json.success + ' <button type=\"button\" class=\"btn-close\" data-bs-dismiss=\"alert\"></button></div>');

                    fetch('index.php?route=checkout/cart.list&language=";
        // line 104
        yield ($context["language"] ?? null);
        yield "')
                        .then(response => response.text())
                        .then(html => {
                            document.getElementById('shopping-cart').innerHTML = html;
                        });
                }
            })
            .catch(error => console.error('Error:', error))
            .finally(() => {
                button.disabled = false;
                button.innerHTML = button.dataset.originalText;
            });
    }
});

\$('#shopping-cart').observe(function(e) {
    \$('#cart').load('index.php?route=common/cart.info&language=";
        // line 120
        yield ($context["language"] ?? null);
        yield "');
});

\$('#cart').on('submit', 'form', function(e) {
    window.setTimeout(function() {
        \$('#shopping-cart').load('index.php?route=checkout/cart.list&language=";
        // line 125
        yield ($context["language"] ?? null);
        yield "');
    }, 3000);
});
//--></script>
";
        // line 129
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
        return "catalog/view/template/checkout/cart.twig";
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
        return array (  217 => 129,  210 => 125,  202 => 120,  183 => 104,  135 => 59,  128 => 55,  87 => 17,  82 => 15,  78 => 14,  74 => 13,  69 => 11,  64 => 8,  53 => 6,  49 => 5,  42 => 1,);
    }

    public function getSourceContext(): Source
    {
        return new Source("{{ header }}
<div id=\"checkout-cart\" class=\"container\">
  <nav aria-label=\"breadcrumb\">
    <ol class=\"breadcrumb\">
      {% for breadcrumb in breadcrumbs %}
        <li class=\"breadcrumb-item\"><a href=\"{{ breadcrumb.href }}\">{{ breadcrumb.text }}</a></li>
      {% endfor %}
    </ol>
  </nav>
  <div class=\"row\">
    {{ column_left }}
    <div id=\"content\" class=\"col\">
      {{ content_top }}
      <div id=\"shopping-cart\">{{ list }}</div>
      {{ content_bottom }}
    </div>
    {{ column_right }}
  </div>
</div>
<script type=\"text/javascript\"><!--


document.getElementById('shopping-cart').addEventListener('submit', function(e) {
    if (e.target.matches('#output-cart form')) {
        e.preventDefault();

        const form = e.target;
        const formData = new FormData(form);
        const button = e.submitter;

        button.disabled = true;
        button.innerHTML = '<i class=\"fa-solid fa-spinner fa-spin\"></i>';

        fetch(button.formAction, {
            method: 'POST',
            body: new URLSearchParams(formData)
        })
        .then(response => response.json())
        .then(json => {
            console.log(json);

            if (json.redirect) {
                location = json.redirect;
            }

            if (json.error) {
                const alertContainer = document.getElementById('alert');
                alertContainer.insertAdjacentHTML('afterbegin', '<div class=\"alert alert-danger alert-dismissible\"><i class=\"fa-solid fa-circle-exclamation\"></i> ' + json.error + ' <button type=\"button\" class=\"btn-close\" data-bs-dismiss=\"alert\"></button></div>');
            }

            if (json.success) {
                const alertContainer = document.getElementById('alert');
                alertContainer.insertAdjacentHTML('afterbegin', '<div class=\"alert alert-success alert-dismissible\"><i class=\"fa-solid fa-circle-exclamation\"></i> ' + json.success + ' <button type=\"button\" class=\"btn-close\" data-bs-dismiss=\"alert\"></button></div>');

                fetch('index.php?route=checkout/cart.list&language={{ language }}')
                    .then(response => response.text())
                    .then(html => {
                        document.getElementById('shopping-cart').innerHTML = html;
                        fetch('index.php?route=common/cart.info&language={{ language }}')
                            .then(response => response.text())
                            .then(html => {
                                document.getElementById('cart').innerHTML = html;
                            });
                    });
            }
        })
        .catch(error => console.error('Error:', error))
        .finally(() => {
            button.disabled = false;
            button.innerHTML = button.dataset.originalText;
        });
    }
});



document.getElementById('shopping-cart').addEventListener('click', function(e) {
    if (e.target.matches('.btn-danger')) {
        e.preventDefault();

        const button = e.target;

        button.disabled = true;
        button.innerHTML = '<i class=\"fa-solid fa-spinner fa-spin\"></i>';

        fetch(button.href)
            .then(response => response.json())
            .then(json => {
                console.log(json);

                if (json.redirect) {
                    location = json.redirect;
                }

                if (json.error) {
                    const alertContainer = document.getElementById('alert');
                    alertContainer.insertAdjacentHTML('afterbegin', '<div class=\"alert alert-danger alert-dismissible\"><i class=\"fa-solid fa-circle-exclamation\"></i> ' + json.error + ' <button type=\"button\" class=\"btn-close\" data-bs-dismiss=\"alert\"></button></div>');
                }

                if (json.success) {
                    const alertContainer = document.getElementById('alert');
                    alertContainer.insertAdjacentHTML('afterbegin', '<div class=\"alert alert-success alert-dismissible\"><i class=\"fa-solid fa-circle-exclamation\"></i> ' + json.success + ' <button type=\"button\" class=\"btn-close\" data-bs-dismiss=\"alert\"></button></div>');

                    fetch('index.php?route=checkout/cart.list&language={{ language }}')
                        .then(response => response.text())
                        .then(html => {
                            document.getElementById('shopping-cart').innerHTML = html;
                        });
                }
            })
            .catch(error => console.error('Error:', error))
            .finally(() => {
                button.disabled = false;
                button.innerHTML = button.dataset.originalText;
            });
    }
});

\$('#shopping-cart').observe(function(e) {
    \$('#cart').load('index.php?route=common/cart.info&language={{ language }}');
});

\$('#cart').on('submit', 'form', function(e) {
    window.setTimeout(function() {
        \$('#shopping-cart').load('index.php?route=checkout/cart.list&language={{ language }}');
    }, 3000);
});
//--></script>
{{ footer }}
", "catalog/view/template/checkout/cart.twig", "/var/www/html/catalog/view/template/checkout/cart.twig");
    }
}
