/*
 * Copyright (C) 2005-2011 MaNGOS <http://www.getmangos.com/>
 *
 * Copyright (C) 2008-2011 Trinity <http://www.trinitycore.org/>
 *
 * Copyright (C) 2006-2011 ScriptDev2 <http://www.scriptdev2.com/>
 *
 * Copyright (C) 2010-2011 Project SkyFire <http://www.projectskyfire.org/>
 *
 * This program is free software; you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation; either version 2 of the License, or
 * (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program; if not, write to the Free Software
 * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA 02111-1307 USA
 */

/* ScriptData
SDName: Gilneas City
SD%Complete: 10
SDComment: 
SDCategory: Gilneas
EndScriptData */

/* ContentData
TODO
EndContentData */

#include "ScriptPCH.h"

//Phase 1
enum eGilneasCityPhase1
{
    //Quests
    QUEST_LOCKDOWN = 14078,

    //Spells
    SPELL_PHASE_2 = 59073,

    //Say
    SAY_PRINCE_LIAM_GREYMANE_1 = -1638000,
    SAY_PRINCE_LIAM_GREYMANE_2 = -1638001,
    SAY_PRINCE_LIAM_GREYMANE_3 = -1638002,
    DELAY_SAY_PRINCE_LIAM_GREYMANE = 20000, //20 seconds repetition time
};
//Phase 2
enum eGilneasCityPhase2
{
    //Sounds
    SOUND_SWORD_FLESH = 143,
    SOUND_SWORD_PLATE = 147,
    DELAY_SOUND = 500,
    DELAY_ANIMATE = 2000,

    //Spells
    SPELL_PHASE_4 = 59074,
    
    //NPCs
    NPC_PRINCE_LIAM_GREYMANE = 34913,
    NPC_GILNEAS_CITY_GUARD = 34916,
    NPC_RAMPAGING_WORGEN_1 = 34884,
    NPC_RAMPAGING_WORGEN_2 = 35660,
    NPC_FRIGHTENED_CITIZEN_1 = 34981,
    NPC_FRIGHTENED_CITIZEN_2 = 35836,
};

/*######
## npc_prince_liam_greymane_phase1
######*/

class npc_prince_liam_greymane_phase1 : public CreatureScript
{
public:
    npc_prince_liam_greymane_phase1() : CreatureScript("npc_prince_liam_greymane_phase1") { }

    CreatureAI* GetAI(Creature* pCreature) const
    {
        return new npc_prince_liam_greymane_phase1AI (pCreature);
    }

    struct npc_prince_liam_greymane_phase1AI : public ScriptedAI
    {
        npc_prince_liam_greymane_phase1AI(Creature *c) : ScriptedAI(c) {}

        uint32 tSay; //Time left for say
        uint32 cSay; //Current Say

        //Evade or Respawn
        void Reset()
        {
            tSay = DELAY_SAY_PRINCE_LIAM_GREYMANE;
            cSay = 1; //Start from 1
        }

        //Timed events
        void UpdateAI(const uint32 diff)
        {
            //Out of combat
            if (!me->getVictim())
            {
                //Timed say
                if (tSay <= diff)
                {
                    switch(cSay)
                    {
                        default:
                        case 1:
                            DoScriptText(SAY_PRINCE_LIAM_GREYMANE_1, me);
                            cSay++;
							break;
                        case 2:
                            DoScriptText(SAY_PRINCE_LIAM_GREYMANE_2, me);
                            cSay++;
							break;
                        case 3:
                            DoScriptText(SAY_PRINCE_LIAM_GREYMANE_3, me);
                            cSay = 1; //Reset on 1
							break;
                    }

                    tSay = DELAY_SAY_PRINCE_LIAM_GREYMANE; //Reset the timer
                }
                else
                {
                    tSay -= diff;
                }
				return;
            }
        }
    };
};

/*######
## npc_lieutenant_walden
######*/

class npc_lieutenant_walden : public CreatureScript
{
public:
    npc_lieutenant_walden() : CreatureScript("npc_lieutenant_walden") { }

    CreatureAI* GetAI(Creature* pCreature) const
    {
        return new npc_lieutenant_waldenAI (pCreature);
    }

    struct npc_lieutenant_waldenAI : public ScriptedAI
    {
        npc_lieutenant_waldenAI(Creature *c) : ScriptedAI(c) {}
        
        void sQuestReward(Player *pPlayer, const Quest *pQuest, uint32 data)
        {
            if (pQuest->GetQuestId() == QUEST_LOCKDOWN && pPlayer->GetPhaseMask() == 1)
                pPlayer->SetAuraStack(SPELL_PHASE_2, pPlayer, 1); //phaseshift
        }
    };

};

