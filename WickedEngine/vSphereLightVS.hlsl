#include "volumeLightHF.hlsli"
#include "uvsphere.hlsli"

VertexToPixel main(uint vID : SV_VertexID)
{
	VertexToPixel Out = (VertexToPixel)0;

	float4 pos = UVSPHERE[vID];
	pos = mul(pos, lightWorld);
	Out.pos = mul(pos, g_xCamera_VP);
	Out.col = float4(lightColor.rgb, 1);

	return Out;
}