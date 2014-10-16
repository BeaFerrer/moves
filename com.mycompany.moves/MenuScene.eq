
/*
 * MenuScene
 * Created by Eqela Studio 2.0b7.4
 */

public class MenuScene : SEScene
{

	SESprite startbut;
	SESprite bg1;
	int w;
	int h;
	int wsb;
	int hsb;
		
	public void initialize(SEResourceCache rsc) {

		base.initialize(rsc);
		add_sprite_for_color(Color.instance("white"), get_scene_width(), get_scene_height());
		
		w = get_scene_width();
		h = get_scene_height();

		rsc.prepare_image("bg1","bg1",w ,h);
		bg1 = add_sprite_for_image(SEImage.for_resource("bg1"));
		bg1.move(0,0);

		rsc.prepare_image("startbut","startbut",0.25* get_scene_width(),0.25* get_scene_height());
		startbut = add_sprite_for_image(SEImage.for_resource("startbut"));

		wsb = startbut.get_width();
		hsb = startbut.get_height();
		
		startbut.move(0.5*w-0.5*wsb,0.5*h-0.5*hsb);
	
	}

	public void on_pointer_press(SEPointerInfo pi) {

		if(pi.is_inside(0.25* get_scene_width(),0.25*get_scene_height(),0.5*w,0.5*h)){
			base.on_pointer_press(pi);	
			switch_scene(new MainScene());
				
		}
	}
		
}