/*######
## npc_gilneas_city_guard
######*/

class npc_gilneas_city_guard : public CreatureScript
{
public:
    npc_gilneas_city_guard() : CreatureScript("npc_gilneas_city_guard") { }

    CreatureAI* GetAI(Creature* pCreature) const
    {
        return new npc_gilneas_city_guardAI (pCreature);
    }

    struct npc_gilneas_city_guardAI : public ScriptedAI
    {
        npc_gilneas_city_guardAI(Creature *c) : ScriptedAI(c) {}

        uint32 tAnimate;
        uint32 tSound;
        uint32 dmgCount;
        bool playSnd;

        void Reset()
        {
            tAnimate = DELAY_ANIMATE;
            dmgCount = 0;
            tSound = DELAY_SOUND;
            playSnd = false;
        }

        void DamageTaken(Unit * pWho, uint32 &uiDamage)
        {
            if (pWho->GetTypeId() == TYPEID_PLAYER)
            {
                me->getThreatManager().resetAllAggro();
                pWho->AddThreat(me, 100000.0f);
                me->AddThreat(pWho, 100000.0f);
                me->AI()->AttackStart(pWho);
                dmgCount = 0;
            }
            else if (pWho->isPet())
            {
                me->getThreatManager().resetAllAggro();
                me->AddThreat(pWho, 100000.0f);
                me->AI()->AttackStart(pWho);
                dmgCount = 0;
            }
        }

        void DamageDealt(Unit* target, uint32& damage, DamageEffectType damageType)
        {
            if (target->GetEntry() == NPC_RAMPAGING_WORGEN_1)
                dmgCount ++;
        }

        void UpdateAI(const uint32 diff)
        {
            if (me->isAlive() && !me->isInCombat() && (me->GetDistance2d(me->GetHomePosition().GetPositionX(), me->GetHomePosition().GetPositionY()) <= 1.0f))
                if (Creature* enemy = me->FindNearestCreature(NPC_RAMPAGING_WORGEN_1, 16.0f, true))
                    me->AI()->AttackStart(enemy);

            if (!UpdateVictim())
                return;

            if (tSound <= diff)
            {
                me->PlayDistanceSound(SOUND_SWORD_FLESH);
                tSound = DELAY_SOUND;
                playSnd = false;
            }

            if (playSnd == true) tSound -= diff;

            if (dmgCount < 2)
                DoMeleeAttackIfReady();
            else if (me->getVictim()->GetTypeId() == TYPEID_PLAYER) dmgCount = 0;
            else if (me->getVictim()->isPet()) dmgCount = 0;
            else
            {
                if (tAnimate <= diff)
                {
                    me->HandleEmoteCommand(EMOTE_ONESHOT_ATTACK1H);
                    playSnd = true;
                    tAnimate = DELAY_ANIMATE;
                }
                else
                    tAnimate -= diff;
                
            }
        }
    };

};

/*######
## npc_prince_liam_greymane_phase2
######*/

class npc_prince_liam_greymane_phase2 : public CreatureScript
{
public:
    npc_prince_liam_greymane_phase2() : CreatureScript("npc_prince_liam_greymane_phase2") { }

    CreatureAI* GetAI(Creature* pCreature) const
    {
        return new npc_prince_liam_greymane_phase2AI (pCreature);
    }

    struct npc_prince_liam_greymane_phase2AI : public ScriptedAI
    {
        npc_prince_liam_greymane_phase2AI(Creature *c) : ScriptedAI(c) {}

        uint32 tAnimate;
        uint32 tSound;
        uint32 dmgCount;
        bool playSnd;

        void Reset()
        {
            tAnimate = DELAY_ANIMATE;
            dmgCount = 0;
            tSound = DELAY_SOUND;
            playSnd = false;
        }

        void sQuestReward(Player *pPlayer, const Quest *pQuest, uint32 data)
        {
            if (pQuest->GetQuestId() == 14098 && pPlayer->GetPhaseMask() == 2)
                pPlayer->SetAuraStack(SPELL_PHASE_4, pPlayer, 1); //phaseshift
        }

        void DamageTaken(Unit * pWho, uint32 &uiDamage)
        {
            if (pWho->GetTypeId() == TYPEID_PLAYER)
            {
                me->getThreatManager().resetAllAggro();
                pWho->AddThreat(me, 100000.0f);
                me->AddThreat(pWho, 100000.0f);
                me->AI()->AttackStart(pWho);
                dmgCount = 0;
            }
            else if (pWho->isPet())
            {
                me->getThreatManager().resetAllAggro();
                me->AddThreat(pWho, 100000.0f);
                me->AI()->AttackStart(pWho);
                dmgCount = 0;
            }
        }

