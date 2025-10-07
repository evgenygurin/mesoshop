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

/* catalog/view/template/product/product.twig */
class __TwigTemplate_a9b1bd7cc7593844ecda666f27cba800 extends Template
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
<div id=\"product-info\" class=\"container my-4\">
  ";
        // line 4
        yield "  <nav aria-label=\"breadcrumb\">
    <ol class=\"breadcrumb px-3 py-2 rounded shadow-sm\">
      ";
        // line 6
        $context['_parent'] = $context;
        $context['_seq'] = CoreExtension::ensureTraversable(($context["breadcrumbs"] ?? null));
        $context['loop'] = [
          'parent' => $context['_parent'],
          'index0' => 0,
          'index'  => 1,
          'first'  => true,
        ];
        if (is_array($context['_seq']) || (is_object($context['_seq']) && $context['_seq'] instanceof \Countable)) {
            $length = count($context['_seq']);
            $context['loop']['revindex0'] = $length - 1;
            $context['loop']['revindex'] = $length;
            $context['loop']['length'] = $length;
            $context['loop']['last'] = 1 === $length;
        }
        foreach ($context['_seq'] as $context["_key"] => $context["breadcrumb"]) {
            // line 7
            yield "        <li class=\"breadcrumb-item";
            if (CoreExtension::getAttribute($this->env, $this->source, $context["loop"], "last", [], "any", false, false, false, 7)) {
                yield " active";
            }
            yield "\">
          ";
            // line 8
            if ( !CoreExtension::getAttribute($this->env, $this->source, $context["loop"], "last", [], "any", false, false, false, 8)) {
                // line 9
                yield "            <a href=\"";
                yield CoreExtension::getAttribute($this->env, $this->source, $context["breadcrumb"], "href", [], "any", false, false, false, 9);
                yield "\" class=\"text-decoration-none\">";
                yield CoreExtension::getAttribute($this->env, $this->source, $context["breadcrumb"], "text", [], "any", false, false, false, 9);
                yield "</a>
          ";
            } else {
                // line 11
                yield "            ";
                yield CoreExtension::getAttribute($this->env, $this->source, $context["breadcrumb"], "text", [], "any", false, false, false, 11);
                yield "
          ";
            }
            // line 13
            yield "        </li>
      ";
            ++$context['loop']['index0'];
            ++$context['loop']['index'];
            $context['loop']['first'] = false;
            if (isset($context['loop']['revindex0'], $context['loop']['revindex'])) {
                --$context['loop']['revindex0'];
                --$context['loop']['revindex'];
                $context['loop']['last'] = 0 === $context['loop']['revindex0'];
            }
        }
        $_parent = $context['_parent'];
        unset($context['_seq'], $context['_key'], $context['breadcrumb'], $context['_parent'], $context['loop']);
        $context = array_intersect_key($context, $_parent) + $_parent;
        // line 15
        yield "    </ol>
  </nav>

  <div class=\"row\">
    ";
        // line 19
        yield ($context["column_left"] ?? null);
        yield "
    <div id=\"content\" class=\"col\">
      ";
        // line 21
        yield ($context["content_top"] ?? null);
        yield "

      ";
        // line 24
        yield "      <div class=\"row g-4 mb-4\">
        ";
        // line 25
        if ((($context["thumb"] ?? null) || ($context["images"] ?? null))) {
            // line 26
            yield "          <div class=\"col-md-5\">
            <div class=\"card border-0 shadow-sm p-4\">
              <div class=\"magnific-popup\">
                ";
            // line 29
            if (($context["thumb"] ?? null)) {
                // line 30
                yield "                  <a href=\"";
                yield ($context["popup"] ?? null);
                yield "\" title=\"";
                yield ($context["heading_title"] ?? null);
                yield "\" class=\"d-block text-center mb-3\">
                    <img src=\"";
                // line 31
                yield ($context["thumb"] ?? null);
                yield "\" title=\"";
                yield ($context["heading_title"] ?? null);
                yield "\" alt=\"";
                yield ($context["heading_title"] ?? null);
                yield "\" class=\"img-fluid rounded\" style=\"max-height: 400px; object-fit: contain;\"/>
                  </a>
                ";
            }
            // line 34
            yield "                ";
            if (($context["images"] ?? null)) {
                // line 35
                yield "                  <div class=\"d-flex gap-2 flex-wrap justify-content-center\">
                    ";
                // line 36
                $context['_parent'] = $context;
                $context['_seq'] = CoreExtension::ensureTraversable(($context["images"] ?? null));
                foreach ($context['_seq'] as $context["_key"] => $context["image"]) {
                    // line 37
                    yield "                      <a href=\"";
                    yield CoreExtension::getAttribute($this->env, $this->source, $context["image"], "popup", [], "any", false, false, false, 37);
                    yield "\" title=\"";
                    yield ($context["heading_title"] ?? null);
                    yield "\" class=\"thumbnail-link\">
                        <img src=\"";
                    // line 38
                    yield CoreExtension::getAttribute($this->env, $this->source, $context["image"], "thumb", [], "any", false, false, false, 38);
                    yield "\" title=\"";
                    yield ($context["heading_title"] ?? null);
                    yield "\" alt=\"";
                    yield ($context["heading_title"] ?? null);
                    yield "\" class=\"img-thumbnail shadow-sm\" style=\"width: 80px; height: 80px; object-fit: cover;\"/>
                      </a>
                    ";
                }
                $_parent = $context['_parent'];
                unset($context['_seq'], $context['_key'], $context['image'], $context['_parent']);
                $context = array_intersect_key($context, $_parent) + $_parent;
                // line 41
                yield "                  </div>
                ";
            }
            // line 43
            yield "              </div>
            </div>
          </div>
        ";
        }
        // line 47
        yield "
        <div class=\"col-md-7\">
          ";
        // line 50
        yield "          <h1 class=\"mb-3\">";
        yield ($context["heading_title"] ?? null);
        yield "</h1>

          ";
        // line 53
        yield "          <ul class=\"list-unstyled mb-3\">
            ";
        // line 54
        if (($context["manufacturer"] ?? null)) {
            // line 55
            yield "              <li class=\"mb-2\">
                <span class=\"text-body-secondary\">";
            // line 56
            yield ($context["text_manufacturer"] ?? null);
            yield "</span>
                <a href=\"";
            // line 57
            yield ($context["manufacturers"] ?? null);
            yield "\" class=\"text-decoration-none fw-semibold\">";
            yield ($context["manufacturer"] ?? null);
            yield "</a>
              </li>
            ";
        }
        // line 60
        yield "            <li class=\"mb-2\">
              <span class=\"text-body-secondary\">";
        // line 61
        yield ($context["text_model"] ?? null);
        yield "</span>
              <span class=\"fw-semibold\">";
        // line 62
        yield ($context["model"] ?? null);
        yield "</span>
            </li>
            ";
        // line 64
        $context['_parent'] = $context;
        $context['_seq'] = CoreExtension::ensureTraversable(($context["product_codes"] ?? null));
        foreach ($context['_seq'] as $context["_key"] => $context["product_code"]) {
            // line 65
            yield "              <li class=\"mb-2\">
                <span class=\"text-body-secondary\">";
            // line 66
            yield CoreExtension::getAttribute($this->env, $this->source, $context["product_code"], "code", [], "any", false, false, false, 66);
            yield ":</span>
                <span class=\"fw-semibold\">";
            // line 67
            yield CoreExtension::getAttribute($this->env, $this->source, $context["product_code"], "value", [], "any", false, false, false, 67);
            yield "</span>
              </li>
            ";
        }
        $_parent = $context['_parent'];
        unset($context['_seq'], $context['_key'], $context['product_code'], $context['_parent']);
        $context = array_intersect_key($context, $_parent) + $_parent;
        // line 70
        yield "            ";
        if (($context["reward"] ?? null)) {
            // line 71
            yield "              <li class=\"mb-2\">
                <span class=\"badge bg-warning\">
                  <i class=\"fa-solid fa-gift\"></i> ";
            // line 73
            yield ($context["text_reward"] ?? null);
            yield " ";
            yield ($context["reward"] ?? null);
            yield "
                </span>
              </li>
            ";
        }
        // line 77
        yield "            <li class=\"mb-2\">
              <span class=\"text-body-secondary\">";
        // line 78
        yield ($context["text_stock"] ?? null);
        yield "</span>
              <span class=\"badge bg-success\">";
        // line 79
        yield ($context["stock"] ?? null);
        yield "</span>
            </li>
          </ul>

          ";
        // line 84
        yield "          ";
        if (($context["review_status"] ?? null)) {
            // line 85
            yield "            <div class=\"mb-3\">
              <div class=\"d-flex align-items-center gap-2\">
                <div class=\"text-warning\">
                  ";
            // line 88
            $context['_parent'] = $context;
            $context['_seq'] = CoreExtension::ensureTraversable(range(1, 5));
            foreach ($context['_seq'] as $context["_key"] => $context["i"]) {
                // line 89
                yield "                    ";
                if ((($context["rating"] ?? null) < $context["i"])) {
                    // line 90
                    yield "                      <i class=\"fa-regular fa-star\"></i>
                    ";
                } else {
                    // line 92
                    yield "                      <i class=\"fa-solid fa-star\"></i>
                    ";
                }
                // line 94
                yield "                  ";
            }
            $_parent = $context['_parent'];
            unset($context['_seq'], $context['_key'], $context['i'], $context['_parent']);
            $context = array_intersect_key($context, $_parent) + $_parent;
            // line 95
            yield "                </div>
                <a href=\"#tab-review\" data-bs-toggle=\"tab\" class=\"text-decoration-none\">";
            // line 96
            yield ($context["text_reviews"] ?? null);
            yield "</a>
                <span class=\"text-body-secondary\">|</span>
                <a href=\"#tab-review\" data-bs-toggle=\"tab\" class=\"text-decoration-none\">";
            // line 98
            yield ($context["text_write"] ?? null);
            yield "</a>
              </div>
            </div>
          ";
        }
        // line 102
        yield "
          ";
        // line 104
        yield "          ";
        if (($context["price"] ?? null)) {
            // line 105
            yield "            <div class=\"card border-0 shadow-sm mb-4\">
              <div class=\"card-body\">
                ";
            // line 107
            if ( !($context["special"] ?? null)) {
                // line 108
                yield "                  <h2 class=\"text-primary mb-0\">";
                yield ($context["price"] ?? null);
                yield "</h2>
                ";
            } else {
                // line 110
                yield "                  <div class=\"d-flex align-items-center gap-3 mb-2\">
                    <h2 class=\"text-success mb-0\">";
                // line 111
                yield ($context["special"] ?? null);
                yield "</h2>
                    <span class=\"badge bg-danger fs-6\">Sale</span>
                  </div>
                  <p class=\"text-body-secondary text-decoration-line-through mb-0\">";
                // line 114
                yield ($context["price"] ?? null);
                yield "</p>
                ";
            }
            // line 116
            yield "                ";
            if (($context["tax"] ?? null)) {
                // line 117
                yield "                  <small class=\"text-body-secondary d-block mt-2\">";
                yield ($context["text_tax"] ?? null);
                yield " ";
                yield ($context["tax"] ?? null);
                yield "</small>
                ";
            }
            // line 119
            yield "                ";
            if (($context["points"] ?? null)) {
                // line 120
                yield "                  <small class=\"text-body-secondary d-block\">";
                yield ($context["text_points"] ?? null);
                yield " ";
                yield ($context["points"] ?? null);
                yield "</small>
                ";
            }
            // line 122
            yield "                ";
            if (($context["discounts"] ?? null)) {
                // line 123
                yield "                  <hr class=\"my-3\">
                  <h6 class=\"mb-2\">Bulk Discounts:</h6>
                  <ul class=\"list-unstyled mb-0\">
                    ";
                // line 126
                $context['_parent'] = $context;
                $context['_seq'] = CoreExtension::ensureTraversable(($context["discounts"] ?? null));
                foreach ($context['_seq'] as $context["_key"] => $context["discount"]) {
                    // line 127
                    yield "                      <li class=\"small\">";
                    yield CoreExtension::getAttribute($this->env, $this->source, $context["discount"], "quantity", [], "any", false, false, false, 127);
                    yield ($context["text_discount"] ?? null);
                    yield CoreExtension::getAttribute($this->env, $this->source, $context["discount"], "price", [], "any", false, false, false, 127);
                    yield "</li>
                    ";
                }
                $_parent = $context['_parent'];
                unset($context['_seq'], $context['_key'], $context['discount'], $context['_parent']);
                $context = array_intersect_key($context, $_parent) + $_parent;
                // line 129
                yield "                  </ul>
                ";
            }
            // line 131
            yield "              </div>
            </div>
          ";
        }
        // line 134
        yield "
          ";
        // line 136
        yield "          <form method=\"post\" data-oc-toggle=\"ajax\" class=\"mb-3\">
            <div class=\"btn-group shadow-sm\" role=\"group\">
              <button type=\"submit\" formaction=\"";
        // line 138
        yield ($context["wishlist_add"] ?? null);
        yield "\" data-bs-toggle=\"tooltip\" class=\"btn btn-outline-danger\" title=\"";
        yield ($context["button_wishlist"] ?? null);
        yield "\">
                <i class=\"fa-solid fa-heart\"></i>
                <span class=\"d-none d-lg-inline ms-2\">Wishlist</span>
              </button>
              <button type=\"submit\" formaction=\"";
        // line 142
        yield ($context["compare_add"] ?? null);
        yield "\" data-bs-toggle=\"tooltip\" class=\"btn btn-outline-secondary\" title=\"";
        yield ($context["button_compare"] ?? null);
        yield "\">
                <i class=\"fa-solid fa-arrow-right-arrow-left\"></i>
                <span class=\"d-none d-lg-inline ms-2\">Compare</span>
              </button>
            </div>
            <input type=\"hidden\" name=\"product_id\" value=\"";
        // line 147
        yield ($context["product_id"] ?? null);
        yield "\"/>
          </form>
          ";
        // line 150
        yield "          <div id=\"product\">
            <form id=\"form-product\" class=\"card shadow-sm border-0\">
              <div class=\"card-body\">
                ";
        // line 153
        if (($context["options"] ?? null)) {
            // line 154
            yield "                  <h5 class=\"card-title border-bottom pb-2 mb-3\">";
            yield ($context["text_option"] ?? null);
            yield "</h5>
                  <div>
                  ";
            // line 156
            $context['_parent'] = $context;
            $context['_seq'] = CoreExtension::ensureTraversable(($context["options"] ?? null));
            foreach ($context['_seq'] as $context["_key"] => $context["option"]) {
                // line 157
                yield "
                    ";
                // line 158
                if ((CoreExtension::getAttribute($this->env, $this->source, $context["option"], "type", [], "any", false, false, false, 158) == "select")) {
                    // line 159
                    yield "                      <div class=\"mb-3";
                    if (CoreExtension::getAttribute($this->env, $this->source, $context["option"], "required", [], "any", false, false, false, 159)) {
                        yield " required";
                    }
                    yield "\">
                        <label for=\"input-option-";
                    // line 160
                    yield CoreExtension::getAttribute($this->env, $this->source, $context["option"], "product_option_id", [], "any", false, false, false, 160);
                    yield "\" class=\"form-label\">";
                    yield CoreExtension::getAttribute($this->env, $this->source, $context["option"], "name", [], "any", false, false, false, 160);
                    yield "</label>
                        <select name=\"option[";
                    // line 161
                    yield CoreExtension::getAttribute($this->env, $this->source, $context["option"], "product_option_id", [], "any", false, false, false, 161);
                    yield "]\" id=\"input-option-";
                    yield CoreExtension::getAttribute($this->env, $this->source, $context["option"], "product_option_id", [], "any", false, false, false, 161);
                    yield "\" class=\"form-select\">
                          <option value=\"\">";
                    // line 162
                    yield ($context["text_select"] ?? null);
                    yield "</option>
                          ";
                    // line 163
                    $context['_parent'] = $context;
                    $context['_seq'] = CoreExtension::ensureTraversable(CoreExtension::getAttribute($this->env, $this->source, $context["option"], "product_option_value", [], "any", false, false, false, 163));
                    foreach ($context['_seq'] as $context["_key"] => $context["option_value"]) {
                        // line 164
                        yield "                            <option value=\"";
                        yield CoreExtension::getAttribute($this->env, $this->source, $context["option_value"], "product_option_value_id", [], "any", false, false, false, 164);
                        yield "\">";
                        yield CoreExtension::getAttribute($this->env, $this->source, $context["option_value"], "name", [], "any", false, false, false, 164);
                        yield "
                              ";
                        // line 165
                        if (CoreExtension::getAttribute($this->env, $this->source, $context["option_value"], "price", [], "any", false, false, false, 165)) {
                            // line 166
                            yield "                                (";
                            yield CoreExtension::getAttribute($this->env, $this->source, $context["option_value"], "price_prefix", [], "any", false, false, false, 166);
                            yield CoreExtension::getAttribute($this->env, $this->source, $context["option_value"], "price", [], "any", false, false, false, 166);
                            yield ")
                              ";
                        }
                        // line 167
                        yield "</option>
                          ";
                    }
                    $_parent = $context['_parent'];
                    unset($context['_seq'], $context['_key'], $context['option_value'], $context['_parent']);
                    $context = array_intersect_key($context, $_parent) + $_parent;
                    // line 169
                    yield "                        </select>
                        <div id=\"error-option-";
                    // line 170
                    yield CoreExtension::getAttribute($this->env, $this->source, $context["option"], "product_option_id", [], "any", false, false, false, 170);
                    yield "\" class=\"invalid-feedback\"></div>
                      </div>
                    ";
                }
                // line 173
                yield "
                    ";
                // line 174
                if ((CoreExtension::getAttribute($this->env, $this->source, $context["option"], "type", [], "any", false, false, false, 174) == "radio")) {
                    // line 175
                    yield "                      <div class=\"mb-3";
                    if (CoreExtension::getAttribute($this->env, $this->source, $context["option"], "required", [], "any", false, false, false, 175)) {
                        yield " required";
                    }
                    yield "\">
                        <label class=\"form-label\">";
                    // line 176
                    yield CoreExtension::getAttribute($this->env, $this->source, $context["option"], "name", [], "any", false, false, false, 176);
                    yield "</label>
                        <div id=\"input-option-";
                    // line 177
                    yield CoreExtension::getAttribute($this->env, $this->source, $context["option"], "product_option_id", [], "any", false, false, false, 177);
                    yield "\">
                          ";
                    // line 178
                    $context['_parent'] = $context;
                    $context['_seq'] = CoreExtension::ensureTraversable(CoreExtension::getAttribute($this->env, $this->source, $context["option"], "product_option_value", [], "any", false, false, false, 178));
                    foreach ($context['_seq'] as $context["_key"] => $context["option_value"]) {
                        // line 179
                        yield "                            <div class=\"form-check\">
                              <input type=\"radio\" name=\"option[";
                        // line 180
                        yield CoreExtension::getAttribute($this->env, $this->source, $context["option"], "product_option_id", [], "any", false, false, false, 180);
                        yield "]\" value=\"";
                        yield CoreExtension::getAttribute($this->env, $this->source, $context["option_value"], "product_option_value_id", [], "any", false, false, false, 180);
                        yield "\" id=\"input-option-value-";
                        yield CoreExtension::getAttribute($this->env, $this->source, $context["option_value"], "product_option_value_id", [], "any", false, false, false, 180);
                        yield "\" class=\"form-check-input\"/>
                              <label for=\"input-option-value-";
                        // line 181
                        yield CoreExtension::getAttribute($this->env, $this->source, $context["option_value"], "product_option_value_id", [], "any", false, false, false, 181);
                        yield "\" class=\"form-check-label\">
                                ";
                        // line 182
                        if (CoreExtension::getAttribute($this->env, $this->source, $context["option_value"], "image", [], "any", false, false, false, 182)) {
                            // line 183
                            yield "                                  <img src=\"";
                            yield CoreExtension::getAttribute($this->env, $this->source, $context["option_value"], "image", [], "any", false, false, false, 183);
                            yield "\" alt=\"";
                            yield CoreExtension::getAttribute($this->env, $this->source, $context["option_value"], "name", [], "any", false, false, false, 183);
                            yield " ";
                            if (CoreExtension::getAttribute($this->env, $this->source, $context["option_value"], "price", [], "any", false, false, false, 183)) {
                                yield CoreExtension::getAttribute($this->env, $this->source, $context["option_value"], "price_prefix", [], "any", false, false, false, 183);
                                yield " ";
                                yield CoreExtension::getAttribute($this->env, $this->source, $context["option_value"], "price", [], "any", false, false, false, 183);
                            }
                            yield "\" class=\"img-thumbnail\"/>";
                        }
                        // line 184
                        yield "                                ";
                        yield CoreExtension::getAttribute($this->env, $this->source, $context["option_value"], "name", [], "any", false, false, false, 184);
                        yield "
                                ";
                        // line 185
                        if (CoreExtension::getAttribute($this->env, $this->source, $context["option_value"], "price", [], "any", false, false, false, 185)) {
                            // line 186
                            yield "                                  (";
                            yield CoreExtension::getAttribute($this->env, $this->source, $context["option_value"], "price_prefix", [], "any", false, false, false, 186);
                            yield CoreExtension::getAttribute($this->env, $this->source, $context["option_value"], "price", [], "any", false, false, false, 186);
                            yield ")
                                ";
                        }
                        // line 187
                        yield "</label>
                            </div>
                          ";
                    }
                    $_parent = $context['_parent'];
                    unset($context['_seq'], $context['_key'], $context['option_value'], $context['_parent']);
                    $context = array_intersect_key($context, $_parent) + $_parent;
                    // line 190
                    yield "                        </div>
                        <div id=\"error-option-";
                    // line 191
                    yield CoreExtension::getAttribute($this->env, $this->source, $context["option"], "product_option_id", [], "any", false, false, false, 191);
                    yield "\" class=\"invalid-feedback\"></div>
                      </div>
                    ";
                }
                // line 194
                yield "
                    ";
                // line 195
                if ((CoreExtension::getAttribute($this->env, $this->source, $context["option"], "type", [], "any", false, false, false, 195) == "checkbox")) {
                    // line 196
                    yield "                      <div class=\"mb-3";
                    if (CoreExtension::getAttribute($this->env, $this->source, $context["option"], "required", [], "any", false, false, false, 196)) {
                        yield " required";
                    }
                    yield "\">
                        <label class=\"form-label\">";
                    // line 197
                    yield CoreExtension::getAttribute($this->env, $this->source, $context["option"], "name", [], "any", false, false, false, 197);
                    yield "</label>
                        <div id=\"input-option-";
                    // line 198
                    yield CoreExtension::getAttribute($this->env, $this->source, $context["option"], "product_option_id", [], "any", false, false, false, 198);
                    yield "\">
                          ";
                    // line 199
                    $context['_parent'] = $context;
                    $context['_seq'] = CoreExtension::ensureTraversable(CoreExtension::getAttribute($this->env, $this->source, $context["option"], "product_option_value", [], "any", false, false, false, 199));
                    foreach ($context['_seq'] as $context["_key"] => $context["option_value"]) {
                        // line 200
                        yield "                            <div class=\"form-check\">
                              <input type=\"checkbox\" name=\"option[";
                        // line 201
                        yield CoreExtension::getAttribute($this->env, $this->source, $context["option"], "product_option_id", [], "any", false, false, false, 201);
                        yield "][]\" value=\"";
                        yield CoreExtension::getAttribute($this->env, $this->source, $context["option_value"], "product_option_value_id", [], "any", false, false, false, 201);
                        yield "\" id=\"input-option-value-";
                        yield CoreExtension::getAttribute($this->env, $this->source, $context["option_value"], "product_option_value_id", [], "any", false, false, false, 201);
                        yield "\" class=\"form-check-input\"/> 
\t\t\t\t\t\t\t                <label for=\"input-option-value-";
                        // line 202
                        yield CoreExtension::getAttribute($this->env, $this->source, $context["option_value"], "product_option_value_id", [], "any", false, false, false, 202);
                        yield "\" class=\"form-check-label\">
                                ";
                        // line 203
                        if (CoreExtension::getAttribute($this->env, $this->source, $context["option_value"], "image", [], "any", false, false, false, 203)) {
                            // line 204
                            yield "                                  <img src=\"";
                            yield CoreExtension::getAttribute($this->env, $this->source, $context["option_value"], "image", [], "any", false, false, false, 204);
                            yield "\" alt=\"";
                            yield CoreExtension::getAttribute($this->env, $this->source, $context["option_value"], "name", [], "any", false, false, false, 204);
                            yield " ";
                            if (CoreExtension::getAttribute($this->env, $this->source, $context["option_value"], "price", [], "any", false, false, false, 204)) {
                                yield CoreExtension::getAttribute($this->env, $this->source, $context["option_value"], "price_prefix", [], "any", false, false, false, 204);
                                yield " ";
                                yield CoreExtension::getAttribute($this->env, $this->source, $context["option_value"], "price", [], "any", false, false, false, 204);
                            }
                            yield "\" class=\"img-thumbnail\"/>";
                        }
                        // line 205
                        yield "                                ";
                        yield CoreExtension::getAttribute($this->env, $this->source, $context["option_value"], "name", [], "any", false, false, false, 205);
                        yield "
                                ";
                        // line 206
                        if (CoreExtension::getAttribute($this->env, $this->source, $context["option_value"], "price", [], "any", false, false, false, 206)) {
                            // line 207
                            yield "                                  (";
                            yield CoreExtension::getAttribute($this->env, $this->source, $context["option_value"], "price_prefix", [], "any", false, false, false, 207);
                            yield CoreExtension::getAttribute($this->env, $this->source, $context["option_value"], "price", [], "any", false, false, false, 207);
                            yield ")
                                ";
                        }
                        // line 208
                        yield "</label>
                            </div>
                          ";
                    }
                    $_parent = $context['_parent'];
                    unset($context['_seq'], $context['_key'], $context['option_value'], $context['_parent']);
                    $context = array_intersect_key($context, $_parent) + $_parent;
                    // line 211
                    yield "                        </div>
                        <div id=\"error-option-";
                    // line 212
                    yield CoreExtension::getAttribute($this->env, $this->source, $context["option"], "product_option_id", [], "any", false, false, false, 212);
                    yield "\" class=\"invalid-feedback\"></div>
                      </div>
                    ";
                }
                // line 215
                yield "
                    ";
                // line 216
                if ((CoreExtension::getAttribute($this->env, $this->source, $context["option"], "type", [], "any", false, false, false, 216) == "text")) {
                    // line 217
                    yield "                      <div class=\"mb-3";
                    if (CoreExtension::getAttribute($this->env, $this->source, $context["option"], "required", [], "any", false, false, false, 217)) {
                        yield " required";
                    }
                    yield "\">
                        <label for=\"input-option-";
                    // line 218
                    yield CoreExtension::getAttribute($this->env, $this->source, $context["option"], "product_option_id", [], "any", false, false, false, 218);
                    yield "\" class=\"form-label\">";
                    yield CoreExtension::getAttribute($this->env, $this->source, $context["option"], "name", [], "any", false, false, false, 218);
                    yield "</label> <input type=\"text\" name=\"option[";
                    yield CoreExtension::getAttribute($this->env, $this->source, $context["option"], "product_option_id", [], "any", false, false, false, 218);
                    yield "]\" value=\"";
                    yield CoreExtension::getAttribute($this->env, $this->source, $context["option"], "value", [], "any", false, false, false, 218);
                    yield "\" placeholder=\"";
                    yield CoreExtension::getAttribute($this->env, $this->source, $context["option"], "name", [], "any", false, false, false, 218);
                    yield "\" id=\"input-option-";
                    yield CoreExtension::getAttribute($this->env, $this->source, $context["option"], "product_option_id", [], "any", false, false, false, 218);
                    yield "\" class=\"form-control\"/>
                        <div id=\"error-option-";
                    // line 219
                    yield CoreExtension::getAttribute($this->env, $this->source, $context["option"], "product_option_id", [], "any", false, false, false, 219);
                    yield "\" class=\"invalid-feedback\"></div>
                      </div>
                    ";
                }
                // line 222
                yield "
                    ";
                // line 223
                if ((CoreExtension::getAttribute($this->env, $this->source, $context["option"], "type", [], "any", false, false, false, 223) == "textarea")) {
                    // line 224
                    yield "                      <div class=\"mb-3";
                    if (CoreExtension::getAttribute($this->env, $this->source, $context["option"], "required", [], "any", false, false, false, 224)) {
                        yield " required";
                    }
                    yield "\">
                        <label for=\"input-option-";
                    // line 225
                    yield CoreExtension::getAttribute($this->env, $this->source, $context["option"], "product_option_id", [], "any", false, false, false, 225);
                    yield "\" class=\"form-label\">";
                    yield CoreExtension::getAttribute($this->env, $this->source, $context["option"], "name", [], "any", false, false, false, 225);
                    yield "</label> <textarea name=\"option[";
                    yield CoreExtension::getAttribute($this->env, $this->source, $context["option"], "product_option_id", [], "any", false, false, false, 225);
                    yield "]\" rows=\"5\" placeholder=\"";
                    yield CoreExtension::getAttribute($this->env, $this->source, $context["option"], "name", [], "any", false, false, false, 225);
                    yield "\" id=\"input-option-";
                    yield CoreExtension::getAttribute($this->env, $this->source, $context["option"], "product_option_id", [], "any", false, false, false, 225);
                    yield "\" class=\"form-control\">";
                    yield CoreExtension::getAttribute($this->env, $this->source, $context["option"], "value", [], "any", false, false, false, 225);
                    yield "</textarea>
                        <div id=\"error-option-";
                    // line 226
                    yield CoreExtension::getAttribute($this->env, $this->source, $context["option"], "product_option_id", [], "any", false, false, false, 226);
                    yield "\" class=\"invalid-feedback\"></div>
                      </div>
                    ";
                }
                // line 229
                yield "
                    ";
                // line 230
                if ((CoreExtension::getAttribute($this->env, $this->source, $context["option"], "type", [], "any", false, false, false, 230) == "file")) {
                    // line 231
                    yield "                      <div class=\"mb-3";
                    if (CoreExtension::getAttribute($this->env, $this->source, $context["option"], "required", [], "any", false, false, false, 231)) {
                        yield " required";
                    }
                    yield "\">
                        <label for=\"button-upload-";
                    // line 232
                    yield CoreExtension::getAttribute($this->env, $this->source, $context["option"], "product_option_id", [], "any", false, false, false, 232);
                    yield "\" class=\"form-label\">";
                    yield CoreExtension::getAttribute($this->env, $this->source, $context["option"], "name", [], "any", false, false, false, 232);
                    yield "</label>
                        <div>
                          <button type=\"button\" id=\"button-upload-";
                    // line 234
                    yield CoreExtension::getAttribute($this->env, $this->source, $context["option"], "product_option_id", [], "any", false, false, false, 234);
                    yield "\" data-oc-toggle=\"upload\" data-oc-url=\"";
                    yield ($context["upload"] ?? null);
                    yield "\" data-oc-target=\"#input-option-";
                    yield CoreExtension::getAttribute($this->env, $this->source, $context["option"], "product_option_id", [], "any", false, false, false, 234);
                    yield "\" data-oc-size-max=\"";
                    yield ($context["config_file_max_size"] ?? null);
                    yield "\" data-oc-size-error=\"";
                    yield ($context["error_upload_size"] ?? null);
                    yield "\" class=\"btn btn-outline-secondary w-100\"><i class=\"fa-solid fa-upload\"></i> ";
                    yield ($context["button_upload"] ?? null);
                    yield "</button>
                          <input type=\"hidden\" name=\"option[";
                    // line 235
                    yield CoreExtension::getAttribute($this->env, $this->source, $context["option"], "product_option_id", [], "any", false, false, false, 235);
                    yield "]\" value=\"\" id=\"input-option-";
                    yield CoreExtension::getAttribute($this->env, $this->source, $context["option"], "product_option_id", [], "any", false, false, false, 235);
                    yield "\"/>
                        </div>
                        <div id=\"error-option-";
                    // line 237
                    yield CoreExtension::getAttribute($this->env, $this->source, $context["option"], "product_option_id", [], "any", false, false, false, 237);
                    yield "\" class=\"invalid-feedback\"></div>
                      </div>
                    ";
                }
                // line 240
                yield "
                    ";
                // line 241
                if ((CoreExtension::getAttribute($this->env, $this->source, $context["option"], "type", [], "any", false, false, false, 241) == "date")) {
                    // line 242
                    yield "                      <div class=\"mb-3";
                    if (CoreExtension::getAttribute($this->env, $this->source, $context["option"], "required", [], "any", false, false, false, 242)) {
                        yield " required";
                    }
                    yield "\">
                        <label for=\"input-option-";
                    // line 243
                    yield CoreExtension::getAttribute($this->env, $this->source, $context["option"], "product_option_id", [], "any", false, false, false, 243);
                    yield "\" class=\"form-label\">";
                    yield CoreExtension::getAttribute($this->env, $this->source, $context["option"], "name", [], "any", false, false, false, 243);
                    yield "</label>
                        <input type=\"date\" name=\"option[";
                    // line 244
                    yield CoreExtension::getAttribute($this->env, $this->source, $context["option"], "product_option_id", [], "any", false, false, false, 244);
                    yield "]\" value=\"";
                    yield CoreExtension::getAttribute($this->env, $this->source, $context["option"], "value", [], "any", false, false, false, 244);
                    yield "\" id=\"input-option-";
                    yield CoreExtension::getAttribute($this->env, $this->source, $context["option"], "product_option_id", [], "any", false, false, false, 244);
                    yield "\" class=\"form-control\"/>
                        <div id=\"error-option-";
                    // line 245
                    yield CoreExtension::getAttribute($this->env, $this->source, $context["option"], "product_option_id", [], "any", false, false, false, 245);
                    yield "\" class=\"invalid-feedback\"></div>
                      </div>
                    ";
                }
                // line 248
                yield "
                    ";
                // line 249
                if ((CoreExtension::getAttribute($this->env, $this->source, $context["option"], "type", [], "any", false, false, false, 249) == "time")) {
                    // line 250
                    yield "                      <div class=\"mb-3";
                    if (CoreExtension::getAttribute($this->env, $this->source, $context["option"], "required", [], "any", false, false, false, 250)) {
                        yield " required";
                    }
                    yield "\">
                        <label for=\"input-option-";
                    // line 251
                    yield CoreExtension::getAttribute($this->env, $this->source, $context["option"], "product_option_id", [], "any", false, false, false, 251);
                    yield "\" class=\"form-label\">";
                    yield CoreExtension::getAttribute($this->env, $this->source, $context["option"], "name", [], "any", false, false, false, 251);
                    yield "</label>
                        <input type=\"time\" name=\"option[";
                    // line 252
                    yield CoreExtension::getAttribute($this->env, $this->source, $context["option"], "product_option_id", [], "any", false, false, false, 252);
                    yield "]\" value=\"";
                    yield CoreExtension::getAttribute($this->env, $this->source, $context["option"], "value", [], "any", false, false, false, 252);
                    yield "\" id=\"input-option-";
                    yield CoreExtension::getAttribute($this->env, $this->source, $context["option"], "product_option_id", [], "any", false, false, false, 252);
                    yield "\" class=\"form-control\"/>
                        <div id=\"error-option-";
                    // line 253
                    yield CoreExtension::getAttribute($this->env, $this->source, $context["option"], "product_option_id", [], "any", false, false, false, 253);
                    yield "\" class=\"invalid-feedback\"></div>
                      </div>
                    ";
                }
                // line 256
                yield "
                    ";
                // line 257
                if ((CoreExtension::getAttribute($this->env, $this->source, $context["option"], "type", [], "any", false, false, false, 257) == "datetime")) {
                    // line 258
                    yield "                      <div class=\"mb-3";
                    if (CoreExtension::getAttribute($this->env, $this->source, $context["option"], "required", [], "any", false, false, false, 258)) {
                        yield " required";
                    }
                    yield "\">
                        <label for=\"input-option-";
                    // line 259
                    yield CoreExtension::getAttribute($this->env, $this->source, $context["option"], "product_option_id", [], "any", false, false, false, 259);
                    yield "\" class=\"form-label\">";
                    yield CoreExtension::getAttribute($this->env, $this->source, $context["option"], "name", [], "any", false, false, false, 259);
                    yield "</label>
                        <input type=\"datetime-local\" name=\"option[";
                    // line 260
                    yield CoreExtension::getAttribute($this->env, $this->source, $context["option"], "product_option_id", [], "any", false, false, false, 260);
                    yield "]\" value=\"";
                    yield CoreExtension::getAttribute($this->env, $this->source, $context["option"], "value", [], "any", false, false, false, 260);
                    yield "\" id=\"input-option-";
                    yield CoreExtension::getAttribute($this->env, $this->source, $context["option"], "product_option_id", [], "any", false, false, false, 260);
                    yield "\" class=\"form-control\"/>
                        <div id=\"error-option-";
                    // line 261
                    yield CoreExtension::getAttribute($this->env, $this->source, $context["option"], "product_option_id", [], "any", false, false, false, 261);
                    yield "\" class=\"invalid-feedback\"></div>
                      </div>
                    ";
                }
                // line 264
                yield "                  ";
            }
            $_parent = $context['_parent'];
            unset($context['_seq'], $context['_key'], $context['option'], $context['_parent']);
            $context = array_intersect_key($context, $_parent) + $_parent;
            // line 265
            yield "                </div>
              ";
        }
        // line 267
        yield "
              ";
        // line 268
        if (($context["subscription_plans"] ?? null)) {
            // line 269
            yield "                  <h5 class=\"card-title border-bottom pb-2 mb-3 mt-4\">";
            yield ($context["text_subscription"] ?? null);
            yield "</h5>
                  <div class=\"mb-3 required\">
                    <select name=\"subscription_plan_id\" id=\"input-subscription\" class=\"form-select form-select-lg shadow-sm\">
                      <option value=\"\">";
            // line 272
            yield ($context["text_select"] ?? null);
            yield "</option>
                      ";
            // line 273
            $context['_parent'] = $context;
            $context['_seq'] = CoreExtension::ensureTraversable(($context["subscription_plans"] ?? null));
            foreach ($context['_seq'] as $context["_key"] => $context["subscription_plan"]) {
                // line 274
                yield "                        <option value=\"";
                yield CoreExtension::getAttribute($this->env, $this->source, $context["subscription_plan"], "subscription_plan_id", [], "any", false, false, false, 274);
                yield "\">";
                yield CoreExtension::getAttribute($this->env, $this->source, $context["subscription_plan"], "name", [], "any", false, false, false, 274);
                yield "</option>
                      ";
            }
            $_parent = $context['_parent'];
            unset($context['_seq'], $context['_key'], $context['subscription_plan'], $context['_parent']);
            $context = array_intersect_key($context, $_parent) + $_parent;
            // line 276
            yield "                    </select>
                    ";
            // line 277
            $context['_parent'] = $context;
            $context['_seq'] = CoreExtension::ensureTraversable(($context["subscription_plans"] ?? null));
            foreach ($context['_seq'] as $context["_key"] => $context["subscription_plan"]) {
                // line 278
                yield "                      <div id=\"subscription-description-";
                yield CoreExtension::getAttribute($this->env, $this->source, $context["subscription_plan"], "subscription_plan_id", [], "any", false, false, false, 278);
                yield "\" class=\"form-text subscription d-none\">";
                yield CoreExtension::getAttribute($this->env, $this->source, $context["subscription_plan"], "description", [], "any", false, false, false, 278);
                yield "</div>
                    ";
            }
            $_parent = $context['_parent'];
            unset($context['_seq'], $context['_key'], $context['subscription_plan'], $context['_parent']);
            $context = array_intersect_key($context, $_parent) + $_parent;
            // line 280
            yield "                    <div id=\"error-subscription\" class=\"invalid-feedback\"></div>
                  </div>
              ";
        }
        // line 283
        yield "
              ";
        // line 285
        yield "              <div class=\"mb-3\">
                <div class=\"input-group input-group-lg shadow-sm\">
                  <span class=\"input-group-text\">";
        // line 287
        yield ($context["entry_qty"] ?? null);
        yield "</span>
                  <input type=\"text\" name=\"quantity\" value=\"";
        // line 288
        yield ($context["minimum"] ?? null);
        yield "\" size=\"2\" id=\"input-quantity\" class=\"form-control text-center\" style=\"max-width: 100px;\"/>
                  <button type=\"submit\" id=\"button-cart\" class=\"btn btn-primary flex-grow-1\">
                    <i class=\"fa-solid fa-cart-shopping\"></i>
                    <span class=\"ms-2\">";
        // line 291
        yield ($context["button_cart"] ?? null);
        yield "</span>
                  </button>
                </div>
                <input type=\"hidden\" name=\"product_id\" value=\"";
        // line 294
        yield ($context["product_id"] ?? null);
        yield "\" id=\"input-product-id\"/>
                <div id=\"error-quantity\" class=\"form-text\"></div>
              </div>

              ";
        // line 298
        if ((($context["minimum"] ?? null) > 1)) {
            // line 299
            yield "                <div class=\"alert alert-warning border-0 shadow-sm\">
                  <i class=\"fa-solid fa-circle-info me-2\"></i>";
            // line 300
            yield ($context["text_minimum"] ?? null);
            yield "
                </div>
              ";
        }
        // line 303
        yield "              </div>
            </form>
          </div>
        </div>
      </div>
      ";
        // line 309
        yield "      <div class=\"card border-0 shadow-sm mt-4\">
        <div class=\"card-header\">
          <ul class=\"nav nav-tabs card-header-tabs\">
            <li class=\"nav-item\">
              <a href=\"#tab-description\" data-bs-toggle=\"tab\" class=\"nav-link active\">
                <i class=\"fa-solid fa-file-lines me-2\"></i>";
        // line 314
        yield ($context["tab_description"] ?? null);
        yield "
              </a>
            </li>
            ";
        // line 317
        if (($context["attribute_groups"] ?? null)) {
            // line 318
            yield "              <li class=\"nav-item\">
                <a href=\"#tab-specification\" data-bs-toggle=\"tab\" class=\"nav-link\">
                  <i class=\"fa-solid fa-list-check me-2\"></i>";
            // line 320
            yield ($context["tab_attribute"] ?? null);
            yield "
                </a>
              </li>
            ";
        }
        // line 324
        yield "            ";
        if (($context["review_status"] ?? null)) {
            // line 325
            yield "              <li class=\"nav-item\">
                <a href=\"#tab-review\" data-bs-toggle=\"tab\" class=\"nav-link\">
                  <i class=\"fa-solid fa-star me-2\"></i>";
            // line 327
            yield ($context["tab_review"] ?? null);
            yield "
                </a>
              </li>
            ";
        }
        // line 331
        yield "          </ul>
        </div>
        <div class=\"card-body\">
          <div class=\"tab-content\">
            ";
        // line 336
        yield "            <div id=\"tab-description\" class=\"tab-pane fade show active\">
              ";
        // line 337
        yield ($context["description"] ?? null);
        yield "
              ";
        // line 338
        if (($context["tags"] ?? null)) {
            // line 339
            yield "                <div class=\"mt-4\">
                  <h6 class=\"mb-2\">";
            // line 340
            yield ($context["text_tags"] ?? null);
            yield "</h6>
                  <div class=\"d-flex gap-2 flex-wrap\">
                    ";
            // line 342
            $context['_parent'] = $context;
            $context['_seq'] = CoreExtension::ensureTraversable(($context["tags"] ?? null));
            foreach ($context['_seq'] as $context["_key"] => $context["tag"]) {
                // line 343
                yield "                      <a href=\"";
                yield CoreExtension::getAttribute($this->env, $this->source, $context["tag"], "href", [], "any", false, false, false, 343);
                yield "\" class=\"badge bg-secondary text-decoration-none\">
                        <i class=\"fa-solid fa-tag fa-xs\"></i> ";
                // line 344
                yield CoreExtension::getAttribute($this->env, $this->source, $context["tag"], "tag", [], "any", false, false, false, 344);
                yield "
                      </a>
                    ";
            }
            $_parent = $context['_parent'];
            unset($context['_seq'], $context['_key'], $context['tag'], $context['_parent']);
            $context = array_intersect_key($context, $_parent) + $_parent;
            // line 347
            yield "                  </div>
                </div>
              ";
        }
        // line 350
        yield "            </div>

            ";
        // line 353
        yield "            ";
        if (($context["attribute_groups"] ?? null)) {
            // line 354
            yield "              <div id=\"tab-specification\" class=\"tab-pane fade\">
                <div class=\"table-responsive\">
                  <table class=\"table table-hover table-striped\">
                    ";
            // line 357
            $context['_parent'] = $context;
            $context['_seq'] = CoreExtension::ensureTraversable(($context["attribute_groups"] ?? null));
            foreach ($context['_seq'] as $context["_key"] => $context["attribute_group"]) {
                // line 358
                yield "                      <thead>
                        <tr>
                          <th colspan=\"2\" class=\"fs-5\">";
                // line 360
                yield CoreExtension::getAttribute($this->env, $this->source, $context["attribute_group"], "name", [], "any", false, false, false, 360);
                yield "</th>
                        </tr>
                      </thead>
                      <tbody>
                        ";
                // line 364
                $context['_parent'] = $context;
                $context['_seq'] = CoreExtension::ensureTraversable(CoreExtension::getAttribute($this->env, $this->source, $context["attribute_group"], "attribute", [], "any", false, false, false, 364));
                foreach ($context['_seq'] as $context["_key"] => $context["attribute"]) {
                    // line 365
                    yield "                          <tr>
                            <td class=\"fw-semibold\" style=\"width: 30%;\">";
                    // line 366
                    yield CoreExtension::getAttribute($this->env, $this->source, $context["attribute"], "name", [], "any", false, false, false, 366);
                    yield "</td>
                            <td>";
                    // line 367
                    yield CoreExtension::getAttribute($this->env, $this->source, $context["attribute"], "text", [], "any", false, false, false, 367);
                    yield "</td>
                          </tr>
                        ";
                }
                $_parent = $context['_parent'];
                unset($context['_seq'], $context['_key'], $context['attribute'], $context['_parent']);
                $context = array_intersect_key($context, $_parent) + $_parent;
                // line 370
                yield "                      </tbody>
                    ";
            }
            $_parent = $context['_parent'];
            unset($context['_seq'], $context['_key'], $context['attribute_group'], $context['_parent']);
            $context = array_intersect_key($context, $_parent) + $_parent;
            // line 372
            yield "                  </table>
                </div>
              </div>
            ";
        }
        // line 376
        yield "
            ";
        // line 378
        yield "            ";
        if (($context["review_status"] ?? null)) {
            // line 379
            yield "              <div id=\"tab-review\" class=\"tab-pane fade\">
                ";
            // line 380
            yield ($context["review"] ?? null);
            yield "
              </div>
            ";
        }
        // line 383
        yield "          </div>
        </div>
      </div>
      ";
        // line 386
        yield ($context["related"] ?? null);
        yield "
      ";
        // line 387
        yield ($context["content_bottom"] ?? null);
        yield "
    </div>
    ";
        // line 389
        yield ($context["column_right"] ?? null);
        yield "
  </div>
