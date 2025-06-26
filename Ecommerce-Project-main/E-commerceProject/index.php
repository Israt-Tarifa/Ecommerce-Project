<?php include 'config.php';  //include config
// set dynamic title
$db = new Database();
$db->select('options','site_title',null,null,null,null);
$result = $db->getResult();

if(!empty($result)){ 
    $title = $result[0]['site_title']; 
}else{ 
    $title = "Shoppeeeeeing Project";
}
// include header 
include 'header.php'; ?>
<div id="banner">
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-12">
                <div class="banner-content ">
                    <div class="banner-carousel owl-carousel owl-theme">
                        <div class="item">
                            <img src="images/banner-img-3.jpg" alt=""/>
                        </div>
                        <div class="item">
                            <img src="images/banner-img-1.jpg" alt=""/>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<div class="product-section popular-products">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
               
                
                <h1 class="text-center" style="color: rgba(7, 7, 109, 0.753);">All Products</h1>
                <h5 class="text-center ">Our list on all featured products</h5>
                <hr>
              
                <div class="popular-carousel owl-carousel owl-theme">
                    <?php
                      
                        $db->select('products','*',null,'product_status = 1 AND qty > 0','product_id',8);
                        $result = $db->getResult();
                        if(count($result) > 0){
                            foreach($result as $row){ ?>
                    <div class="product-grid latest item">
                        <div class="product-image popular">
                            <a class="image" href="single_product.php?pid=<?php echo $row['product_id']; ?>">
                                <img class="pic-1" src="product-images/<?php echo $row['featured_image']; ?>">
                            </a>
                            <div class="product-button-group">
                                <a href="single_product.php?pid=<?php echo $row['product_id']; ?>" ><i class="fa fa-eye"></i></a>
                                <a href="" class="add-to-cart" data-id="<?php echo $row['product_id']; ?>"><i class="fa fa-shopping-cart"></i></a>
                                <a href="" class="add-to-wishlist" data-id="<?php echo $row['product_id']; ?>"><i class="fa fa-heart"></i></a>
                            </div>
                        </div>
                        <div class="product-content">
                            <h3 class="title">
                                <a href="single_product.php?pid=<?php echo $row['product_id']; ?>"><?php echo substr($row['product_title'],0,25),'...'; ?></a>
                            </h3>
                            <div class="price"><?php echo "৳" ?> <?php echo $row['product_price']; ?></div>
                        </div>
                    </div>
                    <?php    }
                    }else{
                } ?>
                </div>
            </div>
        </div>
    </div>
</div>


<div class="product-section popular-products">
    <div class="container">
        <div class="row">
            <div class="col-md-12 ">
            
                <h1 class="text-center"  style="color: rgba(7, 7, 109, 0.753);">Trending Products</h1>
                <h5 class="text-center ">Popular products based on customer's choice</h5>
                <hr>
              
               
                <div class="popular-carousel owl-carousel owl-theme">
                    <?php
                  
                        $db->select('products','*',null,'product_views > 0 AND product_status = 1 AND qty > 0','product_views DESC',8);
                        $result = $db->getResult();
                        if(count($result) > 0){
                            foreach($result as $row){ ?>
                    <div class="product-grid latest item">
                        <div class="product-image popular">
                            <a class="image" href="single_product.php?pid=<?php echo $row['product_id']; ?>">
                                <img class="pic-1" src="product-images/<?php echo $row['featured_image']; ?>">
                            </a>
                            <div class="product-button-group">
                                <a href="single_product.php?pid=<?php echo $row['product_id']; ?>" ><i class="fa fa-eye"></i></a>
                                <a href="" class="add-to-cart" data-id="<?php echo $row['product_id']; ?>"><i class="fa fa-shopping-cart"></i></a>
                                <a href="" class="add-to-wishlist" data-id="<?php echo $row['product_id']; ?>"><i class="fa fa-heart"></i></a>
                            </div>
                        </div>
                        <div class="product-content">
                            <h3 class="title">
                                <a href="single_product.php?pid=<?php echo $row['product_id']; ?>"><?php echo substr($row['product_title'],0,25),'...'; ?></a>
                            </h3>
                            <div class="price"><?php echo "৳" ?> <?php echo $row['product_price']; ?></div>
                        </div>
                    </div>
                    <?php    }
                    }else{
                } ?>
                </div>
            </div>
        </div>
    </div>
</div>
<div class="product-section">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
               
                <h1 class="text-center"  style="color: rgba(7, 7, 109, 0.753);">Latest Products</h1>
                <h5 class="text-center ">Our list of recently added products</h5>
                <hr>
                <div class="latest-carousel owl-carousel owl-theme">
                    <?php
            $db = new Database();
            $db->select('products','*',null,null,'product_id DESC',4);
            
            $result = $db->getResult();
            if(count($result) > 0){
                foreach($result as $row){ ?>
                    <div class="product-grid latest item">
                        <div class="product-image popular">
                            <a class="image" href="single_product.php?pid=<?php echo $row['product_id']; ?>">
                                <img class="pic-1" src="product-images/<?php echo $row['featured_image']; ?>">
                            </a>
                            <div class="product-button-group">
                                <a href="single_product.php?pid=<?php echo $row['product_id']; ?>" ><i class="fa fa-eye"></i></a>
                                <a href="" class="add-to-cart" data-id="<?php echo $row['product_id']; ?>"><i class="fa fa-shopping-cart"></i></a>
                                <a href="" class="add-to-wishlist" data-id="<?php echo $row['product_id']; ?>"><i class="fa fa-heart"></i></a>
                            </div>
                        </div>
                        <div class="product-content">
                            <h3 class="title">
                                <a href="single_product.php?pid=<?php echo $row['product_id']; ?>"><?php echo substr($row['product_title'],0,25),'...'; ?></a>
                            </h3>
                            <div class="price"><?php echo"৳"; ?> <?php echo $row['product_price']; ?></div>
                        </div>
                    </div>
        <?php    }
            }
            ?>
                </div>
            </div>
        </div>
    </div>
</div>


<hr>

<div class="product-section">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
               
                <h1 class="text-center"  style="color: rgba(7, 7, 109, 0.753);">Provided Services </h1>
                
<hr>
        
                <div class="row">
            <?php

                
                
                
                $db->select('tbl_service','*',null,null,null,null);
                $result = $db->getResult();

                foreach ($result as $row) {
                    ?>
                    <div class="col-md-3 p-auto m-auto">
                        <div class="item">
                            <div class="photo"><img src="assets/uploads/<?php echo $row['photo']; ?>" width="150px" alt="<?php echo $row['title']; ?>"></div>
                            <h3><?php echo $row['title']; ?></h3>
                            <p>
                                <?php echo nl2br($row['content']); ?>
                            </p>
                        </div>
                    </div>
                    <?php
                }
            ?>
        </div>
            </div>
        </div>
    </div>
</div>



<hr>


<?php include 'footer.php'; ?>