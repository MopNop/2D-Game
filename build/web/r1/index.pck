GDPC                @                                                                         P   res://.godot/exported/133200997/export-1c5157a9109deb717545753fd701bc1d-flag.scn              ���cn�F��ם�p    T   res://.godot/exported/133200997/export-575a8ac25bfb8591c58884926b652301-level_1.scn @
      �      +G�B���p�?8�    T   res://.godot/exported/133200997/export-cafe0ce219e229723c67d801606bac04-player.scn               ��;
��ƙk�3�    ,   res://.godot/global_script_class_cache.cfg  �$             ��Р�8���8~$}P�    D   res://.godot/imported/icon.svg-218a8f2b3041327d8a5756f3a245f83b.ctex�      �      �̛�*$q�*�́        res://.godot/uid_cache.bin  `(      -      0��g��f��2w�       res://icon.svg  �$      �      C��=U���^Qu��U3       res://icon.svg.import   `"      �       7��f���#to���?�2       res://project.binary�)            c��_$|Ŧ�+�2    $   res://scenes/assets/flag.tscn.remap 0#      a       ҃j�����p@�����    (   res://scenes/assets/player.tscn.remap   �#      c       
p�?y�9$r�6:G��    ,   res://scenes/chapters/1/level_1.tscn.remap  $      d       �pE=�����&       res://scripts/flag.gd   �      m       u�y$�C�!Iû���T       res://scripts/global.gd @      �      ��L\.��z��?䴠�       res://scripts/player.gd �      �      ���o���x�+֟+D�        RSRC                    PackedScene            ��������                                                  resource_local_to_scene    resource_name    custom_solver_bias    size    script    interpolation_mode    interpolation_color_space    offsets    colors 	   gradient    width    use_hdr 	   _bundled       Script    res://scripts/flag.gd ��������      local://RectangleShape2D_xgj1r          local://Gradient_fvh2k G          local://GradientTexture1D_fdq1k �         local://PackedScene_cxg3l �         RectangleShape2D       
     ~C �C      	   Gradient       !             $        �?  �?  �?  �?         GradientTexture1D    	                     PackedScene          	         names "   
      Flag    script    Area2D    CollisionShape2D    shape 	   Sprite2D    scale    texture    _on_body_entered    body_entered    	   variants                           
     �? �C               node_count             nodes        ��������       ����                            ����                           ����                         conn_count             conns                	                       node_paths              editable_instances              version             RSRC        RSRC                    PackedScene            ��������                                                  resource_local_to_scene    resource_name    interpolation_mode    interpolation_color_space    offsets    colors    script 	   gradient    width    height    use_hdr    fill 
   fill_from    fill_to    repeat    custom_solver_bias    size 	   _bundled       Script    res://scripts/player.gd ��������      local://Gradient_xyr45 Q          local://GradientTexture2D_psw3o �         local://RectangleShape2D_onguq �         local://PackedScene_onxct       	   Gradient       !      ��>   $        �?  �?  �?  �?         GradientTexture2D                       K   	      K            RectangleShape2D       
     �B  �B         PackedScene          	         names "         player    script    CharacterBody2D    texture 	   Sprite2D    CollisionShape2D    shape    	   variants                                         node_count             nodes        ��������       ����                             ����                           ����                   conn_count              conns               node_paths              editable_instances              version             RSRC          RSRC                    PackedScene            ��������                                                  resource_local_to_scene    resource_name    custom_solver_bias    size    script    interpolation_mode    interpolation_color_space    offsets    colors 	   gradient    width    height    use_hdr    fill 
   fill_from    fill_to    repeat 	   _bundled       PackedScene     res://scenes/assets/player.tscn �l���D+   PackedScene    res://scenes/assets/flag.tscn Yr:�֦V/      local://RectangleShape2D_rtcxm �         local://Gradient_a7704 �          local://GradientTexture2D_paejr          local://PackedScene_f1ykx @         RectangleShape2D       
   ��Cn�tB      	   Gradient       !             $          �[?      �?         GradientTexture2D    	                     PackedScene          	         names "         Node2D    player 	   position 	   Camera2D    StaticBody2D    scale    CollisionShape2D    shape 	   Sprite2D    texture    Flag    	   variants                 
     �B  >D
         f�
    �D @�D
   �0B@��
   ��?To�?          
   i�?    
   �@  �?                  
     �C  BD      node_count             nodes     E   ��������        ����                ���                                 ����                           ����                                ����                                ����               	   	               ���
   
                      conn_count              conns               node_paths              editable_instances              version             RSRC             extends Area2D


func _on_body_entered(body:Node2D):
    if body.name == "player":
        Global.nextlevel()   extends Node



# Level Management
var level = 1
var chapter = 1



func nextlevel():
	var temppath = "res://scenes/chapters/%s/level_%s.tscn"
	var pathname = temppath % [chapter, level+1]
	if ResourceLoader.exists(pathname):
		level += 1
		get_tree().change_scene_to_file(pathname)
	else:
		get_tree().change_scene_to_file(get_tree().current_scene.scene_file_path)




var ch1 = [
	"res://scenes/chapters/1/level_1.tscn",
]
       extends CharacterBody2D


const SPEED = 500.0
const JUMP_VELOCITY = -530.0
var jumpTimer = 0

# Get the gravity from the project settings to be synced with RigidBody nodes.
var gravity = ProjectSettings.get_setting("physics/2d/default_gravity")


func _physics_process(delta):
	# Add the gravity.
	if not is_on_floor():
		velocity.y += gravity * delta

	# Handle Jump.
	if Input.is_action_just_pressed("jump") and is_on_floor():
		velocity.y = JUMP_VELOCITY
	


	var direction = Input.get_axis("left", "right")
	if direction:
		velocity.x = direction * SPEED
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)


	jumpTimer -= delta
	move_and_slide()
 GST2   �   �      ����               � �        �  RIFF�  WEBPVP8L�  /������!"2�H�$�n윦���z�x����դ�<����q����F��Z��?&,