</div>
<script type=\"text/javascript\"><!--
\$('#input-subscription').on('change', function(e) {
    var element = this;

    \$('.subscription').addClass('d-none');

    \$('#subscription-description-' + \$(element).val()).removeClass('d-none');
});

\$('#form-product').on('submit', function(e) {
    e.preventDefault();

    \$.ajax({
        url: 'index.php?route=checkout/cart.add&language=";
        // line 405
        yield ($context["language"] ?? null);
        yield "',
        type: 'post',
        data: \$('#form-product').serialize(),
        dataType: 'json',
        contentType: 'application/x-www-form-urlencoded',
        cache: false,
        processData: false,
        beforeSend: function() {
            \$('#button-cart').button('loading');
        },
        complete: function() {
            \$('#button-cart').button('reset');
        },
        success: function(json) {
            console.log(json);

            \$('#form-product').find('.is-invalid').removeClass('is-invalid');
            \$('#form-product').find('.invalid-feedback').removeClass('d-block');

            if (json['error']) {
                for (key in json['error']) {
                    \$('#input-' + key.replaceAll('_', '-')).addClass('is-invalid').find('.form-control, .form-select, .form-check-input, .form-check-label').addClass('is-invalid');
                    \$('#error-' + key.replaceAll('_', '-')).html(json['error'][key]).addClass('d-block');
                }
            }

            if (json['success']) {
                \$('#alert').prepend('<div class=\"alert alert-success alert-dismissible\"><i class=\"fa-solid fa-circle-check\"></i> ' + json['success'] + ' <button type=\"button\" class=\"btn-close\" data-bs-dismiss=\"alert\"></button></div>');

                \$('#cart').load('index.php?route=common/cart.info&language=";
        // line 434
        yield ($context["language"] ?? null);
        yield "');
            }
        },
        error: function(xhr, ajaxOptions, thrownError) {
            console.log(thrownError + \"\\r\\n\" + xhr.statusText + \"\\r\\n\" + xhr.responseText);
        }
    });
});

\$(document).ready(function() {
    \$('.magnific-popup').magnificPopup({
        type: 'image',
        delegate: 'a',
        gallery: {
            enabled: true
        }
    });
});
//--></script>
";
        // line 453
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
        return "catalog/view/template/product/product.twig";
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
        return array (  1261 => 453,  1239 => 434,  1207 => 405,  1188 => 389,  1183 => 387,  1179 => 386,  1174 => 383,  1168 => 380,  1165 => 379,  1162 => 378,  1159 => 376,  1153 => 372,  1146 => 370,  1137 => 367,  1133 => 366,  1130 => 365,  1126 => 364,  1119 => 360,  1115 => 358,  1111 => 357,  1106 => 354,  1103 => 353,  1099 => 350,  1094 => 347,  1085 => 344,  1080 => 343,  1076 => 342,  1071 => 340,  1068 => 339,  1066 => 338,  1062 => 337,  1059 => 336,  1053 => 331,  1046 => 327,  1042 => 325,  1039 => 324,  1032 => 320,  1028 => 318,  1026 => 317,  1020 => 314,  1013 => 309,  1006 => 303,  1000 => 300,  997 => 299,  995 => 298,  988 => 294,  982 => 291,  976 => 288,  972 => 287,  968 => 285,  965 => 283,  960 => 280,  949 => 278,  945 => 277,  942 => 276,  931 => 274,  927 => 273,  923 => 272,  916 => 269,  914 => 268,  911 => 267,  907 => 265,  901 => 264,  895 => 261,  887 => 260,  881 => 259,  874 => 258,  872 => 257,  869 => 256,  863 => 253,  855 => 252,  849 => 251,  842 => 250,  840 => 249,  837 => 248,  831 => 245,  823 => 244,  817 => 243,  810 => 242,  808 => 241,  805 => 240,  799 => 237,  792 => 235,  778 => 234,  771 => 232,  764 => 231,  762 => 230,  759 => 229,  753 => 226,  739 => 225,  732 => 224,  730 => 223,  727 => 222,  721 => 219,  707 => 218,  700 => 217,  698 => 216,  695 => 215,  689 => 212,  686 => 211,  678 => 208,  671 => 207,  669 => 206,  664 => 205,  651 => 204,  649 => 203,  645 => 202,  637 => 201,  634 => 200,  630 => 199,  626 => 198,  622 => 197,  615 => 196,  613 => 195,  610 => 194,  604 => 191,  601 => 190,  593 => 187,  586 => 186,  584 => 185,  579 => 184,  566 => 183,  564 => 182,  560 => 181,  552 => 180,  549 => 179,  545 => 178,  541 => 177,  537 => 176,  530 => 175,  528 => 174,  525 => 173,  519 => 170,  516 => 169,  509 => 167,  502 => 166,  500 => 165,  493 => 164,  489 => 163,  485 => 162,  479 => 161,  473 => 160,  466 => 159,  464 => 158,  461 => 157,  457 => 156,  451 => 154,  449 => 153,  444 => 150,  439 => 147,  429 => 142,  420 => 138,  416 => 136,  413 => 134,  408 => 131,  404 => 129,  393 => 127,  389 => 126,  384 => 123,  381 => 122,  373 => 120,  370 => 119,  362 => 117,  359 => 116,  354 => 114,  348 => 111,  345 => 110,  339 => 108,  337 => 107,  333 => 105,  330 => 104,  327 => 102,  320 => 98,  315 => 96,  312 => 95,  306 => 94,  302 => 92,  298 => 90,  295 => 89,  291 => 88,  286 => 85,  283 => 84,  276 => 79,  272 => 78,  269 => 77,  260 => 73,  256 => 71,  253 => 70,  244 => 67,  240 => 66,  237 => 65,  233 => 64,  228 => 62,  224 => 61,  221 => 60,  213 => 57,  209 => 56,  206 => 55,  204 => 54,  201 => 53,  195 => 50,  191 => 47,  185 => 43,  181 => 41,  168 => 38,  161 => 37,  157 => 36,  154 => 35,  151 => 34,  141 => 31,  134 => 30,  132 => 29,  127 => 26,  125 => 25,  122 => 24,  117 => 21,  112 => 19,  106 => 15,  91 => 13,  85 => 11,  77 => 9,  75 => 8,  68 => 7,  51 => 6,  47 => 4,  42 => 1,);
    }

    public function getSourceContext(): Source
    {
        return new Source("{{ header }}
<div id=\"product-info\" class=\"container my-4\">
  {# Breadcrumb Navigation #}
  <nav aria-label=\"breadcrumb\">
    <ol class=\"breadcrumb px-3 py-2 rounded shadow-sm\">
      {% for breadcrumb in breadcrumbs %}
        <li class=\"breadcrumb-item{% if loop.last %} active{% endif %}\">
          {% if not loop.last %}
            <a href=\"{{ breadcrumb.href }}\" class=\"text-decoration-none\">{{ breadcrumb.text }}</a>
          {% else %}
            {{ breadcrumb.text }}
          {% endif %}
        </li>
      {% endfor %}
    </ol>
  </nav>

  <div class=\"row\">
    {{ column_left }}
    <div id=\"content\" class=\"col\">
      {{ content_top }}

      {# Product Main Section #}
      <div class=\"row g-4 mb-4\">
        {% if thumb or images %}
          <div class=\"col-md-5\">
            <div class=\"card border-0 shadow-sm p-4\">
              <div class=\"magnific-popup\">
                {% if thumb %}
                  <a href=\"{{ popup }}\" title=\"{{ heading_title }}\" class=\"d-block text-center mb-3\">
                    <img src=\"{{ thumb }}\" title=\"{{ heading_title }}\" alt=\"{{ heading_title }}\" class=\"img-fluid rounded\" style=\"max-height: 400px; object-fit: contain;\"/>
                  </a>
                {% endif %}
                {% if images %}
                  <div class=\"d-flex gap-2 flex-wrap justify-content-center\">
                    {% for image in images %}
                      <a href=\"{{ image.popup }}\" title=\"{{ heading_title }}\" class=\"thumbnail-link\">
                        <img src=\"{{ image.thumb }}\" title=\"{{ heading_title }}\" alt=\"{{ heading_title }}\" class=\"img-thumbnail shadow-sm\" style=\"width: 80px; height: 80px; object-fit: cover;\"/>
                      </a>
                    {% endfor %}
                  </div>
                {% endif %}
              </div>
            </div>
          </div>
        {% endif %}

        <div class=\"col-md-7\">
          {# Product Title #}
          <h1 class=\"mb-3\">{{ heading_title }}</h1>

          {# Product Meta Information #}
          <ul class=\"list-unstyled mb-3\">
            {% if manufacturer %}
              <li class=\"mb-2\">
                <span class=\"text-body-secondary\">{{ text_manufacturer }}</span>
                <a href=\"{{ manufacturers }}\" class=\"text-decoration-none fw-semibold\">{{ manufacturer }}</a>
              </li>
            {% endif %}
            <li class=\"mb-2\">
              <span class=\"text-body-secondary\">{{ text_model }}</span>
              <span class=\"fw-semibold\">{{ model }}</span>
            </li>
            {% for product_code in product_codes %}
              <li class=\"mb-2\">
                <span class=\"text-body-secondary\">{{ product_code.code }}:</span>
                <span class=\"fw-semibold\">{{ product_code.value }}</span>
              </li>
            {% endfor %}
            {% if reward %}
              <li class=\"mb-2\">
                <span class=\"badge bg-warning\">
                  <i class=\"fa-solid fa-gift\"></i> {{ text_reward }} {{ reward }}
                </span>
              </li>
            {% endif %}
            <li class=\"mb-2\">
              <span class=\"text-body-secondary\">{{ text_stock }}</span>
              <span class=\"badge bg-success\">{{ stock }}</span>
            </li>
          </ul>

          {# Rating #}
          {% if review_status %}
            <div class=\"mb-3\">
              <div class=\"d-flex align-items-center gap-2\">
                <div class=\"text-warning\">
                  {% for i in 1..5 %}
                    {% if rating < i %}
                      <i class=\"fa-regular fa-star\"></i>
                    {% else %}
                      <i class=\"fa-solid fa-star\"></i>
                    {% endif %}
                  {% endfor %}
                </div>
                <a href=\"#tab-review\" data-bs-toggle=\"tab\" class=\"text-decoration-none\">{{ text_reviews }}</a>
                <span class=\"text-body-secondary\">|</span>
                <a href=\"#tab-review\" data-bs-toggle=\"tab\" class=\"text-decoration-none\">{{ text_write }}</a>
              </div>
            </div>
          {% endif %}

          {# Price Section #}
          {% if price %}
            <div class=\"card border-0 shadow-sm mb-4\">
              <div class=\"card-body\">
                {% if not special %}
                  <h2 class=\"text-primary mb-0\">{{ price }}</h2>
                {% else %}
                  <div class=\"d-flex align-items-center gap-3 mb-2\">
                    <h2 class=\"text-success mb-0\">{{ special }}</h2>
                    <span class=\"badge bg-danger fs-6\">Sale</span>
                  </div>
                  <p class=\"text-body-secondary text-decoration-line-through mb-0\">{{ price }}</p>
                {% endif %}
                {% if tax %}
                  <small class=\"text-body-secondary d-block mt-2\">{{ text_tax }} {{ tax }}</small>
                {% endif %}
                {% if points %}
                  <small class=\"text-body-secondary d-block\">{{ text_points }} {{ points }}</small>
                {% endif %}
                {% if discounts %}
                  <hr class=\"my-3\">
                  <h6 class=\"mb-2\">Bulk Discounts:</h6>
                  <ul class=\"list-unstyled mb-0\">
                    {% for discount in discounts %}
                      <li class=\"small\">{{ discount.quantity }}{{ text_discount }}{{ discount.price }}</li>
                    {% endfor %}
                  </ul>
                {% endif %}
              </div>
            </div>
          {% endif %}

          {# Wishlist & Compare Buttons #}
          <form method=\"post\" data-oc-toggle=\"ajax\" class=\"mb-3\">
            <div class=\"btn-group shadow-sm\" role=\"group\">
              <button type=\"submit\" formaction=\"{{ wishlist_add }}\" data-bs-toggle=\"tooltip\" class=\"btn btn-outline-danger\" title=\"{{ button_wishlist }}\">
                <i class=\"fa-solid fa-heart\"></i>
                <span class=\"d-none d-lg-inline ms-2\">Wishlist</span>
              </button>
              <button type=\"submit\" formaction=\"{{ compare_add }}\" data-bs-toggle=\"tooltip\" class=\"btn btn-outline-secondary\" title=\"{{ button_compare }}\">
                <i class=\"fa-solid fa-arrow-right-arrow-left\"></i>
                <span class=\"d-none d-lg-inline ms-2\">Compare</span>
              </button>
            </div>
            <input type=\"hidden\" name=\"product_id\" value=\"{{ product_id }}\"/>
          </form>
          {# Product Options & Add to Cart Form #}
          <div id=\"product\">
            <form id=\"form-product\" class=\"card shadow-sm border-0\">
              <div class=\"card-body\">
                {% if options %}
                  <h5 class=\"card-title border-bottom pb-2 mb-3\">{{ text_option }}</h5>
                  <div>
                  {% for option in options %}

                    {% if option.type == 'select' %}
                      <div class=\"mb-3{% if option.required %} required{% endif %}\">
                        <label for=\"input-option-{{ option.product_option_id }}\" class=\"form-label\">{{ option.name }}</label>
                        <select name=\"option[{{ option.product_option_id }}]\" id=\"input-option-{{ option.product_option_id }}\" class=\"form-select\">
                          <option value=\"\">{{ text_select }}</option>
                          {% for option_value in option.product_option_value %}
                            <option value=\"{{ option_value.product_option_value_id }}\">{{ option_value.name }}
                              {% if option_value.price %}
                                ({{ option_value.price_prefix }}{{ option_value.price }})
                              {% endif %}</option>
                          {% endfor %}
                        </select>
                        <div id=\"error-option-{{ option.product_option_id }}\" class=\"invalid-feedback\"></div>
                      </div>
                    {% endif %}

                    {% if option.type == 'radio' %}
                      <div class=\"mb-3{% if option.required %} required{% endif %}\">
                        <label class=\"form-label\">{{ option.name }}</label>
                        <div id=\"input-option-{{ option.product_option_id }}\">
                          {% for option_value in option.product_option_value %}
                            <div class=\"form-check\">
                              <input type=\"radio\" name=\"option[{{ option.product_option_id }}]\" value=\"{{ option_value.product_option_value_id }}\" id=\"input-option-value-{{ option_value.product_option_value_id }}\" class=\"form-check-input\"/>
                              <label for=\"input-option-value-{{ option_value.product_option_value_id }}\" class=\"form-check-label\">
                                {% if option_value.image %}
                                  <img src=\"{{ option_value.image }}\" alt=\"{{ option_value.name }} {% if option_value.price %}{{ option_value.price_prefix }} {{ option_value.price }}{% endif %}\" class=\"img-thumbnail\"/>{% endif %}
                                {{ option_value.name }}
                                {% if option_value.price %}
                                  ({{ option_value.price_prefix }}{{ option_value.price }})
                                {% endif %}</label>
                            </div>
                          {% endfor %}
                        </div>
                        <div id=\"error-option-{{ option.product_option_id }}\" class=\"invalid-feedback\"></div>
                      </div>
                    {% endif %}

                    {% if option.type == 'checkbox' %}
                      <div class=\"mb-3{% if option.required %} required{% endif %}\">
                        <label class=\"form-label\">{{ option.name }}</label>
                        <div id=\"input-option-{{ option.product_option_id }}\">
                          {% for option_value in option.product_option_value %}
                            <div class=\"form-check\">
                              <input type=\"checkbox\" name=\"option[{{ option.product_option_id }}][]\" value=\"{{ option_value.product_option_value_id }}\" id=\"input-option-value-{{ option_value.product_option_value_id }}\" class=\"form-check-input\"/> 
\t\t\t\t\t\t\t                <label for=\"input-option-value-{{ option_value.product_option_value_id }}\" class=\"form-check-label\">
                                {% if option_value.image %}
                                  <img src=\"{{ option_value.image }}\" alt=\"{{ option_value.name }} {% if option_value.price %}{{ option_value.price_prefix }} {{ option_value.price }}{% endif %}\" class=\"img-thumbnail\"/>{% endif %}
                                {{ option_value.name }}
                                {% if option_value.price %}
                                  ({{ option_value.price_prefix }}{{ option_value.price }})
                                {% endif %}</label>
                            </div>
                          {% endfor %}
                        </div>
                        <div id=\"error-option-{{ option.product_option_id }}\" class=\"invalid-feedback\"></div>
                      </div>
                    {% endif %}

                    {% if option.type == 'text' %}
                      <div class=\"mb-3{% if option.required %} required{% endif %}\">
                        <label for=\"input-option-{{ option.product_option_id }}\" class=\"form-label\">{{ option.name }}</label> <input type=\"text\" name=\"option[{{ option.product_option_id }}]\" value=\"{{ option.value }}\" placeholder=\"{{ option.name }}\" id=\"input-option-{{ option.product_option_id }}\" class=\"form-control\"/>
                        <div id=\"error-option-{{ option.product_option_id }}\" class=\"invalid-feedback\"></div>
                      </div>
                    {% endif %}

                    {% if option.type == 'textarea' %}
                      <div class=\"mb-3{% if option.required %} required{% endif %}\">
                        <label for=\"input-option-{{ option.product_option_id }}\" class=\"form-label\">{{ option.name }}</label> <textarea name=\"option[{{ option.product_option_id }}]\" rows=\"5\" placeholder=\"{{ option.name }}\" id=\"input-option-{{ option.product_option_id }}\" class=\"form-control\">{{ option.value }}</textarea>
                        <div id=\"error-option-{{ option.product_option_id }}\" class=\"invalid-feedback\"></div>
                      </div>
                    {% endif %}

                    {% if option.type == 'file' %}
                      <div class=\"mb-3{% if option.required %} required{% endif %}\">
                        <label for=\"button-upload-{{ option.product_option_id }}\" class=\"form-label\">{{ option.name }}</label>
                        <div>
                          <button type=\"button\" id=\"button-upload-{{ option.product_option_id }}\" data-oc-toggle=\"upload\" data-oc-url=\"{{ upload }}\" data-oc-target=\"#input-option-{{ option.product_option_id }}\" data-oc-size-max=\"{{ config_file_max_size }}\" data-oc-size-error=\"{{ error_upload_size }}\" class=\"btn btn-outline-secondary w-100\"><i class=\"fa-solid fa-upload\"></i> {{ button_upload }}</button>
                          <input type=\"hidden\" name=\"option[{{ option.product_option_id }}]\" value=\"\" id=\"input-option-{{ option.product_option_id }}\"/>
                        </div>
                        <div id=\"error-option-{{ option.product_option_id }}\" class=\"invalid-feedback\"></div>
                      </div>
                    {% endif %}

                    {% if option.type == 'date' %}
                      <div class=\"mb-3{% if option.required %} required{% endif %}\">
                        <label for=\"input-option-{{ option.product_option_id }}\" class=\"form-label\">{{ option.name }}</label>
                        <input type=\"date\" name=\"option[{{ option.product_option_id }}]\" value=\"{{ option.value }}\" id=\"input-option-{{ option.product_option_id }}\" class=\"form-control\"/>
                        <div id=\"error-option-{{ option.product_option_id }}\" class=\"invalid-feedback\"></div>
                      </div>
                    {% endif %}

                    {% if option.type == 'time' %}
                      <div class=\"mb-3{% if option.required %} required{% endif %}\">
                        <label for=\"input-option-{{ option.product_option_id }}\" class=\"form-label\">{{ option.name }}</label>
                        <input type=\"time\" name=\"option[{{ option.product_option_id }}]\" value=\"{{ option.value }}\" id=\"input-option-{{ option.product_option_id }}\" class=\"form-control\"/>
                        <div id=\"error-option-{{ option.product_option_id }}\" class=\"invalid-feedback\"></div>
                      </div>
                    {% endif %}

                    {% if option.type == 'datetime' %}
                      <div class=\"mb-3{% if option.required %} required{% endif %}\">
                        <label for=\"input-option-{{ option.product_option_id }}\" class=\"form-label\">{{ option.name }}</label>
                        <input type=\"datetime-local\" name=\"option[{{ option.product_option_id }}]\" value=\"{{ option.value }}\" id=\"input-option-{{ option.product_option_id }}\" class=\"form-control\"/>
                        <div id=\"error-option-{{ option.product_option_id }}\" class=\"invalid-feedback\"></div>
                      </div>
                    {% endif %}
                  {% endfor %}
                </div>
              {% endif %}

              {% if subscription_plans %}
                  <h5 class=\"card-title border-bottom pb-2 mb-3 mt-4\">{{ text_subscription }}</h5>
                  <div class=\"mb-3 required\">
                    <select name=\"subscription_plan_id\" id=\"input-subscription\" class=\"form-select form-select-lg shadow-sm\">
                      <option value=\"\">{{ text_select }}</option>
                      {% for subscription_plan in subscription_plans %}
                        <option value=\"{{ subscription_plan.subscription_plan_id }}\">{{ subscription_plan.name }}</option>
                      {% endfor %}
                    </select>
                    {% for subscription_plan in subscription_plans %}
                      <div id=\"subscription-description-{{ subscription_plan.subscription_plan_id }}\" class=\"form-text subscription d-none\">{{ subscription_plan.description }}</div>
                    {% endfor %}
                    <div id=\"error-subscription\" class=\"invalid-feedback\"></div>
                  </div>
              {% endif %}

              {# Quantity & Add to Cart #}
              <div class=\"mb-3\">
                <div class=\"input-group input-group-lg shadow-sm\">
                  <span class=\"input-group-text\">{{ entry_qty }}</span>
                  <input type=\"text\" name=\"quantity\" value=\"{{ minimum }}\" size=\"2\" id=\"input-quantity\" class=\"form-control text-center\" style=\"max-width: 100px;\"/>
                  <button type=\"submit\" id=\"button-cart\" class=\"btn btn-primary flex-grow-1\">
                    <i class=\"fa-solid fa-cart-shopping\"></i>
                    <span class=\"ms-2\">{{ button_cart }}</span>
                  </button>
                </div>
                <input type=\"hidden\" name=\"product_id\" value=\"{{ product_id }}\" id=\"input-product-id\"/>
                <div id=\"error-quantity\" class=\"form-text\"></div>
              </div>

              {% if minimum > 1 %}
                <div class=\"alert alert-warning border-0 shadow-sm\">
                  <i class=\"fa-solid fa-circle-info me-2\"></i>{{ text_minimum }}
                </div>
              {% endif %}
              </div>
            </form>
          </div>
        </div>
      </div>
      {# Product Information Tabs #}
      <div class=\"card border-0 shadow-sm mt-4\">
        <div class=\"card-header\">
          <ul class=\"nav nav-tabs card-header-tabs\">
            <li class=\"nav-item\">
              <a href=\"#tab-description\" data-bs-toggle=\"tab\" class=\"nav-link active\">
                <i class=\"fa-solid fa-file-lines me-2\"></i>{{ tab_description }}
              </a>
            </li>
            {% if attribute_groups %}
              <li class=\"nav-item\">
                <a href=\"#tab-specification\" data-bs-toggle=\"tab\" class=\"nav-link\">
                  <i class=\"fa-solid fa-list-check me-2\"></i>{{ tab_attribute }}
                </a>
              </li>
            {% endif %}
            {% if review_status %}
              <li class=\"nav-item\">
                <a href=\"#tab-review\" data-bs-toggle=\"tab\" class=\"nav-link\">
                  <i class=\"fa-solid fa-star me-2\"></i>{{ tab_review }}
                </a>
              </li>
            {% endif %}
          </ul>
        </div>
        <div class=\"card-body\">
          <div class=\"tab-content\">
            {# Description Tab #}
            <div id=\"tab-description\" class=\"tab-pane fade show active\">
              {{ description }}
              {% if tags %}
                <div class=\"mt-4\">
                  <h6 class=\"mb-2\">{{ text_tags }}</h6>
                  <div class=\"d-flex gap-2 flex-wrap\">
                    {% for tag in tags %}
                      <a href=\"{{ tag.href }}\" class=\"badge bg-secondary text-decoration-none\">
                        <i class=\"fa-solid fa-tag fa-xs\"></i> {{ tag.tag }}
                      </a>
                    {% endfor %}
                  </div>
                </div>
              {% endif %}
            </div>

            {# Specifications Tab #}
            {% if attribute_groups %}
              <div id=\"tab-specification\" class=\"tab-pane fade\">
                <div class=\"table-responsive\">
                  <table class=\"table table-hover table-striped\">
                    {% for attribute_group in attribute_groups %}
                      <thead>
                        <tr>
                          <th colspan=\"2\" class=\"fs-5\">{{ attribute_group.name }}</th>
                        </tr>
                      </thead>
                      <tbody>
                        {% for attribute in attribute_group.attribute %}
                          <tr>
                            <td class=\"fw-semibold\" style=\"width: 30%;\">{{ attribute.name }}</td>
                            <td>{{ attribute.text }}</td>
                          </tr>
                        {% endfor %}
                      </tbody>
                    {% endfor %}
                  </table>
                </div>
              </div>
            {% endif %}

            {# Reviews Tab #}
            {% if review_status %}
              <div id=\"tab-review\" class=\"tab-pane fade\">
                {{ review }}
              </div>
            {% endif %}
          </div>
        </div>
      </div>
      {{ related }}
      {{ content_bottom }}
    </div>
    {{ column_right }}
  </div>
</div>
<script type=\"text/javascript\"><!--
\$('#input-subscription').on('change', function(e) {
    var element = this;

    \$('.subscription').addClass('d-none');

    \$('#subscription-description-' + \$(element).val()).removeClass('d-none');
});

\$('#form-product').on('submit', function(e) {
    e.preventDefault();

    \$.ajax({
        url: 'index.php?route=checkout/cart.add&language={{ language }}',
        type: 'post',
        data: \$('#form-product').serialize(),
        dataType: 'json',
        contentType: 'application/x-www-form-urlencoded',
        cache: false,
        processData: false,
        beforeSend: function() {
            \$('#button-cart').button('loading');
        },
        complete: function() {
            \$('#button-cart').button('reset');
        },
        success: function(json) {
            console.log(json);

            \$('#form-product').find('.is-invalid').removeClass('is-invalid');
            \$('#form-product').find('.invalid-feedback').removeClass('d-block');

            if (json['error']) {
                for (key in json['error']) {
                    \$('#input-' + key.replaceAll('_', '-')).addClass('is-invalid').find('.form-control, .form-select, .form-check-input, .form-check-label').addClass('is-invalid');
                    \$('#error-' + key.replaceAll('_', '-')).html(json['error'][key]).addClass('d-block');
                }
            }

            if (json['success']) {
                \$('#alert').prepend('<div class=\"alert alert-success alert-dismissible\"><i class=\"fa-solid fa-circle-check\"></i> ' + json['success'] + ' <button type=\"button\" class=\"btn-close\" data-bs-dismiss=\"alert\"></button></div>');

                \$('#cart').load('index.php?route=common/cart.info&language={{ language }}');
            }
        },
        error: function(xhr, ajaxOptions, thrownError) {
            console.log(thrownError + \"\\r\\n\" + xhr.statusText + \"\\r\\n\" + xhr.responseText);
        }
    });
});

\$(document).ready(function() {
    \$('.magnific-popup').magnificPopup({
        type: 'image',
        delegate: 'a',
        gallery: {
            enabled: true
        }
    });
});
//--></script>
{{ footer }}
", "catalog/view/template/product/product.twig", "/var/www/html/catalog/view/template/product/product.twig");
    }
}
