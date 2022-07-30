<?php get_header(); ?>
<div class="sec-02">
<?php 
$id=2; 
$post = get_post($id); 
$content = apply_filters('the_content', $post->post_content); 
echo '<h2>'.$content.'</h2>';  
?>
<div class="secslider">

    <?php 
    $images = get_field('slider');
    if( $images ): ?>
        <ul class="sec-02_slick_content">
            <?php foreach( $images as $image ): ?>
                <li>
                    <a href="<?php echo esc_url($image['url']); ?>">
                        <img src="<?php echo esc_url($image['sizes']['large']); ?>" alt="<?php echo esc_attr($image['alt']); ?>" />
                    </a>
                    <p><?php echo esc_html($image['caption']); ?></p>
                </li>
            <?php endforeach; ?>
        </ul>
    <?php endif; ?>
</div>
</div>
<div class="section">

<?php 
$id=14; 
$post = get_post($id); 
$content = apply_filters('the_content', $post->post_content); 
echo '<div class="section_title">'.$content.'</div>';  
?>
    <div class="section_ctn">
    <?php echo get_the_post_thumbnail($post) ?>
    </div>

</div>
<?php get_footer(); ?>