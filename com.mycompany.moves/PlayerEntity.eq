
/*
 * PlayerEntity
 * Created by Eqela Studio 2.0b7.4
 */

public class PlayerEntity : SEEntity
{
	SESprite pokemon;
	int w;
	int h;
	int wp;
	int hp;
	
	public void initialize(SEResourceCache rsc) {
		base.initialize(rsc);
		w = get_scene_width();
		h = get_scene_height();
		rsc.prepare_image("pokemon","pokemon", 0.1*w, 0.1*h);
		pokemon = add_sprite_for_image(SEImage.for_resource("pokemon"));

		wp = pokemon.get_width();
		hp = pokemon.get_height();
			
		pokemon.move(0.5*w-0.5*wp,0.5*h-0.5*hp);
		
	}


	public void tick(TimeVal now, double delta) {
		base.tick(now, delta);
		pokemon.move(MainScene.x, MainScene.y);
	}

}