ScI_L �;����In#Y��0�p~��Z��m[��N����R,��#"� )���d��mG�������ڶ�$�ʹ���۶�=���mϬm۶mc�9��z��T��7�m+�}�����v��ح�m�m������$$P�����එ#���=�]��SnA�VhE��*JG�
&����^x��&�+���2ε�L2�@��		��S�2A�/E���d"?���Dh�+Z�@:�Gk�FbWd�\�C�Ӷg�g�k��Vo��<c{��4�;M�,5��ٜ2�Ζ�yO�S����qZ0��s���r?I��ѷE{�4�Ζ�i� xK�U��F�Z�y�SL�)���旵�V[�-�1Z�-�1���z�Q�>�tH�0��:[RGň6�=KVv�X�6�L;�N\���J���/0u���_��U��]���ǫ)�9��������!�&�?W�VfY�2���༏��2kSi����1!��z+�F�j=�R�O�{�
ۇ�P-�������\����y;�[ ���lm�F2K�ޱ|��S��d)é�r�BTZ)e�� ��֩A�2�����X�X'�e1߬���p��-�-f�E�ˊU	^�����T�ZT�m�*a|	׫�:V���G�r+�/�T��@U�N׼�h�+	*�*sN1e�,e���nbJL<����"g=O��AL�WO!��߈Q���,ɉ'���lzJ���Q����t��9�F���A��g�B-����G�f|��x��5�'+��O��y��������F��2�����R�q�):VtI���/ʎ�UfěĲr'�g�g����5�t�ۛ�F���S�j1p�)�JD̻�ZR���Pq�r/jt�/sO�C�u����i�y�K�(Q��7őA�2���R�ͥ+lgzJ~��,eA��.���k�eQ�,l'Ɨ�2�,eaS��S�ԟe)��x��ood�d)����h��ZZ��`z�պ��;�Cr�rpi&��՜�Pf��+���:w��b�DUeZ��ڡ��iA>IN>���܋�b�O<�A���)�R�4��8+��k�Jpey��.���7ryc�!��M�a���v_��/�����'��t5`=��~	`�����p\�u����*>:|ٻ@�G�����wƝ�����K5�NZal������LH�]I'�^���+@q(�q2q+�g�}�o�����S߈:�R�݉C������?�1�.��
�ڈL�Fb%ħA ����Q���2�͍J]_�� A��Fb�����ݏ�4o��'2��F�  ڹ���W�L |����YK5�-�E�n�K�|�ɭvD=��p!V3gS��`�p|r�l	F�4�1{�V'&����|pj� ߫'ş�pdT�7`&�
�1g�����@D�˅ �x?)~83+	p �3W�w��j"�� '�J��CM�+ �Ĝ��"���4� ����nΟ	�0C���q'�&5.��z@�S1l5Z��]�~L�L"�"�VS��8w.����H�B|���K(�}
r%Vk$f�����8�ڹ���R�dϝx/@�_�k'�8���E���r��D���K�z3�^���Vw��ZEl%~�Vc���R� �Xk[�3��B��Ğ�Y��A`_��fa��D{������ @ ��dg�������Mƚ�R�`���s����>x=�����	`��s���H���/ū�R�U�g�r���/����n�;�SSup`�S��6��u���⟦;Z�AN3�|�oh�9f�Pg�����^��g�t����x��)Oq�Q�My55jF����t9����,�z�Z�����2��#�)���"�u���}'�*�>�����ǯ[����82һ�n���0�<v�ݑa}.+n��'����W:4TY�����P�ר���Cȫۿ�Ϗ��?����Ӣ�K�|y�@suyo�<�����{��x}~�����~�AN]�q�9ޝ�GG�����[�L}~�`�f%4�R!1�no���������v!�G����Qw��m���"F!9�vٿü�|j�����*��{Ew[Á��������u.+�<���awͮ�ӓ�Q �:�Vd�5*��p�ioaE��,�LjP��	a�/�˰!{g:���3`=`]�2��y`�"��N�N�p���� ��3�Z��䏔��9"�ʞ l�zP�G�ߙj��V�>���n�/��׷�G��[���\��T��Ͷh���ag?1��O��6{s{����!�1�Y�����91Qry��=����y=�ٮh;�����[�tDV5�chȃ��v�G ��T/'XX���~Q�7��+[�e��Ti@j��)��9��J�hJV�#�jk�A�1�^6���=<ԧg�B�*o�߯.��/�>W[M���I�o?V���s��|yu�xt��]�].��Yyx�w���`��C���pH��tu�w�J��#Ef�Y݆v�f5�e��8��=�٢�e��W��M9J�u�}]釧7k���:�o�����Ç����ս�r3W���7k���e�������ϛk��Ϳ�_��lu�۹�g�w��~�ߗ�/��ݩ�-�->�I�͒���A�	���ߥζ,�}�3�UbY?�Ӓ�7q�Db����>~8�]
� ^n׹�[�o���Z-�ǫ�N;U���E4=eȢ�vk��Z�Y�j���k�j1�/eȢK��J�9|�,UX65]W����lQ-�"`�C�.~8ek�{Xy���d��<��Gf�ō�E�Ӗ�T� �g��Y�*��.͊e��"�]�d������h��ڠ����c�qV�ǷN��6�z���kD�6�L;�N\���Y�����
�O�ʨ1*]a�SN�=	fH�JN�9%'�S<C:��:`�s��~��jKEU�#i����$�K�TQD���G0H�=�� �d�-Q�H�4�5��L�r?����}��B+��,Q�yO�H�jD�4d�����0*�]�	~�ӎ�.�"����%
��d$"5zxA:�U��H���H%jس{���kW��)�	8J��v�}�rK�F�@�t)FXu����G'.X�8�KH;���[             [remap]

