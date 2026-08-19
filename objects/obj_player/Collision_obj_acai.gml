//pegando
instance_destroy(other.id);
toca_som(snd_pickup, .3);

//pontuação de acordo com a sprite do açaí
with (other)
{
    switch (image_index) 
    {
    	case 0: global.acai += 1; break;
        case 1: global.acai += 2; break;
        case 2: global.acai += 3; break;
    }
}