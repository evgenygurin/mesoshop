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

/* catalog/view/template/product/review.twig */
class __TwigTemplate_dd94c5db31ec959a3a06b9a8e7f910fb extends Template
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
        yield "<form id=\"form-review\">
  <div id=\"review\">";
        // line 2
        yield ($context["list"] ?? null);
        yield "</div>

  <div class=\"card border-0 shadow-sm mt-4\">
    <div class=\"card-header bg-white\">
      <h5 class=\"mb-0\"><i class=\"fa-solid fa-pen-to-square me-2\"></i>";
        // line 6
        yield ($context["text_write"] ?? null);
        yield "</h5>
    </div>
    <div class=\"card-body\">
      ";
        // line 9
        if (($context["review_guest"] ?? null)) {
            // line 10
            yield "        <div class=\"mb-3 required\">
          <label for=\"input-author\" class=\"form-label\">";
            // line 11
            yield ($context["entry_author"] ?? null);
            yield "</label>
          <input type=\"text\" name=\"author\" value=\"";
            // line 12
            yield ($context["customer"] ?? null);
            yield "\" id=\"input-author\" class=\"form-control form-control-lg shadow-sm\"/>
          <div id=\"error-author\" class=\"invalid-feedback\"></div>
        </div>
        <div class=\"mb-3 required\">
          <label for=\"input-text\" class=\"form-label\">";
            // line 16
            yield ($context["entry_review"] ?? null);
            yield "</label>
          <textarea name=\"text\" rows=\"5\" id=\"input-text\" class=\"form-control shadow-sm\"></textarea>
          <div id=\"error-text\" class=\"invalid-feedback\"></div>
          <small class=\"form-text text-body-secondary\">";
            // line 19
            yield ($context["text_note"] ?? null);
            yield "</small>
        </div>
        <div class=\"mb-3 required\">
          <label class=\"form-label d-block\">";
            // line 22
            yield ($context["entry_rating"] ?? null);
            yield "</label>
          <div id=\"input-rating\" class=\"d-flex align-items-center gap-2\">
            <span class=\"text-body-secondary small\">";
            // line 24
            yield ($context["entry_bad"] ?? null);
            yield "</span>
            ";
            // line 25
            $context['_parent'] = $context;
            $context['_seq'] = CoreExtension::ensureTraversable(range(1, 5));
            foreach ($context['_seq'] as $context["_key"] => $context["i"]) {
                // line 26
                yield "              <div class=\"form-check form-check-inline\">
                <input type=\"radio\" name=\"rating\" value=\"";
                // line 27
                yield $context["i"];
                yield "\" id=\"rating-";
                yield $context["i"];
                yield "\" class=\"form-check-input\"/>
                <label for=\"rating-";
                // line 28
                yield $context["i"];
                yield "\" class=\"form-check-label\">
                  <i class=\"fa-solid fa-star text-warning\"></i>
                </label>
              </div>
            ";
            }
            $_parent = $context['_parent'];
            unset($context['_seq'], $context['_key'], $context['i'], $context['_parent']);
            $context = array_intersect_key($context, $_parent) + $_parent;
            // line 33
            yield "            <span class=\"text-body-secondary small\">";
            yield ($context["entry_good"] ?? null);
            yield "</span>
          </div>
          <div id=\"error-rating\" class=\"invalid-feedback\"></div>
        </div>
        ";
            // line 37
            yield ($context["captcha"] ?? null);
            yield "
        <div class=\"text-end mt-4\">
          <button type=\"submit\" id=\"button-review\" class=\"btn btn-primary btn-lg shadow-sm\">
            <i class=\"fa-solid fa-paper-plane me-2\"></i>";
            // line 40
            yield ($context["button_continue"] ?? null);
            yield "
          </button>
        </div>
      ";
        } else {
            // line 44
            yield "        <div class=\"alert alert-info border-0 shadow-sm\">
          <i class=\"fa-solid fa-circle-info me-2\"></i>";
            // line 45
            yield ($context["text_login"] ?? null);
            yield "
        </div>
      ";
        }
        // line 48
        yield "    </div>
  </div>