        void DamageDealt(Unit* target, uint32& damage, DamageEffectType damageType)
        {
            if (target->GetEntry() == NPC_RAMPAGING_WORGEN_1)
                dmgCount ++;
        }

        void UpdateAI(const uint32 diff)
        {
            if (!UpdateVictim())
			{
				//non-combat say, yell TODO
                return;
			}

			//combat yell TODO

            if (tSound <= diff)
            {
                me->PlayDistanceSound(SOUND_SWORD_FLESH);
                tSound = DELAY_SOUND;
                playSnd = false;
            }

            if (playSnd == true) tSound -= diff;

            if (dmgCount < 2)
                DoMeleeAttackIfReady();
            else if (me->getVictim()->GetTypeId() == TYPEID_PLAYER) dmgCount = 0;
            else if (me->getVictim()->isPet()) dmgCount = 0;
            else
            {
                if (tAnimate <= diff)
                {
                    me->HandleEmoteCommand(EMOTE_ONESHOT_ATTACK1H);
                    playSnd = true;
                    tAnimate = DELAY_ANIMATE;
                }
                else
                    tAnimate -= diff;
                
            }
        }
    };

};

/*######
## npc_rampaging_worgen
######*/

enum eRampaging_worgen
{
    #define SPELL_ENRAGE 8599
    #define CD_ENRAGE 30000
};

class npc_rampaging_worgen : public CreatureScript
{
public:
    npc_rampaging_worgen() : CreatureScript("npc_rampaging_worgen") { }

    CreatureAI* GetAI(Creature* pCreature) const
    {
        return new npc_rampaging_worgenAI (pCreature);
    }

    struct npc_rampaging_worgenAI : public ScriptedAI
    {
        npc_rampaging_worgenAI(Creature *c) : ScriptedAI(c) {}

        uint32 tEnrage;
        uint32 dmgCount;
        uint32 tAnimate;
        uint32 tSound;
        bool playSound;

        void Reset()
        {
            tEnrage = 0;
            dmgCount = 0;
            tAnimate = DELAY_ANIMATE;
            tSound = DELAY_SOUND;
            playSound = false;
        }

        void DamageDealt(Unit* target, uint32& damage, DamageEffectType damageType)
        {
            if (target->GetEntry() == NPC_GILNEAS_CITY_GUARD || target->GetEntry() == NPC_PRINCE_LIAM_GREYMANE)
                dmgCount ++;
        }

        void DamageTaken(Unit * pWho, uint32 &uiDamage)
        {
            if (pWho->GetTypeId() == TYPEID_PLAYER)
            {
                me->getThreatManager().resetAllAggro();
                pWho->AddThreat(me, 100000.0f);
                me->AddThreat(pWho, 100000.0f);
                me->AI()->AttackStart(pWho);
                dmgCount = 0;
            }
            else if (pWho->isPet())
            {
                me->getThreatManager().resetAllAggro();
                me->AddThreat(pWho, 100000.0f);
                me->AI()->AttackStart(pWho);
                dmgCount = 0;
            }
        }

        void UpdateAI(const uint32 diff)
        {
            if (me->isAlive() && !me->isInCombat() && (me->GetDistance2d(me->GetHomePosition().GetPositionX(), me->GetHomePosition().GetPositionY()) <= 1.0f))
                if (Creature* enemy = me->FindNearestCreature(NPC_PRINCE_LIAM_GREYMANE, 10.0f, true))
                    me->AI()->AttackStart(enemy);
                    

            if (!UpdateVictim())
                return;

            if (tEnrage <= diff)
            {
                if (me->GetHealthPct() <= 30)
                {
                    DoCast(me, SPELL_ENRAGE);
                    tEnrage = CD_ENRAGE;
                }
            }
            else tEnrage -= diff;

            //play attack sound
            if (playSound == true) tSound -= diff;

            if (tSound <= diff)
            {
                me->PlayDistanceSound(SOUND_SWORD_PLATE);
                tSound = DELAY_SOUND;
                playSound = false;
            }
            
            if (dmgCount < 2)
                DoMeleeAttackIfReady();
            else if (me->getVictim()->GetTypeId() == TYPEID_PLAYER) dmgCount = 0;
            else if (me->getVictim()->isPet()) dmgCount = 0;
            else
            {
                if (tAnimate <= diff)
                {
                    me->HandleEmoteCommand(EMOTE_ONESHOT_ATTACKUNARMED);
                    tAnimate = DELAY_ANIMATE;
                    playSound = true;
                }
                else
                tAnimate -= diff;
            }
            
        }
    };

};

