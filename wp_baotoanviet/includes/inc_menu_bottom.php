<div class="con_menu_bottom view_pc">
	<div class="box_menu_bottom">
		<?php
		// Query categories parent //
		$categories = get_categories( array(
			'post_type' => 'product',
		    'orderby' => 'name',
		    'parent'  => 0,
		    'hide_empty' =>0
		) );
		?>
		<?php
		foreach ( $categories as $category ) {  // START-foreach categories parent0
			echo '<div class="box">';
			printf( '<h3 class="st_fsz18">%2$s</h3>',
			    esc_url( get_category_link( $category->term_id ) ),
			    esc_html( $category->name )
			);
			$id_cat_parent0 = $category->cat_ID;// ID categories parent0

			// Query categories parent-sub //
			$categoriesSub = get_categories( array(
				'post_type' => 'product',
			    'orderby' => 'name',
			    'parent'  => $id_cat_parent0,
			    'hide_empty' =>0
			) );
			echo '<ul>';
			foreach ( $categoriesSub as $categorySub ) { // START-foreach categoriesSUB
					$name_cat_parentSub = $categorySub->name; // ID categoriesSub
					echo '<li><a href="'.get_category_link( $categorySub->cat_ID ).'"><i class="fa fa-circle" aria-hidden="true"></i>'.$name_cat_parentSub.'</a></li>';
			}
			echo '</ul>';
			echo '</div>';
		} // END-foreach categories parent0
			?>
	</div>
</div>