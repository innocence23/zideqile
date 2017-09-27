@extends('layouts.front')

@section('html_title', '产品详情')

@section('main-content')
    <div class="main main-raised main-product">
        <div class="container">
            <div class="row">
            <div class="col-md-6 col-sm-6">
                此处放轮播图
            </div>
            <div class="col-md-6 col-sm-6">
                <h2 class="title"> Becky Silk Blazer </h2>
                <h3 class="main-price">$335</h3>
                <div id="acordeon">
                    <div class="panel-group" id="accordion">
                        <div class="panel panel-border panel-default">
                            <div class="panel-heading" role="tab" id="headingOne">
                                <a role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
                                    <h4 class="panel-title">
                                        Description
                                        <i class="material-icons">keyboard_arrow_down</i>
                                    </h4>
                                </a>
                            </div>
                            <div id="collapseOne" class="panel-collapse collapse in">
                                <div class="panel-body">
                                    <p>Eres' daring 'Grigri Fortune' swimsuit has the fit and coverage of a bikini in a one-piece silhouette. This fuchsia style is crafted from the label's sculpting peau douce fabric and has flattering cutouts through the torso and back. Wear yours with mirrored sunglasses on vacation.</p>
                                </div>
                            </div>
                        </div>
                        <div class="panel panel-border panel-default">
                            <div class="panel-heading" role="tab" id="headingOne">
                                <a role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseTwo" aria-controls="collapseOne">
                                    <h4 class="panel-title">
                                        Designer Information
                                        <i class="material-icons">keyboard_arrow_down</i>
                                    </h4>
                                </a>
                            </div>
                            <div id="collapseTwo" class="panel-collapse collapse">
                                <div class="panel-body">
                                    An infusion of West Coast cool and New York attitude, Rebecca Minkoff is synonymous with It girl style. Minkoff burst on the fashion scene with her best-selling 'Morning After Bag' and later expanded her offering with the Rebecca Minkoff Collection - a range of luxe city staples with a "downtown romantic" theme.
                                </div>
                            </div>
                        </div>
                        <div class="panel panel-border panel-default">
                            <div class="panel-heading" role="tab" id="headingOne">
                                <a role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseThree" aria-controls="collapseOne">
                                    <h4 class="panel-title">
                                        Details and Care
                                        <i class="material-icons">keyboard_arrow_down</i>
                                    </h4>
                                </a>
                            </div>
                            <div id="collapseThree" class="panel-collapse collapse">
                                <div class="panel-body">
                                    <ul>
                                        <li>Storm and midnight-blue stretch cotton-blend</li>
                                        <li>Notch lapels, functioning buttoned cuffs, two front flap pockets, single vent, internal pocket</li>
                                        <li>Two button fastening</li>
                                        <li>84% cotton, 14% nylon, 2% elastane</li>
                                        <li>Dry clean</li>
                                    </ul>
                                </div>
                            </div>
                        </div>

                    </div>
                </div><!--  end acordeon -->

                <div class="row pick-size">
                    <div class="col-md-6 col-sm-6">
                        <label>Select color</label>
                        <div class="btn-group bootstrap-select"><button type="button" class="btn dropdown-toggle select-with-transition" data-toggle="dropdown" role="button" title="Rose" aria-expanded="false"><span class="filter-option pull-left">Rose </span>&nbsp;<span class="bs-caret"><span class="caret"></span></span><div class="ripple-container"><div class="ripple ripple-on ripple-out" style="left: 724px; top: 817px; background-color: rgb(255, 255, 255); transform: scale(24.0625);"></div><div class="ripple ripple-on ripple-out" style="left: 724px; top: 817px; background-color: rgb(255, 255, 255); transform: scale(24.0625);"></div></div></button><div class="dropdown-menu open" role="combobox"><ul class="dropdown-menu inner" role="listbox" aria-expanded="false"><li data-original-index="0" class="selected"><a tabindex="0" class="" data-tokens="null" role="option" aria-disabled="false" aria-selected="true"><span class="text">Rose </span><span class="material-icons  check-mark"> done </span></a></li><li data-original-index="1"><a tabindex="0" class="" data-tokens="null" role="option" aria-disabled="false" aria-selected="false"><span class="text">Gray</span><span class="material-icons  check-mark"> done </span></a></li><li data-original-index="2"><a tabindex="0" class="" data-tokens="null" role="option" aria-disabled="false" aria-selected="false"><span class="text">White</span><span class="material-icons  check-mark"> done </span></a></li></ul></div><select class="selectpicker" data-style="select-with-transition" data-size="7" tabindex="-98">
                                <option value="1">Rose </option>
                                <option value="2">Gray</option>
                                <option value="3">White</option>
                            </select></div>
                    </div>
                    <div class="col-md-6 col-sm-6">
                        <label>Select size</label>
                        <div class="btn-group bootstrap-select"><button type="button" class="btn dropdown-toggle select-with-transition" data-toggle="dropdown" role="button" title="Small"><span class="filter-option pull-left">Small </span>&nbsp;<span class="bs-caret"><span class="caret"></span></span></button><div class="dropdown-menu open" role="combobox"><ul class="dropdown-menu inner" role="listbox" aria-expanded="false"><li data-original-index="0" class="selected"><a tabindex="0" class="" data-tokens="null" role="option" aria-disabled="false" aria-selected="true"><span class="text">Small </span><span class="material-icons  check-mark"> done </span></a></li><li data-original-index="1"><a tabindex="0" class="" data-tokens="null" role="option" aria-disabled="false" aria-selected="false"><span class="text">Medium</span><span class="material-icons  check-mark"> done </span></a></li><li data-original-index="2"><a tabindex="0" class="" data-tokens="null" role="option" aria-disabled="false" aria-selected="false"><span class="text">Large</span><span class="material-icons  check-mark"> done </span></a></li></ul></div><select class="selectpicker" data-style="select-with-transition" data-size="7" tabindex="-98">
                                <option value="1">Small </option>
                                <option value="2">Medium</option>
                                <option value="3">Large</option>
                            </select></div>
                    </div>
                </div>
                <div class="row text-right">
                    <button class="btn btn-rose btn-round">Add to Cart &nbsp;<i class="material-icons">shopping_cart</i></button>
                </div>
            </div>
        </div>
        </div>
    </div>

    <div class="container">
        <div class="features text-center">
            <div class="row">
                <div class="col-md-4">
                    <div class="info">
                        <div class="icon icon-info">
                            <i class="material-icons">local_shipping</i>
                        </div>
                        <h4 class="info-title">2 Days Delivery </h4>
                        <p>Divide details about your product or agency work into parts. Write a few lines about each one. A paragraph describing a feature will be enough.</p>
                    </div>
                </div>

                <div class="col-md-4">
                    <div class="info">
                        <div class="icon icon-success">
                            <i class="material-icons">verified_user</i>
                        </div>
                        <h4 class="info-title">Refundable Policy</h4>
                        <p>Divide details about your product or agency work into parts. Write a few lines about each one. A paragraph describing a feature will be enough.</p>
                    </div>
                </div>

                <div class="col-md-4">
                    <div class="info">
                        <div class="icon icon-rose">
                            <i class="material-icons">favorite</i>
                        </div>
                        <h4 class="info-title">Popular Item</h4>
                        <p>Divide details about your product or agency work into parts. Write a few lines about each one. A paragraph describing a feature will be enough.</p>
                    </div>
                </div>

            </div>
        </div>
        <div class="related-products">
                <h3 class="title text-center">You may also be interested in:</h3>

                <div class="row">
                    <div class="col-sm-6 col-md-3">
                        <div class="card card-product">
                            <div class="card-image">
                                <a href="#pablo">
                                    <img class="img" src="../assets/img/examples/card-product1.jpg">
                                </a>
                                <div class="colored-shadow" style="background-image: url(&quot;../assets/img/examples/card-product1.jpg&quot;); opacity: 1;"></div></div>

                            <div class="card-content">
                                <h6 class="category text-rose">Trending</h6>
                                <h4 class="card-title">
                                    <a href="#pablo">Dolce &amp; Gabbana</a>
                                </h4>
                                <div class="card-description">
                                    Dolce &amp; Gabbana's 'Greta' tote has been crafted in Italy from hard-wearing red textured-leather.
                                </div>
                                <div class="footer">
                                    <div class="price">
                                        <h4>$1,459</h4>
                                    </div>
                                    <div class="stats">
                                        <button type="button" rel="tooltip" title="" class="btn btn-just-icon btn-simple btn-rose" data-original-title="Saved to Wishlist">
                                            <i class="material-icons">favorite</i>
                                        </button>
                                    </div>
                                </div>

                            </div>

                        </div>
                    </div>

                    <div class="col-sm-6 col-md-3">
                        <div class="card card-product">
                            <div class="card-image">
                                <a href="#pablo">
                                    <img class="img" src="../assets/img/examples/card-product3.jpg">
                                </a>
                                <div class="colored-shadow" style="background-image: url(&quot;../assets/img/examples/card-product3.jpg&quot;); opacity: 1;"></div></div>

                            <div class="card-content">
                                <h6 class="category text-muted">Popular</h6>
                                <h4 class="card-title">
                                    <a href="#pablo">Balmain</a>
                                </h4>
                                <div class="card-description">
                                    Balmain's mid-rise skinny jeans are cut with stretch to ensure they retain their second-skin fit but move comfortably.
                                </div>
                                <div class="footer">
                                    <div class="price">
                                        <h4>$459</h4>
                                    </div>
                                    <div class="stats">
                                        <button type="button" rel="tooltip" title="" class="btn btn-just-icon btn-simple btn-default" data-original-title="Save to Wishlist">
                                            <i class="material-icons">favorite</i>
                                        </button>
                                    </div>
                                </div>

                            </div>

                        </div>
                    </div>

                    <div class="col-sm-6 col-md-3">
                        <div class="card card-product">
                            <div class="card-image">
                                <a href="#pablo">
                                    <img class="img" src="../assets/img/examples/card-product4.jpg">
                                </a>
                                <div class="colored-shadow" style="background-image: url(&quot;../assets/img/examples/card-product4.jpg&quot;); opacity: 1;"></div></div>

                            <div class="card-content">
                                <h6 class="category text-muted">Popular</h6>
                                <h4 class="card-title">
                                    <a href="#pablo">Balenciaga</a>
                                </h4>
                                <div class="card-description">
                                    Balenciaga's black textured-leather wallet is finished with the label's iconic 'Giant' studs. This is where you can...
                                </div>
                                <div class="footer">
                                    <div class="price">
                                        <h4>$590</h4>
                                    </div>
                                    <div class="stats">
                                        <button type="button" rel="tooltip" title="" class="btn btn-just-icon btn-simple btn-rose" data-original-title="Saved to Wishlist">
                                            <i class="material-icons">favorite</i>
                                        </button>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="col-sm-6 col-md-3">
                        <div class="card card-product">
                            <div class="card-image">
                                <a href="#pablo">
                                    <img class="img" src="../assets/img/examples/card-product2.jpg">
                                </a>
                                <div class="colored-shadow" style="background-image: url(&quot;../assets/img/examples/card-product2.jpg&quot;); opacity: 1;"></div></div>

                            <div class="card-content">
                                <h6 class="category text-rose">Trending</h6>
                                <h4 class="card-title">
                                    <a href="#pablo">Dolce &amp; Gabbana</a>
                                </h4>
                                <div class="card-description">
                                    Dolce &amp; Gabbana's 'Greta' tote has been crafted in Italy from hard-wearing red textured-leather.
                                </div>
                                <div class="footer">
                                    <div class="price">
                                        <h4>$1,459</h4>
                                    </div>
                                    <div class="stats">
                                        <button type="button" rel="tooltip" title="" class="btn btn-just-icon btn-simple btn-default" data-original-title="Save to Wishlist">
                                            <i class="material-icons">favorite</i>
                                        </button>
                                    </div>
                                </div>

                            </div>

                        </div>
                    </div>

                </div>
            </div>
    </div>
@endsection