</form>
<script type=\"text/javascript\"><!--
\$('#review').on('click', '.pagination a', function(e) {
    e.preventDefault();

    \$('#review').load(this.href);
});

// Forms
\$('#form-review').on('submit', function(e) {
    e.preventDefault();

    var element = this;

    \$.ajax({
        url: 'index.php?route=product/review.write&language=";
        // line 65
        yield ($context["language"] ?? null);
        yield "&review_token=";
        yield ($context["review_token"] ?? null);
        yield "&product_id=";
        yield ($context["product_id"] ?? null);
        yield "',
        type: 'post',
        data: \$('#form-review').serialize(),
        dataType: 'json',
        cache: false,
        contentType: 'application/x-www-form-urlencoded',
        processData: false,
        beforeSend: function() {
            \$('#button-review').button('loading');
        },
        complete: function() {
            \$('#button-review').button('reset');
        },
        success: function(json) {
            \$('.alert-dismissible').remove();
            \$('#form-review').find('.is-invalid').removeClass('is-invalid');
            \$('#form-review').find('.invalid-feedback').removeClass('d-block');

            if (json['error']) {
                if (json['error']['warning']) {
                    \$('#alert').prepend('<div class=\"alert alert-danger alert-dismissible\"><i class=\"fa-solid fa-circle-exclamation\"></i> ' + json['error']['warning'] + ' <button type=\"button\" class=\"btn-close\" data-bs-dismiss=\"alert\"></button></div>');
                }

                for (key in json['error']) {
                    \$('#input-' + key.replaceAll('_', '-')).addClass('is-invalid').find('.form-control, .form-select, .form-check-input, .form-check-label').addClass('is-invalid');
                    \$('#error-' + key.replaceAll('_', '-')).html(json['error'][key]).addClass('d-block');
                }
            }

            if (json['success']) {
                \$('#alert').prepend('<div class=\"alert alert-success alert-dismissible\"><i class=\"fa-solid fa-circle-exclamation\"></i> ' + json['success'] + ' <button type=\"button\" class=\"btn-close\" data-bs-dismiss=\"alert\"></button></div>');

                \$('#input-text').val('');
                \$('#input-rating input[type=\\'radio\\']').prop('checked', false);
            }
        },
        error: function(xhr, ajaxOptions, thrownError) {
            console.log(thrownError + \"\\r\\n\" + xhr.statusText + \"\\r\\n\" + xhr.responseText);
        }
    });
});
//--></script>";
        yield from [];
    }

    /**
     * @codeCoverageIgnore
     */
    public function getTemplateName(): string
    {
        return "catalog/view/template/product/review.twig";
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
        return array (  168 => 65,  149 => 48,  143 => 45,  140 => 44,  133 => 40,  127 => 37,  119 => 33,  108 => 28,  102 => 27,  99 => 26,  95 => 25,  91 => 24,  86 => 22,  80 => 19,  74 => 16,  67 => 12,  63 => 11,  60 => 10,  58 => 9,  52 => 6,  45 => 2,  42 => 1,);
    }

    public function getSourceContext(): Source
    {
        return new Source("<form id=\"form-review\">
  <div id=\"review\">{{ list }}</div>

  <div class=\"card border-0 shadow-sm mt-4\">
    <div class=\"card-header bg-white\">
      <h5 class=\"mb-0\"><i class=\"fa-solid fa-pen-to-square me-2\"></i>{{ text_write }}</h5>
    </div>
    <div class=\"card-body\">
      {% if review_guest %}
        <div class=\"mb-3 required\">
          <label for=\"input-author\" class=\"form-label\">{{ entry_author }}</label>
          <input type=\"text\" name=\"author\" value=\"{{ customer }}\" id=\"input-author\" class=\"form-control form-control-lg shadow-sm\"/>
          <div id=\"error-author\" class=\"invalid-feedback\"></div>
        </div>
        <div class=\"mb-3 required\">
          <label for=\"input-text\" class=\"form-label\">{{ entry_review }}</label>
          <textarea name=\"text\" rows=\"5\" id=\"input-text\" class=\"form-control shadow-sm\"></textarea>
          <div id=\"error-text\" class=\"invalid-feedback\"></div>
          <small class=\"form-text text-body-secondary\">{{ text_note }}</small>
        </div>
        <div class=\"mb-3 required\">
          <label class=\"form-label d-block\">{{ entry_rating }}</label>
          <div id=\"input-rating\" class=\"d-flex align-items-center gap-2\">
            <span class=\"text-body-secondary small\">{{ entry_bad }}</span>
            {% for i in 1..5 %}
              <div class=\"form-check form-check-inline\">
                <input type=\"radio\" name=\"rating\" value=\"{{ i }}\" id=\"rating-{{ i }}\" class=\"form-check-input\"/>
                <label for=\"rating-{{ i }}\" class=\"form-check-label\">
                  <i class=\"fa-solid fa-star text-warning\"></i>
                </label>
              </div>
            {% endfor %}
            <span class=\"text-body-secondary small\">{{ entry_good }}</span>
          </div>
          <div id=\"error-rating\" class=\"invalid-feedback\"></div>
        </div>
        {{ captcha }}
        <div class=\"text-end mt-4\">
          <button type=\"submit\" id=\"button-review\" class=\"btn btn-primary btn-lg shadow-sm\">
            <i class=\"fa-solid fa-paper-plane me-2\"></i>{{ button_continue }}
          </button>
        </div>
      {% else %}
        <div class=\"alert alert-info border-0 shadow-sm\">
          <i class=\"fa-solid fa-circle-info me-2\"></i>{{ text_login }}
        </div>
      {% endif %}
    </div>
  </div>
</form>
<script type=\"text/javascript\"><!--
\$('#review').on('click', '.pagination a', function(e) {
    e.preventDefault();

    \$('#review').load(this.href);
});

// Forms
\$('#form-review').on('submit', function(e) {
    e.preventDefault();

    var element = this;

    \$.ajax({
        url: 'index.php?route=product/review.write&language={{ language }}&review_token={{ review_token }}&product_id={{ product_id }}',
        type: 'post',
        data: \$('#form-review').serialize(),
        dataType: 'json',
        cache: false,
        contentType: 'application/x-www-form-urlencoded',
        processData: false,
        beforeSend: function() {
            \$('#button-review').button('loading');
        },
        complete: function() {
            \$('#button-review').button('reset');
        },
        success: function(json) {
            \$('.alert-dismissible').remove();
            \$('#form-review').find('.is-invalid').removeClass('is-invalid');
            \$('#form-review').find('.invalid-feedback').removeClass('d-block');

            if (json['error']) {
                if (json['error']['warning']) {
                    \$('#alert').prepend('<div class=\"alert alert-danger alert-dismissible\"><i class=\"fa-solid fa-circle-exclamation\"></i> ' + json['error']['warning'] + ' <button type=\"button\" class=\"btn-close\" data-bs-dismiss=\"alert\"></button></div>');
                }

                for (key in json['error']) {
                    \$('#input-' + key.replaceAll('_', '-')).addClass('is-invalid').find('.form-control, .form-select, .form-check-input, .form-check-label').addClass('is-invalid');
                    \$('#error-' + key.replaceAll('_', '-')).html(json['error'][key]).addClass('d-block');
                }
            }

            if (json['success']) {
                \$('#alert').prepend('<div class=\"alert alert-success alert-dismissible\"><i class=\"fa-solid fa-circle-exclamation\"></i> ' + json['success'] + ' <button type=\"button\" class=\"btn-close\" data-bs-dismiss=\"alert\"></button></div>');

                \$('#input-text').val('');
                \$('#input-rating input[type=\\'radio\\']').prop('checked', false);
            }
        },
        error: function(xhr, ajaxOptions, thrownError) {
            console.log(thrownError + \"\\r\\n\" + xhr.statusText + \"\\r\\n\" + xhr.responseText);
        }
    });
});
//--></script>", "catalog/view/template/product/review.twig", "/var/www/html/catalog/view/template/product/review.twig");
    }
}
