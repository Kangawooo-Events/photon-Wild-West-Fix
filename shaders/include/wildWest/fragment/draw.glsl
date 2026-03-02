vec2 finalTexCoord = uv;
vec4 texColor = texture2D(gtexture, uv);
ivec2 size = textureSize(gtexture, 0);
vec3 diff = corner1.xyz / corner1.w - corner0.xyz / corner0.w;
float h = length(diff);


if (size.x == 64 && size.y == 64) 
{
    if (abs(h - hRefF.x) < 0.0001 || abs(h - hRefF.y) < 0.0001 || abs(h - hRefF.z) < 0.0001 || abs(h - hRefS.x) < 0.0001 || abs(h - hRefS.y) < 0.0001 || abs(h - hRefS.z) < 0.0001) 
    {
        finalTexCoord = texCoord1;
    }
}



vec4 base_color = texture2D(gtexture, finalTexCoord);
