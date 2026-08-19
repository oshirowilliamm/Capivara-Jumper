randomise();

global.pontos = 0;
global.acai = 0;


function toca_som(_snd, _pitch)
{
    var _p = random_range(1 - _pitch, 1 + _pitch);
    audio_play_sound(_snd, 0, 0, , , _p);
}