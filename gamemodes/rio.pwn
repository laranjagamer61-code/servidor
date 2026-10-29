// Rio Rise - gamemode inicial (open.mp)
#include <open.mp>

main() {}

public OnGameModeInit()
{
    SetGameModeText("Rio Rise");
    AddPlayerClass(0, 2495.0, -1688.0, 13.5, 0.0, 0, 0, 0, 0, 0, 0);
    return 1;
}

public OnPlayerConnect(playerid)
{
    SendClientMessage(playerid, 0x00FF00FF, "Bem-vindo ao Rio Rise! Comandos: /carro  /skin [id]");
    return 1;
}

public OnPlayerRequestClass(playerid, classid)
{
    SetPlayerPos(playerid, 2495.0, -1688.0, 13.5);
    SetPlayerCameraPos(playerid, 2495.0, -1680.0, 15.0);
    SetPlayerCameraLookAt(playerid, 2495.0, -1688.0, 13.5);
    return 1;
}

public OnPlayerCommandText(playerid, cmdtext[])
{
    if (!strcmp(cmdtext, "/carro", true))
    {
        new Float:x, Float:y, Float:z, Float:a;
        GetPlayerPos(playerid, x, y, z);
        GetPlayerFacingAngle(playerid, a);
        new v = CreateVehicle(411, x + 3.0, y, z, a, -1, -1, -1);
        PutPlayerInVehicle(playerid, v, 0);
        return 1;
    }
    if (!strcmp(cmdtext, "/skin", true, 5))
    {
        SetPlayerSkin(playerid, strval(cmdtext[6]));
        return 1;
    }
    return 0;
}