/*######
## go_merchant_square_door
######*/

enum eMerchant_square_door
{
    #define SUMMON1_TTL 30000
    #define QUEST_EVAC_MERC_SQUA 14098
};

class go_merchant_square_door : public GameObjectScript
{
public:
    go_merchant_square_door() : GameObjectScript("go_merchant_square_door") { }

    uint32 creatureID;
    float x, y, z, angle;

    bool OnGossipHello(Player *pPlayer, GameObject *pGO)
    {
		if (pPlayer->GetQuestStatus(QUEST_EVAC_MERC_SQUA) == QUEST_STATUS_INCOMPLETE)
		{
			pGO->Use(pPlayer);

        creatureID = RAND(NPC_RAMPAGING_WORGEN_2, NPC_FRIGHTENED_CITIZEN_1, NPC_FRIGHTENED_CITIZEN_2); //Random creature

			angle=pGO->GetOrientation();
			x=pGO->GetPositionX()-cos(angle)*2;
			y=pGO->GetPositionY()-sin(angle)*2;
			z=pGO->GetPositionZ();
			if (Creature *spawnedCreature = pGO->SummonCreature(creatureID,x,y,z,angle,TEMPSUMMON_TIMED_DESPAWN,SUMMON1_TTL))
			{
				spawnedCreature->SetPhaseMask(2, 1);
				if (creatureID == NPC_RAMPAGING_WORGEN_2)
				{
					spawnedCreature->getThreatManager().resetAllAggro();
					pPlayer->AddThreat(spawnedCreature, 100000.0f);
					spawnedCreature->AddThreat(pPlayer, 100000.0f);
					spawnedCreature->AI()->AttackStart(pPlayer);
				}
				else 
				{
					pPlayer->KilledMonsterCredit(35830, 0);
					spawnedCreature->Respawn(1);
				}
			}
			return true;
		}    
        return false;
    }
};

/*######
## npc_frightened_citizen
######*/

enum eFrightened_citizen
{
    //Timers
    DELAY_RUN = 3000,
    DESPAWN_CITIZEN = 5000,
    
    //Say
    SAY_CITIZEN_1 = -1638003,
    SAY_CITIZEN_2 = -1638004,
    SAY_CITIZEN_3 = -1638005,
    SAY_CITIZEN_4 = -1638006,
    SAY_CITIZEN_5 = -1638007,
    SAY_CITIZEN_6 = -1638008,
    SAY_CITIZEN_7 = -1638009,
};

class npc_frightened_citizen : public CreatureScript
{
public:
    npc_frightened_citizen() : CreatureScript("npc_frightened_citizen") { }

    CreatureAI* GetAI(Creature* pCreature) const
    {
        return new npc_frightened_citizenAI (pCreature);
    }

    struct npc_frightened_citizenAI : public ScriptedAI
    {
        npc_frightened_citizenAI(Creature *c) : ScriptedAI(c) {}

        int16 delay, despawn;
        bool run, onceTimer;
        char* text;
        float x, y, z;

        void JustRespawned()
        {
            delay = DELAY_RUN;
            run = false;
            despawn = DESPAWN_CITIZEN;
            onceTimer = true;
            x = me->m_positionX+cos(me->m_orientation)*16;
            y = me->m_positionY+sin(me->m_orientation)*16;
            z = me->m_positionZ;
            
            DoScriptText(RAND(SAY_CITIZEN_1, SAY_CITIZEN_2, SAY_CITIZEN_3, SAY_CITIZEN_4, SAY_CITIZEN_5, SAY_CITIZEN_6, SAY_CITIZEN_7), me); //Say from random 1-7
        }

        void UpdateAI(const uint32 diff)
        {
            if (delay <= 0 && onceTimer == true)
            {
                run = true;
                onceTimer = false;
            }
            else delay -= diff;

            if (run == true)
            {
                run = false;
                me->GetMotionMaster()->MoveCharge(x, y, z, 8);
            }

            if (despawn <= 0)
            {
                me->DespawnOrUnsummon();
            }
            else despawn -= diff;

        }
    };

};

void AddSC_gilneas()
{
    new npc_gilneas_city_guard();
    new npc_prince_liam_greymane_phase1();
    new npc_prince_liam_greymane_phase2();
    new npc_rampaging_worgen();
    new go_merchant_square_door();
    new npc_frightened_citizen();
    new npc_lieutenant_walden();
}