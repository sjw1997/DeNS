//
// Copyright (C) OpenSim Ltd.
//
// This program is free software; you can redistribute it and/or
// modify it under the terms of the GNU Lesser General Public License
// as published by the Free Software Foundation; either version 2
// of the License, or (at your option) any later version.
//
// This program is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU Lesser General Public License for more details.
//
// You should have received a copy of the GNU Lesser General Public License
// along with this program; if not, see <http://www.gnu.org/licenses/>.
//

package detnetmod.detnetmod.ieee8021q.tunnel8021q;

import inet.linklayer.contract.INetworkInterface;

simple tunnel8021q
{
    parameters:
        string interfaceTableModule;
        string address @enum("auto", "copy") = default("copy");
        int vlanId = default(1);
        int vid = default(1);
        int pcp = default (5);
        bool de = default(false);
        string realInterfaceName;
        @display("i=block/cogwheel");

    gates:
        input upperLayerIn;
        output upperLayerOut;
}
