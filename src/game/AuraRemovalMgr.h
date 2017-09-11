/*
 * Copyright (C) 2017 Elysium Project <https://github.com/elysium-project>
 *
 * This program is free software; you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation; either version 2 of the License, or
 * (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program; if not, write to the Free Software
 * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
 */

#ifndef AURA_REMOVAL_MGR
#define AURA_REMOVAL_MGR

#include "Common.h"

class AuraRemovalManager
{
public:                                                 // Constructors
    AuraRemovalManager() {}

public:                                                 // Initialisation
    void LoadFromDB();

public:                                                 // Accessors
    void PlayerEnterMap(uint32 mapId, Player* pPlayer);

private:
    // <map ID, aura ID>
    std::map<uint32, std::vector<uint32>> m_data;
};

#define sAuraRemovalMgr MaNGOS::Singleton<AuraRemovalManager>::Instance()

#endif