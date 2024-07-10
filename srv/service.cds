using { ZR_TRAVEL_SER } from './external/ZR_TRAVEL_SER.cds';

@path : '/service/MyProjectService'
service MyProjectService
{
    annotate zr_travel
    {
        TravelUuid
            @Core.Immutable;
    }

    entity zr_travel as projection on ZR_TRAVEL_SER.zr_travel
    {
        *
    }
    excluding
    {
        __EntityControl,
        __OperationControl
    };
}

annotate MyProjectService with @requires :
[
    'authenticated-user'
];
