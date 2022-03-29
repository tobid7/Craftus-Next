#include <entity/Player.h>
#include <entity/Damage.h>

void OvertimeDamage(cause,time){
	Player* player;
	if (cause=="fire"){
		while(time<0){
			player->hp-1;
			sleep(1);
			time-1;
		}
		cause==NULL;
		time==NULL;
	}
	if(cause=="poison"){
		while(time<0){
			player->hp-1;
			sleep(1);
			time-1;
		}
	}
}