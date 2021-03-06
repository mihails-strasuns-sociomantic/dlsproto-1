/*******************************************************************************

    Common code for request construction and resource forwarding.

    Separated into dedicated mixin to make maintenance / refactoring with
    adding new resources easier.

    Copyright:
        Copyright (c) 2015-2017 sociomantic labs GmbH. All rights reserved.

    License:
        Boost Software License Version 1.0. See LICENSE.txt for details.

*******************************************************************************/

module fakedls.mixins.RequestConstruction;

public template RequestConstruction()
{
    import dlsproto.node.request.model.DlsCommand;

    /***************************************************************************

        Constructor

        Params:
            reader = FiberSelectReader instance to use for read requests
            writer = FiberSelectWriter instance to use for write requests
            resources = shared resources which might be required by the request

    ***************************************************************************/

    public this ( FiberSelectReader reader, FiberSelectWriter writer,
        DlsCommand.Resources resources )
    {
        super(reader, writer, resources);
    }
}