importer="texture"
type="CompressedTexture2D"
uid="uid://bknbhl77xjfmt"
path="res://.godot/imported/icon.svg-218a8f2b3041327d8a5756f3a245f83b.ctex"
metadata={
"vram_texture": false
}
                [remap]

path="res://.godot/exported/133200997/export-1c5157a9109deb717545753fd701bc1d-flag.scn"
               [remap]

path="res://.godot/exported/133200997/export-cafe0ce219e229723c67d801606bac04-player.scn"
             [remap]

path="res://.godot/exported/133200997/export-575a8ac25bfb8591c58884926b652301-level_1.scn"
            list=Array[Dictionary]([])
     <svg height="128" width="128" xmlns="http://www.w3.org/2000/svg"><rect x="2" y="2" width="124" height="124" rx="14" fill="#363d52" stroke="#212532" stroke-width="4"/><g transform="scale(.101) translate(122 122)"><g fill="#fff"><path d="M105 673v33q407 354 814 0v-33z"/><path fill="#478cbf" d="m105 673 152 14q12 1 15 14l4 67 132 10 8-61q2-11 15-15h162q13 4 15 15l8 61 132-10 4-67q3-13 15-14l152-14V427q30-39 56-81-35-59-83-108-43 20-82 47-40-37-88-64 7-51 8-102-59-28-123-42-26 43-46 89-49-7-98 0-20-46-46-89-64 14-123 42 1 51 8 102-48 27-88 64-39-27-82-47-48 49-83 108 26 42 56 81zm0 33v39c0 276 813 276 813 0v-39l-134 12-5 69q-2 10-14 13l-162 11q-12 0-16-11l-10-65H447l-10 65q-4 11-16 11l-162-11q-12-3-14-13l-5-69z"/><path d="M483 600c3 34 55 34 58 0v-86c-3-34-55-34-58 0z"/><circle cx="725" cy="526" r="90"/><circle cx="299" cy="526" r="90"/></g><g fill="#414042"><circle cx="307" cy="532" r="60"/><circle cx="717" cy="532" r="60"/></g></g></svg>
             Yr:�֦V/   res://scenes/assets/flag.tscn�l���D+   res://scenes/assets/player.tscnv	�R�x2L$   res://scenes/chapters/1/level_1.tscn�q��{;+   res://icon.svgiy����k    res://build/web/r1/main.icon.png�Z��L!/G,   res://build/web/r1/main.apple-touch-icon.pngv�\/��a&   res://build/web/r1/main.png   ECFG      application/config/name         2dgame     application/run/main_scene,      $   res://scenes/chapters/1/level_1.tscn   application/config/features(   "         4.1    GL Compatibility       application/config/icon         res://icon.svg     autoload/Global          *res://scripts/global.gd"   display/window/size/viewport_width      �  #   display/window/size/viewport_height      8     display/window/size/mode            display/window/stretch/mode         viewport   display/window/vsync/vsync_mode          
   input/left0              deadzone      ?      events              InputEventKey         resource_local_to_scene           resource_name             device     ����	   window_id             alt_pressed           shift_pressed             ctrl_pressed          meta_pressed          pressed           keycode    A      physical_keycode       	   key_label             unicode    a      echo          script            InputEventKey         resource_local_to_scene           resource_name             device     ����	   window_id             alt_pressed           shift_pressed             ctrl_pressed          meta_pressed          pressed           keycode     @    physical_keycode       	   key_label             unicode           echo          script         input/right0              deadzone      ?      events              InputEventKey         resource_local_to_scene           resource_name             device     ����	   window_id             alt_pressed           shift_pressed             ctrl_pressed          meta_pressed          pressed           keycode    D      physical_keycode       	   key_label             unicode    d      echo          script            InputEventKey         resource_local_to_scene           resource_name             device     ����	   window_id             alt_pressed           shift_pressed             ctrl_pressed          meta_pressed          pressed           keycode     @    physical_keycode       	   key_label             unicode           echo          script      
   input/jump�              deadzone      ?      events              InputEventKey         resource_local_to_scene           resource_name             device     ����	   window_id             alt_pressed           shift_pressed             ctrl_pressed          meta_pressed          pressed           keycode           physical_keycode       	   key_label             unicode           echo          script            InputEventKey         resource_local_to_scene           resource_name             device     ����	   window_id             alt_pressed           shift_pressed             ctrl_pressed          meta_pressed          pressed           keycode    W      physical_keycode       	   key_label             unicode    w      echo          script            InputEventKey         resource_local_to_scene           resource_name             device     ����	   window_id             alt_pressed           shift_pressed             ctrl_pressed          meta_pressed          pressed           keycode     @    physical_keycode       	   key_label             unicode           echo          script         input/interact�              deadzone      ?      events              InputEventKey         resource_local_to_scene           resource_name             device     ����	   window_id             alt_pressed           shift_pressed             ctrl_pressed          meta_pressed          pressed           keycode    E      physical_keycode       	   key_label             unicode    e      echo          script      #   rendering/renderer/rendering_method         gl_compatibility*   rendering/renderer/rendering_method.mobile         gl_compatibility2   rendering/environment/defaults/default_clear_color      ���=��p>���>  �?           