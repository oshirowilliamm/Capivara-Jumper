//efeito do titulo
if (!pode_voltar)
{
    escala = lerp(escala, limite_max, .1);
    
    if (escala >= limite_max) pode_voltar = true;
}
else
{
    escala = lerp(escala, limite_min, .1);
    
    if (escala <= limite_min) pode_voltar = false;
}