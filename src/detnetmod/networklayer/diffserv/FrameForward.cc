//
// This program is free software: you can redistribute it and/or modify
// it under the terms of the GNU Lesser General Public License as published by
// the Free Software Foundation, either version 3 of the License, or
// (at your option) any later version.
// 
// This program is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU Lesser General Public License for more details.
// 
// You should have received a copy of the GNU Lesser General Public License
// along with this program.  If not, see http://www.gnu.org/licenses/.
// 

#include "FrameForward.h"
#include "inet/applications/common/SocketTag_m.h"
#include "inet/common/packet/Message.h"
#include "inet/common/packet/Packet.h"

namespace detnetmod {

Define_Module(FrameForward);

void FrameForward::initialize() {
}

void FrameForward::handleMessage(cMessage *msg) {
    Packet* packet = check_and_cast<Packet *>(msg);
    packet->removeTagIfPresent<SocketInd>();
    send(check_and_cast<cMessage *>(packet), "upperLayerOut");
}
}
